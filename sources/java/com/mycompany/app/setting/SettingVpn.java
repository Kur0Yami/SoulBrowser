package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.VpnService;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.mycompany.app.dialog.DialogEditVpn;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.vpn.VpnSvc;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingVpn extends SettingActivity {
    public static final /* synthetic */ int j2 = 0;
    public boolean X1;
    public MyCoverView Y1;
    public int Z1;
    public MyPopupMenu a2;
    public MyPopupMenu b2;
    public String[] c2;
    public String[] d2;
    public DialogEditVpn e2;
    public DialogWebView f2;
    public boolean g2;
    public boolean h2;
    public boolean i2;

    public static void O0(SettingVpn settingVpn, View view, SettingListAdapter.ViewHolder viewHolder, final boolean z) {
        int i;
        int i2;
        if (settingVpn.b2 == null) {
            settingVpn.R0();
            if (view != null && viewHolder.D != null) {
                String[] strArr = settingVpn.c2;
                if (strArr == null || strArr.length != 18) {
                    String[] stringArray = settingVpn.getResources().getStringArray(R.array.names);
                    settingVpn.c2 = stringArray;
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
                        String str = settingVpn.c2[i4 + i];
                        if (i2 != i4) {
                            z2 = false;
                        }
                        arrayList.add(new MyPopupAdapter.PopMenuItem(str, i4, z2));
                        i4++;
                    } else {
                        MyPopupMenu myPopupMenu = new MyPopupMenu(settingVpn, settingVpn.E1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingVpn.6
                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final void a() {
                                int i5 = SettingVpn.j2;
                                SettingVpn.this.R0();
                            }

                            @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                            public final boolean b(View view2, int i5) {
                                int i6 = i5 % i3;
                                if (!z) {
                                    i6 += 16;
                                }
                                if (PrefTts.z != i6) {
                                    PrefTts.z = i6;
                                    SettingVpn settingVpn2 = SettingVpn.this;
                                    PrefSet.f(settingVpn2.f1, 12, i6, "mVpnServer");
                                    int i7 = SettingVpn.j2;
                                    settingVpn2.R0();
                                    MyMainRelative myMainRelative = settingVpn2.E1;
                                    if (myMainRelative == null) {
                                        return true;
                                    }
                                    myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVpn.6.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MainApp p;
                                            VpnSvc vpnSvc;
                                            SettingVpn settingVpn3 = SettingVpn.this;
                                            if (settingVpn3.N1 != null) {
                                                int i8 = SettingVpn.j2;
                                                String Q0 = settingVpn3.Q0();
                                                boolean isEmpty = TextUtils.isEmpty(Q0);
                                                settingVpn3.N1.D(new SettingListAdapter.SettingItem(3, R.string.vpn_server, settingVpn3.P0(), 0, 1));
                                                settingVpn3.N1.D(new SettingListAdapter.SettingItem(4, R.string.visit_site, Q0, (String) null, isEmpty, isEmpty, 2));
                                            }
                                            if (PrefTts.y && (p = MainApp.p(settingVpn3.f1)) != null && (vpnSvc = p.I) != null) {
                                                vpnSvc.b();
                                            }
                                        }
                                    });
                                    return false;
                                }
                                return true;
                            }
                        });
                        settingVpn.b2 = myPopupMenu;
                        myPopupMenu.m = 1;
                        settingVpn.Z0 = myPopupMenu;
                        return;
                    }
                }
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String Q0 = Q0();
        boolean isEmpty = TextUtils.isEmpty(Q0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.vpn, R.string.not_support_locale, 3, PrefTts.y, true));
        arrayList.add(new SettingListAdapter.SettingItem(2, false));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.vpn_server, P0(), 0, 1));
        a.u(arrayList, new SettingListAdapter.SettingItem(4, R.string.visit_site, Q0, (String) null, isEmpty, isEmpty, 2), 5, false);
        return arrayList;
    }

    public final String P0() {
        if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A)) {
            return PrefTts.A;
        }
        int i = PrefTts.z;
        if (i >= 0 && i < 18) {
            String[] strArr = this.c2;
            if (strArr == null || strArr.length != 18) {
                String[] stringArray = getResources().getStringArray(R.array.names);
                this.c2 = stringArray;
                if (stringArray == null || stringArray.length != 18) {
                    return null;
                }
            }
            return this.c2[PrefTts.z];
        }
        PrefTts.z = 0;
        return getString(R.string.name0);
    }

    public final String Q0() {
        if (PrefTts.z != -1 || TextUtils.isEmpty(PrefTts.A)) {
            int i = PrefTts.z;
            if (i >= 0 && i < 18) {
                String[] strArr = this.d2;
                if (strArr == null || strArr.length != 18) {
                    String[] stringArray = getResources().getStringArray(R.array.server_websites);
                    this.d2 = stringArray;
                    if (stringArray == null || stringArray.length != 18) {
                        return null;
                    }
                }
                return this.d2[PrefTts.z];
            }
            PrefTts.z = 0;
            return getString(R.string.website0);
        }
        return null;
    }

    public final void R0() {
        MyPopupMenu myPopupMenu = this.b2;
        if (myPopupMenu != null) {
            this.Z0 = this.a2;
            myPopupMenu.a();
            this.b2 = null;
        }
    }

    public final void S0(int i, boolean z) {
        boolean z2;
        if (this.N1 != null && this.Z1 != i) {
            this.Z1 = i;
            if (i != 1 && i != 2) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (PrefTts.y != z2) {
                PrefTts.y = z2;
                PrefSet.d(12, this.f1, "mVpnMode", z2);
                this.N1.A(1, PrefTts.y);
            }
            int i2 = this.Z1;
            if (i2 == 1) {
                U0(true);
                return;
            }
            if (i2 == 2) {
                U0(false);
                if (z) {
                    MainUtil.e8(this, R.string.vpn_active);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                U0(true);
                return;
            }
            if (i2 == 0) {
                U0(false);
                MainApp p = MainApp.p(this.f1);
                if (p != null) {
                    p.U();
                }
            }
        }
    }

    public final void T0(boolean z) {
        int i;
        MainApp p = MainApp.p(this.f1);
        if (p == null) {
            return;
        }
        if (z) {
            p.K = null;
            return;
        }
        p.K = new VpnSvc.VpnSvcListener() { // from class: com.mycompany.app.setting.SettingVpn.4
            @Override // com.mycompany.app.vpn.VpnSvc.VpnSvcListener
            public final void a(final int i2) {
                MyMainRelative myMainRelative = SettingVpn.this.E1;
                if (myMainRelative == null) {
                    return;
                }
                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVpn.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingVpn settingVpn = SettingVpn.this;
                        int i3 = SettingVpn.j2;
                        settingVpn.S0(i2, true);
                    }
                });
            }
        };
        if (!this.i2) {
            VpnSvc vpnSvc = p.I;
            if (vpnSvc != null) {
                i = vpnSvc.h;
            } else {
                i = 0;
            }
            S0(i, false);
        }
        this.i2 = false;
    }

    public final void U0(boolean z) {
        SettingListAdapter settingListAdapter = this.N1;
        if (settingListAdapter != null && this.E1 != null) {
            this.g2 = z;
            settingListAdapter.B(z);
            if (this.g2 && !this.h2) {
                this.E1.postDelayed(new Runnable() { // from class: com.mycompany.app.setting.SettingVpn.3

                    /* renamed from: com.mycompany.app.setting.SettingVpn$3$1, reason: invalid class name */
                    /* loaded from: classes3.dex */
                    class AnonymousClass1 implements View.OnClickListener {
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                        }
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v5, types: [android.view.View$OnClickListener, java.lang.Object] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        SettingVpn settingVpn = SettingVpn.this;
                        if (settingVpn.E1 != null) {
                            if (settingVpn.g2 && !settingVpn.h2) {
                                if (settingVpn.Y1 == null) {
                                    MyCoverView myCoverView = new MyCoverView(settingVpn.f1);
                                    settingVpn.Y1 = myCoverView;
                                    myCoverView.setOnClickListener(new Object());
                                    settingVpn.E1.addView(settingVpn.Y1, -1, -1);
                                }
                                MyCoverView myCoverView2 = settingVpn.Y1;
                                if (MainApp.K1) {
                                    i = -328966;
                                } else {
                                    i = -13022805;
                                }
                                myCoverView2.setColor(i);
                                settingVpn.Y1.setVisibility(0);
                                return;
                            }
                            MyCoverView myCoverView3 = settingVpn.Y1;
                            if (myCoverView3 != null) {
                                myCoverView3.setVisibility(8);
                            }
                        }
                    }
                }, 1000L);
                return;
            }
            MyCoverView myCoverView = this.Y1;
            if (myCoverView != null) {
                myCoverView.setVisibility(8);
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 34) {
            this.h2 = false;
            if (i2 == -1) {
                this.i2 = true;
                MainApp p = MainApp.p(this.f1);
                if (p != null) {
                    p.T();
                    return;
                }
                return;
            }
            S0(0, true);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        o0(null, 34);
        F0(R.string.vpn, false, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingVpn.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingVpn.j2;
                final SettingVpn settingVpn = SettingVpn.this;
                if (settingVpn.O0 == null) {
                    return;
                }
                SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingVpn.D0(), false, settingVpn.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingVpn.2
                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                    public final void a(final SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                        boolean z2;
                        DialogWebView dialogWebView;
                        int i4 = SettingVpn.j2;
                        final SettingVpn settingVpn2 = SettingVpn.this;
                        if (i2 != 1) {
                            if (i2 != 3) {
                                if (i2 == 4) {
                                    String Q0 = settingVpn2.Q0();
                                    if (!TextUtils.isEmpty(Q0) && settingVpn2.e2 == null && (dialogWebView = settingVpn2.f2) == null) {
                                        if (dialogWebView != null) {
                                            dialogWebView.dismiss();
                                            settingVpn2.f2 = null;
                                        }
                                        DialogWebView dialogWebView2 = new DialogWebView(settingVpn2, Q0, Q0, false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingVpn.9
                                            @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                            public final void a(int i5, String str, String str2) {
                                                SettingVpn settingVpn3 = SettingVpn.this;
                                                Intent o4 = MainUtil.o4(settingVpn3.f1);
                                                o4.putExtra("EXTRA_PATH", str);
                                                o4.addFlags(67108864);
                                                settingVpn3.startActivity(o4);
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
                                        settingVpn2.f2 = dialogWebView2;
                                        dialogWebView2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVpn.10
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i5 = SettingVpn.j2;
                                                SettingVpn settingVpn3 = SettingVpn.this;
                                                DialogWebView dialogWebView3 = settingVpn3.f2;
                                                if (dialogWebView3 != null) {
                                                    dialogWebView3.dismiss();
                                                    settingVpn3.f2 = null;
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            MyPopupMenu myPopupMenu = settingVpn2.a2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingVpn2.Z0 = null;
                                    myPopupMenu.a();
                                    settingVpn2.a2 = null;
                                }
                                if (viewHolder != null && viewHolder.D != null) {
                                    if (PrefTts.z == -1 && !TextUtils.isEmpty(PrefTts.A) && !TextUtils.isEmpty(PrefTts.B)) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.allow_all_site));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.block_harm_site));
                                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.direct_input, z2));
                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingVpn2, settingVpn2.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingVpn.5
                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final void a() {
                                            int i5 = SettingVpn.j2;
                                            SettingVpn settingVpn3 = SettingVpn.this;
                                            MyPopupMenu myPopupMenu3 = settingVpn3.a2;
                                            if (myPopupMenu3 != null) {
                                                settingVpn3.Z0 = null;
                                                myPopupMenu3.a();
                                                settingVpn3.a2 = null;
                                            }
                                        }

                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                        public final boolean b(View view, int i5) {
                                            SettingListAdapter.ViewHolder viewHolder2 = viewHolder;
                                            final SettingVpn settingVpn3 = SettingVpn.this;
                                            if (i5 == 0) {
                                                SettingVpn.O0(settingVpn3, view, viewHolder2, true);
                                                return false;
                                            }
                                            if (i5 == 1) {
                                                SettingVpn.O0(settingVpn3, view, viewHolder2, false);
                                                return false;
                                            }
                                            int i6 = SettingVpn.j2;
                                            DialogEditVpn dialogEditVpn = settingVpn3.e2;
                                            if (dialogEditVpn != null || settingVpn3.f2 != null) {
                                                return true;
                                            }
                                            if (dialogEditVpn != null) {
                                                dialogEditVpn.dismiss();
                                                settingVpn3.e2 = null;
                                            }
                                            DialogEditVpn dialogEditVpn2 = new DialogEditVpn(settingVpn3, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingVpn.7
                                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                public final void a() {
                                                    MainApp p;
                                                    VpnSvc vpnSvc;
                                                    SettingVpn settingVpn4 = SettingVpn.this;
                                                    if (settingVpn4.N1 != null) {
                                                        int i7 = SettingVpn.j2;
                                                        String Q02 = settingVpn4.Q0();
                                                        boolean isEmpty = TextUtils.isEmpty(Q02);
                                                        settingVpn4.N1.D(new SettingListAdapter.SettingItem(3, R.string.vpn_server, settingVpn4.P0(), 0, 1));
                                                        settingVpn4.N1.D(new SettingListAdapter.SettingItem(4, R.string.visit_site, Q02, (String) null, isEmpty, isEmpty, 2));
                                                    }
                                                    if (PrefTts.y && (p = MainApp.p(settingVpn4.f1)) != null && (vpnSvc = p.I) != null) {
                                                        vpnSvc.b();
                                                    }
                                                }
                                            });
                                            settingVpn3.e2 = dialogEditVpn2;
                                            dialogEditVpn2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingVpn.8
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int i7 = SettingVpn.j2;
                                                    SettingVpn settingVpn4 = SettingVpn.this;
                                                    DialogEditVpn dialogEditVpn3 = settingVpn4.e2;
                                                    if (dialogEditVpn3 != null) {
                                                        dialogEditVpn3.dismiss();
                                                        settingVpn4.e2 = null;
                                                    }
                                                }
                                            });
                                            return true;
                                        }
                                    });
                                    settingVpn2.a2 = myPopupMenu2;
                                    settingVpn2.Z0 = myPopupMenu2;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (z) {
                            settingVpn2.S0(1, true);
                            settingVpn2.h2 = false;
                            settingVpn2.i2 = false;
                            try {
                                Intent prepare = VpnService.prepare(settingVpn2);
                                if (prepare == null) {
                                    MainApp p = MainApp.p(settingVpn2.f1);
                                    if (p != null) {
                                        p.T();
                                        return;
                                    }
                                    return;
                                }
                                try {
                                    settingVpn2.o0(prepare, 34);
                                    settingVpn2.h2 = true;
                                    return;
                                } catch (Exception unused) {
                                    MainUtil.e8(settingVpn2, R.string.not_supported);
                                    return;
                                }
                            } catch (Exception unused2) {
                                return;
                            }
                        }
                        settingVpn2.S0(3, true);
                        MainApp p2 = MainApp.p(settingVpn2.f1);
                        if (p2 != null) {
                            p2.U();
                        }
                    }
                });
                settingVpn.N1 = settingListAdapter;
                settingVpn.L1.setAdapter(settingListAdapter);
                settingVpn.T0(false);
                settingVpn.M0();
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        T0(true);
        MyCoverView myCoverView = this.Y1;
        if (myCoverView != null) {
            myCoverView.i();
            this.Y1 = null;
        }
        this.c2 = null;
        this.d2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            T0(true);
            MyPopupMenu myPopupMenu = this.a2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.a2 = null;
            }
            R0();
            DialogEditVpn dialogEditVpn = this.e2;
            if (dialogEditVpn != null) {
                dialogEditVpn.dismiss();
                this.e2 = null;
            }
            DialogWebView dialogWebView = this.f2;
            if (dialogWebView != null) {
                dialogWebView.dismiss();
                this.f2 = null;
                return;
            }
            return;
        }
        DialogWebView dialogWebView2 = this.f2;
        if (dialogWebView2 != null) {
            dialogWebView2.V();
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (!this.X1) {
            T0(false);
            DialogWebView dialogWebView = this.f2;
            if (dialogWebView != null) {
                dialogWebView.X();
            }
        }
        this.X1 = false;
    }
}
