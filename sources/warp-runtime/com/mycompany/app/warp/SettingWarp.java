package com.mycompany.app.warp;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.setting.SettingActivity;
import com.mycompany.app.setting.SettingListAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * WARP settings screen using the same SettingActivity chrome and list rows as
 * DNS / other settings pages.
 *
 * <p>Resource IDs are literals from {@code public.xml} — the app's generated {@code R}
 * class lives under {@code net.kaki87.soul2[.testing]}, not the JADX package name
 * {@code com.mycompany.app.soulbrowser}, so {@code R.string.*} would crash at runtime.
 */
public class SettingWarp extends SettingActivity implements WarpController.Listener {
    // app/res/values/public.xml
    private static final int STR_WARP = 0x7f1205a1;
    private static final int STR_WARP_ACTIVE = 0x7f1205a2;
    private static final int STR_WARP_DEACTIVE = 0x7f1205a3;
    private static final int STR_WARP_INFO = 0x7f1205a4;
    private static final int STR_WARP_NEED_PROXY = 0x7f1205a5;
    private static final int STR_WARP_IP = 0x7f1205a6;
    private static final int ID_SET_SWITCH_SW = 0x7f0902ac;
    private static final int ROW_TOGGLE = 1;
    private static final int ROW_IP = 5;

    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private final AtomicInteger traceGen = new AtomicInteger();

    private boolean updatingUi;
    private String lastStatus = "off";
    private String ipSummary = "…";
    private ProgressBar switchSpinner;

    @Override
    public List D0() {
        ArrayList<SettingListAdapter.SettingItem> items = new ArrayList<>();
        items.add(new SettingListAdapter.SettingItem(0, true));
        items.add(buildToggleItem());
        items.add(new SettingListAdapter.SettingItem(2, false));
        items.add(new SettingListAdapter.SettingItem(ROW_IP, STR_WARP_IP, ipSummary, 0, 0));
        items.add(new SettingListAdapter.SettingItem(3, false));
        items.add(new SettingListAdapter.SettingItem(4, STR_WARP_INFO, (String) null, true, 0));
        items.add(new SettingListAdapter.SettingItem(6, false));
        return items;
    }

    private boolean isBusy() {
        return "starting".equals(lastStatus) || "stopping".equals(lastStatus);
    }

    private SettingListAdapter.SettingItem buildToggleItem() {
        boolean supported = WebViewProxyHelper.isSupported();
        // While stopping, keep the switch model "on" under the spinner so the row
        // does not flash off → spinner → off (the list adapter toggles eagerly).
        boolean enabled =
                "stopping".equals(lastStatus) || PrefWarp.isEnabled(this);
        if (!supported) {
            return new SettingListAdapter.SettingItem(
                    ROW_TOGGLE,
                    STR_WARP,
                    STR_WARP_NEED_PROXY,
                    false,
                    true,
                    true,
                    0);
        }
        SettingListAdapter.SettingItem item =
                new SettingListAdapter.SettingItem(
                        statusSubtitle(enabled, lastStatus), ROW_TOGGLE, STR_WARP, enabled);
        if (isBusy()) {
            // s is mutable (blocks switch clicks); t is final and must stay constructor-set.
            item.s = true;
        }
        return item;
    }

    private SettingListAdapter.SettingItem buildIpItem() {
        return new SettingListAdapter.SettingItem(ROW_IP, STR_WARP_IP, ipSummary, 0, 0);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        F0(STR_WARP, false, false);
        this.O1 = MainApp.F1;
        lastStatus = PrefWarp.isEnabled(this) ? "on" : "off";

        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(
                new Runnable() {
                    @Override
                    public void run() {
                        if (SettingWarp.this.O0 == null || SettingWarp.this.L1 == null) {
                            return;
                        }
                        SettingListAdapter adapter =
                                new SettingListAdapter(
                                        (ArrayList) SettingWarp.this.D0(),
                                        false,
                                        SettingWarp.this.M1,
                                        new SettingListAdapter.SettingListener() {
                                            @Override
                                            public void a(
                                                    SettingListAdapter.ViewHolder viewHolder,
                                                    int id,
                                                    boolean checked,
                                                    int unused) {
                                                if (id != ROW_TOGGLE || updatingUi || isBusy()) {
                                                    return;
                                                }
                                                if (checked) {
                                                    if (!WebViewProxyHelper.isSupported()) {
                                                        updatingUi = true;
                                                        refreshRows();
                                                        updatingUi = false;
                                                        Toast.makeText(
                                                                        SettingWarp.this,
                                                                        STR_WARP_NEED_PROXY,
                                                                        Toast.LENGTH_LONG)
                                                                .show();
                                                        return;
                                                    }
                                                    lastStatus = "starting";
                                                    updatingUi = true;
                                                    refreshRows();
                                                    updatingUi = false;
                                                    WarpController.enable(SettingWarp.this);
                                                } else {
                                                    // Adapter already animated to off — snap back
                                                    // and show spinner until teardown finishes.
                                                    lastStatus = "stopping";
                                                    updatingUi = true;
                                                    if (N1 != null) {
                                                        N1.A(ROW_TOGGLE, true);
                                                    }
                                                    refreshRows();
                                                    updatingUi = false;
                                                    WarpController.disable(SettingWarp.this);
                                                }
                                            }
                                        });
                        SettingWarp.this.N1 = adapter;
                        SettingWarp.this.L1.setAdapter(adapter);
                        SettingWarp.this.M0();
                        refreshIpAsync();
                    }
                });
    }

    @Override
    public void onResume() {
        super.onResume();
        WarpController.setListener(this);
        updatingUi = true;
        refreshRows();
        updatingUi = false;
        if (!isBusy()) {
            refreshIpAsync();
        }
    }

    @Override
    public void onPause() {
        WarpController.setListener(null);
        super.onPause();
    }

    @Override
    public void onStateChanged(boolean enabled, String statusText) {
        lastStatus = statusText != null ? statusText : (enabled ? "on" : "off");
        updatingUi = true;
        refreshRows();
        updatingUi = false;
        if (isBusy()) {
            ipSummary = "…";
            if (N1 != null) {
                N1.D(buildIpItem());
            }
        } else {
            refreshIpAsync();
        }
    }

    private void refreshRows() {
        if (N1 == null) {
            return;
        }
        N1.D(buildToggleItem());
        N1.D(buildIpItem());
        if (L1 != null) {
            L1.post(
                    new Runnable() {
                        @Override
                        public void run() {
                            applySwitchSpinner(isBusy());
                        }
                    });
        }
    }

    private void applySwitchSpinner(boolean busy) {
        if (L1 == null) {
            return;
        }
        // Do not touch ViewHolder.z — in the app dex it is MySwitchView, not View;
        // a cross-dex field access with the wrong type throws NoSuchFieldError.
        View switchView = L1.findViewById(ID_SET_SWITCH_SW);
        if (switchView == null) {
            return;
        }
        ViewGroup parent = (ViewGroup) switchView.getParent();
        if (parent == null) {
            return;
        }
        if (busy) {
            switchView.setVisibility(View.INVISIBLE);
            if (switchSpinner == null) {
                switchSpinner = new ProgressBar(this);
            }
            if (switchSpinner.getParent() != parent) {
                if (switchSpinner.getParent() instanceof ViewGroup) {
                    ((ViewGroup) switchSpinner.getParent()).removeView(switchSpinner);
                }
                parent.addView(switchSpinner, switchView.getLayoutParams());
            }
            switchSpinner.setVisibility(View.VISIBLE);
        } else {
            switchView.setVisibility(View.VISIBLE);
            if (switchSpinner != null) {
                switchSpinner.setVisibility(View.GONE);
            }
        }
    }

    private void refreshIpAsync() {
        final int gen = traceGen.incrementAndGet();
        final boolean viaProxy = PrefWarp.isEnabled(this) && "on".equals(lastStatus);
        final String listen = viaProxy ? PrefWarp.listenAddress(this) : null;
        IO.execute(
                new Runnable() {
                    @Override
                    public void run() {
                        final WarpTrace.Info info = WarpTrace.fetch(listen);
                        Handler handler = SettingWarp.this.O0;
                        if (handler == null) {
                            return;
                        }
                        handler.post(
                                new Runnable() {
                                    @Override
                                    public void run() {
                                        if (gen != traceGen.get() || isFinishing()) {
                                            return;
                                        }
                                        ipSummary = info.summary();
                                        if (N1 != null) {
                                            N1.D(buildIpItem());
                                        }
                                    }
                                });
                    }
                });
    }

    private String statusSubtitle(boolean enabled, String statusText) {
        if ("starting".equals(statusText)) {
            return getString(STR_WARP_ACTIVE) + " (starting)";
        }
        if ("stopping".equals(statusText)) {
            return getString(STR_WARP_DEACTIVE) + " (stopping)";
        }
        if (enabled || "on".equals(statusText)) {
            return getString(STR_WARP_ACTIVE) + " (" + statusText + ")";
        }
        return getString(STR_WARP_DEACTIVE) + " (" + statusText + ")";
    }
}
