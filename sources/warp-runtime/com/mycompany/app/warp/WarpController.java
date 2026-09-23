package com.mycompany.app.warp;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/** Orchestrates WARP proxy lifecycle, DNS VPN mutual exclusion, and WebView proxy override. */
public final class WarpController {
    private static final String TAG = "WarpController";
    private static final AtomicBoolean applying = new AtomicBoolean(false);
    private static final ExecutorService IO = Executors.newSingleThreadExecutor();
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile Listener listener;

    public interface Listener {
        void onStateChanged(boolean enabled, String status);
    }

    private WarpController() {}

    public static void setListener(Listener l) {
        listener = l;
    }

    public static boolean isEnabled(Context context) {
        return PrefWarp.isEnabled(context);
    }

    public static void maybeRestore(Context context) {
        if (context == null) {
            return;
        }
        Context app = context.getApplicationContext();
        if (PrefWarp.isEnabled(app)) {
            enable(app, false);
        }
    }

    public static void enable(Context context) {
        enable(context, true);
    }

    public static void enable(Context context, boolean fromUser) {
        Context app = context.getApplicationContext();
        if (!WebViewProxyHelper.isSupported()) {
            notify(false, "unsupported");
            if (fromUser) {
                toast(app, stringOr(app, "warp_need_proxy_feature", "WebView PROXY_OVERRIDE is not available"));
            }
            PrefWarp.setEnabled(app, false);
            return;
        }
        PrefWarp.setEnabled(app, true);
        disableDnsVpn(app);
        notify(true, "starting");
        WarpProxySvc.requestStart(app);
    }

    public static void disable(Context context) {
        Context app = context.getApplicationContext();
        PrefWarp.setEnabled(app, false);
        notify(false, "stopping");
        applying.set(true);
        IO.execute(
                () -> {
                    try {
                        WebViewProxyHelper.clearProxyBlocking(5000);
                    } finally {
                        MAIN.post(
                                () -> {
                                    WarpAppProxy.uninstall();
                                    WarpProxySvc.requestStop(app);
                                    applying.set(false);
                                    notify(false, "off");
                                });
                    }
                });
    }

    /** Called from SettingVpn before enabling DNS VPN. */
    public static void disableIfNeeded(Context context) {
        if (PrefWarp.isEnabled(context)) {
            disable(context);
        }
    }

    static void onProxyReady(Context context, String listenAddr) {
        if (!PrefWarp.isEnabled(context)) {
            WarpProxySvc.requestStop(context);
            return;
        }
        applying.set(true);
        IO.execute(
                () -> {
                    boolean ok = WebViewProxyHelper.setHttpProxyBlocking(listenAddr, 8000);
                    MAIN.post(
                            () -> {
                                applying.set(false);
                                if (ok) {
                                    WarpAppProxy.install(listenAddr);
                                    notify(true, "on");
                                } else {
                                    PrefWarp.setEnabled(context, false);
                                    WarpProxySvc.requestStop(context);
                                    WarpAppProxy.uninstall();
                                    notify(false, "proxy_failed");
                                    toast(
                                            context,
                                            stringOr(
                                                    context,
                                                    "warp_need_proxy_feature",
                                                    "Failed to apply WebView proxy"));
                                }
                            });
                });
    }

    static void onProxyFailed(Context context, String message) {
        PrefWarp.setEnabled(context, false);
        WarpAppProxy.uninstall();
        notify(false, message != null ? message : "failed");
        toast(context, message != null ? message : "WARP failed to start");
    }

    static void onProxyExited(Context context, int exitCode) {
        if (!PrefWarp.isEnabled(context)) {
            return;
        }
        Log.w(TAG, "soulamz exited with code " + exitCode);
        PrefWarp.setEnabled(context, false);
        IO.execute(() -> WebViewProxyHelper.clearProxyBlocking(3000));
        WarpAppProxy.uninstall();
        notify(false, "exited:" + exitCode);
    }

    private static void disableDnsVpn(Context context) {
        try {
            Class<?> prefTts = Class.forName("com.mycompany.app.pref.PrefTts");
            Field y = prefTts.getField("y");
            boolean dnsOn = y.getBoolean(null);
            if (dnsOn) {
                y.setBoolean(null, false);
                SharedPreferences sp =
                        context.getSharedPreferences("PrefTts", Context.MODE_PRIVATE);
                sp.edit().putBoolean("mVpnMode", false).apply();
            }
            Class<?> mainApp = Class.forName("com.mycompany.app.main.MainApp");
            Method p = mainApp.getMethod("p", Context.class);
            Object app = p.invoke(null, context);
            if (app != null) {
                Method u = mainApp.getMethod("U");
                u.invoke(app);
            }
        } catch (Throwable t) {
            Log.w(TAG, "disableDnsVpn reflection failed", t);
        }
    }

    private static void notify(boolean enabled, String status) {
        Listener l = listener;
        if (l != null) {
            MAIN.post(() -> l.onStateChanged(enabled, status));
        }
    }

    private static void toast(Context context, String msg) {
        MAIN.post(() -> Toast.makeText(context, msg, Toast.LENGTH_LONG).show());
    }

    private static String stringOr(Context context, String name, String fallback) {
        int id = context.getResources().getIdentifier(name, "string", context.getPackageName());
        if (id != 0) {
            return context.getString(id);
        }
        return fallback;
    }
}
