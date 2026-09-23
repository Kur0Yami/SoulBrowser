package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.VpnService;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.dialog.DialogPrintPage;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.vpn.VpnSvc;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DialogSetVpn extends MyDialogBottom {
    public static final /* synthetic */ int p0 = 0;
    public MainActivity a0;
    public Context b0;
    public DialogPrintPage.PathChangeListener c0;
    public MyDialogLinear d0;
    public MyRecyclerView e0;
    public SettingListAdapter f0;
    public int g0;
    public MyPopupMenu h0;
    public MyPopupMenu i0;
    public String[] j0;
    public String[] k0;
    public DialogEditVpn l0;
    public DialogWebView m0;
    public boolean n0;
    public boolean o0;

    public DialogSetVpn(MainActivity mainActivity, DialogPrintPage.PathChangeListener pathChangeListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = pathChangeListener;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVpn.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetVpn dialogSetVpn = DialogSetVpn.this;
                Context context = dialogSetVpn.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams.weight = 1.0f;
                    q.addView(u, layoutParams);
                    dialogSetVpn.d0 = q;
                    dialogSetVpn.e0 = u;
                    Handler handler2 = dialogSetVpn.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVpn.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            final DialogSetVpn dialogSetVpn2 = DialogSetVpn.this;
                            if (dialogSetVpn2.d0 != null && dialogSetVpn2.b0 != null) {
                                String D = dialogSetVpn2.D();
                                boolean isEmpty = TextUtils.isEmpty(D);
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.vpn, R.string.not_support_locale, 0, PrefTts.y, true));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.vpn_server, dialogSetVpn2.C(), 0, 0));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(2, R.string.visit_site, D, (String) null, isEmpty, isEmpty, 0), 1);
                                dialogSetVpn2.f0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(final SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                                        MyPopupMenu myPopupMenu;
                                        boolean z2;
                                        DialogWebView dialogWebView;
                                        int i4 = DialogSetVpn.p0;
                                        final DialogSetVpn dialogSetVpn3 = DialogSetVpn.this;
                                        if (i2 != 0) {
                                            if (i2 != 1) {
                                                if (i2 == 2) {
                                                    String D2 = dialogSetVpn3.D();
                                                    if (!TextUtils.isEmpty(D2) && dialogSetVpn3.a0 != null && dialogSetVpn3.l0 == null && (dialogWebView = dialogSetVpn3.m0) == null) {
                                                        if (dialogWebView != null) {
                                                            dialogWebView.dismiss();
                                                            dialogSetVpn3.m0 = null;
                                                        }
                                                        DialogWebView dialogWebView2 = new DialogWebView(dialogSetVpn3.a0, D2, D2, false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.11
                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void a(int i5, String str, String str2) {
                                                                DialogSetVpn dialogSetVpn4 = DialogSetVpn.this;
                                                                DialogPrintPage.PathChangeListener pathChangeListener2 = dialogSetVpn4.c0;
                                                                if (pathChangeListener2 != null) {
                                                                    pathChangeListener2.a(str);
                                                                }
                                                                dialogSetVpn4.dismiss();
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void b() {
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void c(String str, String str2, String str3, long j) {
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void d(WebNestView webNestView, String str) {
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void e() {
                                                            }

                                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                                            public final void f() {
                                                            }
                                                        });
                                                        dialogSetVpn3.m0 = dialogWebView2;
                                                        dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.12
                                                            @Override // android.content.DialogInterface.OnDismissListener
                                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                                int i5 = DialogSetVpn.p0;
                                                                DialogSetVpn dialogSetVpn4 = DialogSetVpn.this;
                                                                DialogWebView dialogWebView3 = dialogSetVpn4.m0;
                                                                if (dialogWebView3 != null) {
                                                                    dialogWebView3.dismiss();
                                                                    dialogSetVpn4.m0 = null;
                                                                }
                                                            }
                                                        });
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                            if (dialogSetVpn3.a0 != null && (myPopupMenu = dialogSetVpn3.h0) == null) {
                                                if (myPopupMenu != null) {
                                                    dialogSetVpn3.Y = null;
                                                    myPopupMenu.a();
                                                    dialogSetVpn3.h0 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A) && !TextUtils.isEmpty(PrefTts.B)) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.allow_all_site));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.block_harm_site));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(2, R.string.direct_input, z2));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetVpn3.a0, dialogSetVpn3.d0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i5 = DialogSetVpn.p0;
                                                            DialogSetVpn dialogSetVpn4 = DialogSetVpn.this;
                                                            MyPopupMenu myPopupMenu3 = dialogSetVpn4.h0;
                                                            if (myPopupMenu3 != null) {
                                                                dialogSetVpn4.Y = null;
                                                                myPopupMenu3.a();
                                                                dialogSetVpn4.h0 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i5) {
                                                            DialogEditVpn dialogEditVpn;
                                                            SettingListAdapter.ViewHolder viewHolder2 = viewHolder;
                                                            final DialogSetVpn dialogSetVpn4 = DialogSetVpn.this;
                                                            if (i5 == 0) {
                                                                DialogSetVpn.B(dialogSetVpn4, view, viewHolder2, true);
                                                                return false;
                                                            }
                                                            if (i5 == 1) {
                                                                DialogSetVpn.B(dialogSetVpn4, view, viewHolder2, false);
                                                                return false;
                                                            }
                                                            if (dialogSetVpn4.a0 == null || (dialogEditVpn = dialogSetVpn4.l0) != null || dialogSetVpn4.m0 != null) {
                                                                return true;
                                                            }
                                                            if (dialogEditVpn != null) {
                                                                dialogEditVpn.dismiss();
                                                                dialogSetVpn4.l0 = null;
                                                            }
                                                            DialogEditVpn dialogEditVpn2 = new DialogEditVpn(dialogSetVpn4.a0, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.9
                                                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                                public final void a() {
                                                                    MainApp p;
                                                                    VpnSvc vpnSvc;
                                                                    DialogSetVpn dialogSetVpn5 = DialogSetVpn.this;
                                                                    if (dialogSetVpn5.f0 != null) {
                                                                        String D3 = dialogSetVpn5.D();
                                                                        boolean isEmpty2 = TextUtils.isEmpty(D3);
                                                                        dialogSetVpn5.f0.D(new SettingListAdapter.SettingItem(1, R.string.vpn_server, dialogSetVpn5.C(), 0, 0));
                                                                        dialogSetVpn5.f0.D(new SettingListAdapter.SettingItem(2, R.string.visit_site, D3, (String) null, isEmpty2, isEmpty2, 0));
                                                                    }
                                                                    if (PrefTts.y && (p = MainApp.p(dialogSetVpn5.b0)) != null && (vpnSvc = p.I) != null) {
                                                                        vpnSvc.b();
                                                                    }
                                                                }
                                                            });
                                                            dialogSetVpn4.l0 = dialogEditVpn2;
                                                            dialogEditVpn2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.10
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int i6 = DialogSetVpn.p0;
                                                                    DialogSetVpn dialogSetVpn5 = DialogSetVpn.this;
                                                                    DialogEditVpn dialogEditVpn3 = dialogSetVpn5.l0;
                                                                    if (dialogEditVpn3 != null) {
                                                                        dialogEditVpn3.dismiss();
                                                                        dialogSetVpn5.l0 = null;
                                                                    }
                                                                }
                                                            });
                                                            return true;
                                                        }
                                                    });
                                                    dialogSetVpn3.h0 = myPopupMenu2;
                                                    dialogSetVpn3.Y = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        if (z) {
                                            dialogSetVpn3.F(1, true);
                                            MainActivity mainActivity2 = dialogSetVpn3.a0;
                                            dialogSetVpn3.o0 = false;
                                            try {
                                                Intent prepare = VpnService.prepare(mainActivity2);
                                                if (prepare == null) {
                                                    MainApp p = MainApp.p(dialogSetVpn3.b0);
                                                    if (p != null) {
                                                        p.T();
                                                        return;
                                                    }
                                                    return;
                                                }
                                                try {
                                                    mainActivity2.t0(prepare, 34);
                                                    dialogSetVpn3.o0 = true;
                                                    return;
                                                } catch (Exception unused) {
                                                    MainUtil.e8(mainActivity2, R.string.not_supported);
                                                    return;
                                                }
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        dialogSetVpn3.F(3, true);
                                        MainApp p2 = MainApp.p(dialogSetVpn3.b0);
                                        if (p2 != null) {
                                            p2.U();
                                        }
                                    }
                                });
                                dialogSetVpn2.e0.setLayoutManager(t);
                                dialogSetVpn2.e0.setAdapter(dialogSetVpn2.f0);
                                if (PrefTts.y) {
                                    dialogSetVpn2.g0 = 2;
                                } else {
                                    dialogSetVpn2.g0 = 0;
                                }
                                MainApp p = MainApp.p(dialogSetVpn2.b0);
                                if (p != null) {
                                    p.K = new VpnSvc.VpnSvcListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.6
                                        @Override // com.mycompany.app.vpn.VpnSvc.VpnSvcListener
                                        public final void a(final int i2) {
                                            Handler handler3 = DialogSetVpn.this.i;
                                            if (handler3 == null) {
                                                return;
                                            }
                                            handler3.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVpn.6.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    DialogSetVpn dialogSetVpn3 = DialogSetVpn.this;
                                                    int i3 = DialogSetVpn.p0;
                                                    dialogSetVpn3.F(i2, true);
                                                }
                                            });
                                        }
                                    };
                                    VpnSvc vpnSvc = p.I;
                                    if (vpnSvc != null) {
                                        i = vpnSvc.h;
                                    } else {
                                        i = 0;
                                    }
                                    dialogSetVpn2.F(i, false);
                                }
                                dialogSetVpn2.g(dialogSetVpn2.d0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetVpn dialogSetVpn3 = DialogSetVpn.this;
                                        if (dialogSetVpn3.d0 == null) {
                                            return;
                                        }
                                        dialogSetVpn3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static void B(DialogSetVpn dialogSetVpn, View view, SettingListAdapter.ViewHolder viewHolder, final boolean z) {
        int i;
        int i2;
        if (dialogSetVpn.a0 != null && dialogSetVpn.i0 == null) {
            dialogSetVpn.E();
            if (view != null && viewHolder.D != null) {
                String[] strArr = dialogSetVpn.j0;
                if (strArr == null || strArr.length != 18) {
                    String[] stringArray = dialogSetVpn.b0.getResources().getStringArray(R.array.names);
                    dialogSetVpn.j0 = stringArray;
                    if (stringArray == null || stringArray.length != 18) {
                        return;
                    }
                }
                final int i3 = 16;
                if (z) {
                    i2 = PrefTts.z;
                    i = 0;
                } else {
                    i = 16;
                    i3 = 2;
                    i2 = PrefTts.z - 16;
                }
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                while (true) {
                    boolean z2 = true;
                    if (i4 < i3) {
                        String str = dialogSetVpn.j0[i4 + i];
                        if (i2 != i4) {
                            z2 = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(str, i4, z2));
                        i4++;
                    } else {
                        MyPopupMenu myPopupMenu = new MyPopupMenu(dialogSetVpn.a0, dialogSetVpn.d0, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetVpn.8
                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final void a() {
                                int i5 = DialogSetVpn.p0;
                                DialogSetVpn.this.E();
                            }

                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final boolean b(View view2, int i5) {
                                int i6 = i5 % i3;
                                if (!z) {
                                    i6 += 16;
                                }
                                if (PrefTts.z != i6) {
                                    PrefTts.z = i6;
                                    DialogSetVpn dialogSetVpn2 = DialogSetVpn.this;
                                    PrefSet.f(dialogSetVpn2.b0, 12, i6, "mVpnServer");
                                    dialogSetVpn2.E();
                                    Handler handler = dialogSetVpn2.i;
                                    if (handler == null) {
                                        return true;
                                    }
                                    handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVpn.8.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainApp p;
                                            VpnSvc vpnSvc;
                                            DialogSetVpn dialogSetVpn3 = DialogSetVpn.this;
                                            if (dialogSetVpn3.f0 != null) {
                                                String D = dialogSetVpn3.D();
                                                boolean isEmpty = TextUtils.isEmpty(D);
                                                dialogSetVpn3.f0.D(new SettingListAdapter.SettingItem(1, R.string.vpn_server, dialogSetVpn3.C(), 0, 0));
                                                dialogSetVpn3.f0.D(new SettingListAdapter.SettingItem(2, R.string.visit_site, D, (String) null, isEmpty, isEmpty, 0));
                                            }
                                            if (PrefTts.y && (p = MainApp.p(dialogSetVpn3.b0)) != null && (vpnSvc = p.I) != null) {
                                                vpnSvc.b();
                                            }
                                        }
                                    });
                                    return false;
                                }
                                return true;
                            }
                        });
                        dialogSetVpn.i0 = myPopupMenu;
                        myPopupMenu.m = 1;
                        dialogSetVpn.Y = myPopupMenu;
                        return;
                    }
                }
            }
        }
    }

    public final String C() {
        if (this.b0 == null) {
            return null;
        }
        if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A)) {
            return PrefTts.A;
        }
        int i = PrefTts.z;
        if (i >= 0 && i < 18) {
            String[] strArr = this.j0;
            if (strArr == null || strArr.length != 18) {
                String[] stringArray = this.b0.getResources().getStringArray(R.array.names);
                this.j0 = stringArray;
                if (stringArray == null || stringArray.length != 18) {
                    return null;
                }
            }
            return this.j0[PrefTts.z];
        }
        PrefTts.z = 0;
        return this.b0.getString(R.string.name0);
    }

    public final String D() {
        if (this.b0 == null) {
            return null;
        }
        if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A)) {
            return null;
        }
        int i = PrefTts.z;
        if (i >= 0 && i < 18) {
            String[] strArr = this.k0;
            if (strArr == null || strArr.length != 18) {
                String[] stringArray = this.b0.getResources().getStringArray(R.array.server_websites);
                this.k0 = stringArray;
                if (stringArray == null || stringArray.length != 18) {
                    return null;
                }
            }
            return this.k0[PrefTts.z];
        }
        PrefTts.z = 0;
        return this.b0.getString(R.string.website0);
    }

    public final void E() {
        MyPopupMenu myPopupMenu = this.i0;
        if (myPopupMenu != null) {
            this.Y = this.h0;
            myPopupMenu.a();
            this.i0 = null;
        }
    }

    public final void F(int i, boolean z) {
        boolean z2;
        if (this.f0 != null && this.g0 != i) {
            this.g0 = i;
            if (i != 1 && i != 2) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (PrefTts.y != z2) {
                PrefTts.y = z2;
                PrefSet.d(12, this.b0, "mVpnMode", z2);
                this.f0.A(0, PrefTts.y);
            }
            int i2 = this.g0;
            if (i2 == 1) {
                G(true);
                return;
            }
            if (i2 == 2) {
                G(false);
                if (z) {
                    MainUtil.e8(this.b0, R.string.vpn_active);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                G(true);
                return;
            }
            if (i2 == 0) {
                G(false);
                MainApp p = MainApp.p(this.b0);
                if (p != null) {
                    p.U();
                }
            }
        }
    }

    public final void G(boolean z) {
        SettingListAdapter settingListAdapter = this.f0;
        if (settingListAdapter != null && this.d0 != null) {
            this.n0 = z;
            settingListAdapter.B(z);
            if (this.n0 && !this.o0) {
                this.i.postDelayed(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetVpn.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        boolean z2;
                        DialogSetVpn dialogSetVpn = DialogSetVpn.this;
                        MyDialogLinear myDialogLinear = dialogSetVpn.d0;
                        if (myDialogLinear == null) {
                            return;
                        }
                        if (dialogSetVpn.n0 && !dialogSetVpn.o0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        myDialogLinear.e(0, 0, z2, false);
                    }
                }, 1000L);
            } else {
                this.d0.e(0, 0, false, false);
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        Context context = this.b0;
        if (context == null) {
            return;
        }
        MainApp p = MainApp.p(context);
        if (p != null) {
            p.K = null;
        }
        MyPopupMenu myPopupMenu = this.h0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.h0 = null;
        }
        E();
        DialogEditVpn dialogEditVpn = this.l0;
        if (dialogEditVpn != null) {
            dialogEditVpn.dismiss();
            this.l0 = null;
        }
        DialogWebView dialogWebView = this.m0;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.m0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyRecyclerView myRecyclerView = this.e0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.e0 = null;
        }
        SettingListAdapter settingListAdapter = this.f0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.f0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.j0 = null;
        this.k0 = null;
        super.dismiss();
    }
}
