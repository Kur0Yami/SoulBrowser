package com.mycompany.app.setting;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.a;
import android.view.View;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogQuickColor;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekBright;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetHead;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingDisplay extends SettingActivity {
    public static final int[] p2 = {0, 1};
    public static final int[] q2 = {R.string.theme_light, R.string.theme_dark};
    public static final int[] r2 = {1, 2, 0};
    public static final int[] s2 = {R.string.not_used, R.string.site_theme, R.string.user_defined};
    public static final int[] t2 = {R.string.system_name, R.string.view_port, R.string.view_land};
    public static final int[] v2 = {0, 1, 2};
    public static final int[] w2 = {R.string.link, R.string.image, R.string.last_active};
    public static final int[] y2 = {0, 1, 2};
    public static final int[] z2 = {R.string.preview_url_top, R.string.preview_url_bottom, R.string.with_buttons};
    public boolean X1;
    public MyPopupMenu Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public MyPopupMenu b2;
    public MyPopupMenu c2;
    public DialogConfirm d2;
    public DialogSeekSimple e2;
    public DialogSetHead f2;
    public DialogEditIcon g2;
    public DialogSeekBright h2;
    public DialogQuickColor u2;
    public MyPopupMenu x2;
    public MyPopupMenu A2;
    public boolean i2;
    public boolean j2;
    public int k2;
    public boolean l2;
    public int m2;
    public int n2;
    public int o2;

    public static void O0(SettingDisplay settingDisplay) {
        String string;
        int i;
        if (settingDisplay.N1 == null) {
            return;
        }
        if (PrefPdf.n) {
            string = a.g(PrefPdf.o, "%", new StringBuilder());
            i = 0;
        } else {
            string = settingDisplay.getString(R.string.system_name);
            i = R.string.screen_info_system;
        }
        settingDisplay.N1.G(15, string);
        settingDisplay.N1.C(15, i);
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[7];
        float f = MainConst.p[7];
        if (PrefWeb.J) {
            PrefWeb.J = false;
            PrefSet.j(context, 14, "mThemeSys");
            z = true;
        } else {
            z = false;
        }
        if (PrefWeb.K != 0) {
            PrefWeb.K = 0;
            MainApp.K1 = false;
            PrefSet.j(context, 14, "mThemeUi");
            z = true;
        }
        if (PrefWeb.L != 0) {
            PrefWeb.L = 0;
            MainApp.L1 = false;
            PrefSet.j(context, 14, "mThemeWeb");
            z = true;
        }
        if (!PrefWeb.M) {
            PrefWeb.M = true;
            PrefSet.j(context, 14, "mThemeImg");
            z = true;
        }
        if (PrefWeb.N != 70) {
            PrefWeb.N = 70;
            PrefSet.j(context, 14, "mImgBright");
            z = true;
        }
        if (PrefWeb.O != 1) {
            PrefWeb.O = 1;
            PrefSet.j(context, 14, "mThemeHead");
            z = true;
        }
        if (PrefWeb.P != 16) {
            PrefWeb.P = 16;
            MainUtil.m7();
            PrefSet.j(context, 14, "mHeadIndex");
            z = true;
        }
        if (!PrefWeb.U) {
            PrefWeb.U = true;
            PrefSet.j(context, 14, "mDarkHome");
            z = true;
        }
        if (PrefWeb.b0 != -65536) {
            PrefWeb.b0 = -65536;
            PrefSet.j(context, 14, "mTabFolderColor");
            z = true;
        }
        if (PrefWeb.c0 != 2) {
            PrefWeb.c0 = 2;
            PrefSet.j(context, 14, "mLinkImageTab");
            z = true;
        }
        if (PrefWeb.d0 != 0) {
            PrefWeb.d0 = 0;
            PrefSet.j(context, 14, "mPreviewUrlBar");
            z = true;
        }
        if (PrefEditor.z != 0) {
            PrefEditor.z = 0;
            PrefSet.j(context, 1, "mScrFilUse");
            z = true;
        }
        if (PrefEditor.A != 60 || PrefEditor.B != i || Float.compare(PrefEditor.C, f) != 0) {
            PrefEditor.A = 60;
            PrefEditor.B = i;
            PrefEditor.C = f;
            PrefEditor.D = MainUtil.o1(i, 60);
            PrefEditor s = PrefEditor.s(context);
            s.q("mScrFilAlpha");
            s.q("mScrFilColor");
            s.q("mScrFilPos");
            s.c();
            z = true;
        }
        if (PrefPdf.n || PrefPdf.o != 90) {
            PrefPdf.n = false;
            PrefPdf.o = 90;
            PrefPdf r = PrefPdf.r(context, false);
            r.q("mUserBright");
            r.q("mBright");
            r.c();
            z = true;
        }
        if (PrefPdf.m != 0) {
            PrefPdf.m = 0;
            PrefSet.j(context, 7, "mScreenOff");
            z = true;
        }
        if (PrefMain.l != 0) {
            PrefMain.l = 0;
            PrefSet.j(context, 5, "mAppRotate");
            return true;
        }
        return z;
    }

    public static String Q0(int i) {
        return i + "%";
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2 = PrefWeb.J;
        int i4 = PrefWeb.K;
        int[] iArr = q2;
        String string2 = getString(iArr[i4]);
        boolean z3 = !PrefWeb.M;
        int i5 = PrefWeb.O;
        if (i5 == 1) {
            i = R.string.site_theme_info;
        } else {
            i = 0;
        }
        if (i5 != 2) {
            z = true;
        } else {
            z = false;
        }
        int o1 = MainUtil.o1(PrefEditor.B, PrefEditor.A);
        if (PrefPdf.n) {
            string = a.g(PrefPdf.o, "%", new StringBuilder());
            i2 = 0;
        } else {
            string = getString(R.string.system_name);
            i2 = R.string.screen_info_system;
        }
        String str = string;
        if (PrefMain.l == 0) {
            i3 = R.string.screen_info_system;
        } else {
            i3 = 0;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem("UI", 1, 1, string2, z2, (String) null));
        arrayList.add(new SettingListAdapter.SettingItem(getString(R.string.web_page), 2, 0, getString(iArr[PrefWeb.L]), z2, getString(R.string.web_page_dark_info)));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.screen_info_system, 0, 2, PrefWeb.J, true));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.dark_image, R.string.img_brt_info, 1, PrefWeb.M, true));
        arrayList.add(new SettingListAdapter.SettingItem(getString(R.string.img_bright), 6, 2, Q0(PrefWeb.N), z3, (String) null));
        arrayList.add(new SettingListAdapter.SettingItem(7, false));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.header_title, s2[PrefWeb.O], i, 1));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.header_color, PrefWeb.Q, z, z, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.dark_home, R.string.dark_home_info, 0, PrefWeb.U, true));
        arrayList.add(new SettingListAdapter.SettingItem(19, R.string.folder_color, PrefWeb.b0, 0, (com.mycompany.app.dialog.a) null));
        arrayList.add(new SettingListAdapter.SettingItem(20, R.string.link_image_tab, w2[PrefWeb.c0], 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(21, R.string.preview_url_bar, z2[PrefWeb.d0], 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(11, false));
        arrayList.add(new SettingListAdapter.SettingItem(12, R.string.screen_filter, MainConst.X[PrefEditor.z], 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(13, R.string.filter_color, o1, 2, (com.mycompany.app.dialog.a) null));
        arrayList.add(new SettingListAdapter.SettingItem(14, false));
        arrayList.add(new SettingListAdapter.SettingItem(15, R.string.brightness, str, i2, 1));
        arrayList.add(new SettingListAdapter.SettingItem(16, R.string.screen_off, MainConst.K[PrefPdf.m], MainConst.L[PrefPdf.m], 0));
        com.mycompany.app.dialog.a.u(arrayList, new SettingListAdapter.SettingItem(17, R.string.screen_rotate, t2[PrefMain.l], i3, 2), 18, false);
        return arrayList;
    }

    public final void R0() {
        DialogConfirm dialogConfirm = this.d2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.d2 = null;
        }
    }

    public final void S0() {
        DialogSetHead dialogSetHead = this.f2;
        if (dialogSetHead != null) {
            dialogSetHead.dismiss();
            this.f2 = null;
        }
    }

    public final void V0() {
        DialogQuickColor dialogQuickColor = this.u2;
        if (dialogQuickColor != null) {
            dialogQuickColor.dismiss();
            this.u2 = null;
        }
    }

    public final boolean T0() {
        if (this.d2 != null || this.e2 != null || this.f2 != null || this.g2 != null || this.h2 != null || this.u2 != null) {
            return true;
        }
        return false;
    }

    public final void U0(SettingListAdapter.ViewHolder viewHolder, final int i) {
        final int i2;
        boolean z;
        MyPopupMenu myPopupMenu = this.Y1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Y1 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                if (i == 1) {
                    i2 = PrefWeb.K;
                } else {
                    i2 = PrefWeb.L;
                }
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < 2; i3++) {
                    int i4 = p2[i3];
                    int i5 = q2[i4];
                    if (i2 == i4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z));
                }
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.7
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int[] iArr = SettingDisplay.p2;
                        SettingDisplay settingDisplay = SettingDisplay.this;
                        MyPopupMenu myPopupMenu3 = settingDisplay.Y1;
                        if (myPopupMenu3 != null) {
                            settingDisplay.Z0 = null;
                            myPopupMenu3.a();
                            settingDisplay.Y1 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view, int i6) {
                        int i7 = SettingDisplay.p2[i6 % 2];
                        if (i2 != i7) {
                            boolean z2 = MainApp.K1;
                            int i8 = i;
                            SettingDisplay settingDisplay = SettingDisplay.this;
                            if (i8 == 1) {
                                PrefWeb.K = i7;
                                MainApp.K1 = MainUtil.h5(settingDisplay.getResources(), true);
                                PrefSet.f(settingDisplay.f1, 14, PrefWeb.K, "mThemeUi");
                            } else {
                                PrefWeb.L = i7;
                                MainApp.L1 = MainUtil.h5(settingDisplay.getResources(), false);
                                PrefSet.f(settingDisplay.f1, 14, PrefWeb.L, "mThemeWeb");
                            }
                            MainUtil.f7();
                            if (z2 == MainApp.K1) {
                                SettingListAdapter settingListAdapter = settingDisplay.N1;
                                if (settingListAdapter != null) {
                                    settingListAdapter.F(i8, SettingDisplay.q2[i7]);
                                }
                                settingDisplay.I0(MainUtil.l1(), false);
                                return true;
                            }
                            MyMainRelative myMainRelative = settingDisplay.E1;
                            if (myMainRelative != null) {
                                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.7.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        SettingDisplay.this.H0();
                                    }
                                });
                                return true;
                            }
                        }
                        return true;
                    }
                });
                this.Y1 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        boolean z = false;
        if (PrefWeb.K == 2) {
            PrefWeb.K = 0;
        }
        if (PrefWeb.L == 2) {
            PrefWeb.L = 0;
        }
        if (MainApp.M1 == 1) {
            z = true;
        }
        this.X1 = z;
        F0(R.string.display_title, true, z);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingDisplay.p2;
                final SettingDisplay settingDisplay = SettingDisplay.this;
                if (settingDisplay.O0 != null) {
                    MainUtil.m7();
                    settingDisplay.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingDisplay.2

                        /* renamed from: com.mycompany.app.setting.SettingDisplay$2$2, reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes3.dex */
                        class RunnableC02022 implements Runnable {
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.f7();
                            }
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, java.lang.Runnable] */
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z2) {
                            MyMainRelative myMainRelative;
                            if (z2) {
                                SettingDisplay settingDisplay2 = SettingDisplay.this;
                                if (settingDisplay2.N1 != null) {
                                    if (settingDisplay2.i2 != MainApp.K1) {
                                        settingDisplay2.H0();
                                    } else {
                                        Handler handler2 = settingDisplay2.O0;
                                        if (handler2 != null) {
                                            handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.2.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SettingDisplay settingDisplay3 = SettingDisplay.this;
                                                    SettingListAdapter settingListAdapter = settingDisplay3.N1;
                                                    if (settingListAdapter != null) {
                                                        settingListAdapter.E(settingDisplay3.D0());
                                                    }
                                                }
                                            });
                                        } else {
                                            return;
                                        }
                                    }
                                    if (settingDisplay2.l2 != PrefPdf.n || settingDisplay2.m2 != PrefPdf.o) {
                                        MainUtil.g7(settingDisplay2.getWindow(), PrefPdf.o, PrefPdf.n);
                                    }
                                    if (settingDisplay2.n2 != PrefPdf.m) {
                                        settingDisplay2.q0(true);
                                    }
                                    if (settingDisplay2.o2 != PrefMain.l) {
                                        MainUtil.w7(settingDisplay2);
                                    }
                                    settingDisplay2.I0(MainUtil.l1(), false);
                                    if ((settingDisplay2.j2 != PrefWeb.J || settingDisplay2.k2 != PrefWeb.L) && (myMainRelative = settingDisplay2.E1) != 0) {
                                        myMainRelative.post(new Object());
                                    }
                                }
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            boolean z2 = MainApp.K1;
                            SettingDisplay settingDisplay2 = SettingDisplay.this;
                            settingDisplay2.i2 = z2;
                            settingDisplay2.j2 = PrefWeb.J;
                            settingDisplay2.k2 = PrefWeb.L;
                            settingDisplay2.l2 = PrefPdf.n;
                            settingDisplay2.m2 = PrefPdf.o;
                            settingDisplay2.n2 = PrefPdf.m;
                            settingDisplay2.o2 = PrefMain.l;
                            return SettingDisplay.P0(settingDisplay2.f1);
                        }
                    });
                    if (settingDisplay.X1) {
                        settingDisplay.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingDisplay.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int[] iArr2 = SettingDisplay.p2;
                                final SettingDisplay settingDisplay2 = SettingDisplay.this;
                                if (settingDisplay2.T0()) {
                                    return;
                                }
                                settingDisplay2.R0();
                                DialogConfirm dialogConfirm = new DialogConfirm((Activity) settingDisplay2, false, new DialogConfirm.DialogConfBtnListener() { // from class: com.mycompany.app.setting.SettingDisplay.12
                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                    public final void a(boolean z2) {
                                        int[] iArr3 = SettingDisplay.p2;
                                        SettingDisplay.this.R0();
                                    }

                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                    public final void b() {
                                        int[] iArr3 = SettingDisplay.p2;
                                        SettingDisplay settingDisplay3 = SettingDisplay.this;
                                        settingDisplay3.R0();
                                        MainUtil.Q4(settingDisplay3, "com.google.android.webview");
                                    }

                                    @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfBtnListener
                                    public final void onCancel() {
                                        int[] iArr3 = SettingDisplay.p2;
                                        SettingDisplay.this.R0();
                                    }
                                });
                                settingDisplay2.d2 = dialogConfirm;
                                dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.13
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int[] iArr3 = SettingDisplay.p2;
                                        SettingDisplay.this.R0();
                                    }
                                });
                            }
                        });
                    }
                    Handler handler2 = settingDisplay.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingDisplay.p2;
                            final SettingDisplay settingDisplay2 = SettingDisplay.this;
                            if (settingDisplay2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingDisplay2.D0(), false, settingDisplay2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingDisplay.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z2, int i2) {
                                    boolean z3;
                                    boolean z4;
                                    boolean z5;
                                    boolean z6;
                                    int[] iArr3 = SettingDisplay.p2;
                                    final SettingDisplay settingDisplay3 = SettingDisplay.this;
                                    switch (i) {
                                        case 1:
                                            settingDisplay3.U0(viewHolder, i);
                                            return;
                                        case 2:
                                            settingDisplay3.U0(viewHolder, i);
                                            return;
                                        case 3:
                                            PrefWeb.J = z2;
                                            PrefSet.d(14, settingDisplay3.f1, "mThemeSys", z2);
                                            if (settingDisplay3.N1 != null) {
                                                boolean z7 = PrefWeb.J;
                                                int[] iArr4 = SettingDisplay.q2;
                                                settingDisplay3.N1.D(new SettingListAdapter.SettingItem("UI", 1, 1, settingDisplay3.getString(iArr4[PrefWeb.K]), z7, (String) null));
                                                settingDisplay3.N1.D(new SettingListAdapter.SettingItem(2, R.string.web_page, iArr4[PrefWeb.L], z7));
                                                MyMainRelative myMainRelative = settingDisplay3.E1;
                                                if (myMainRelative == null) {
                                                    return;
                                                }
                                                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.6
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        MyMainRelative myMainRelative2;
                                                        boolean z8 = MainApp.K1;
                                                        MainUtil.f7();
                                                        if (z8 == MainApp.K1 || (myMainRelative2 = SettingDisplay.this.E1) == null) {
                                                            return;
                                                        }
                                                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.6.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                SettingDisplay.this.H0();
                                                            }
                                                        });
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 4:
                                        case 7:
                                        case 11:
                                        case 14:
                                        default:
                                            return;
                                        case 5:
                                            PrefWeb.M = z2;
                                            PrefSet.d(14, settingDisplay3.f1, "mThemeImg", z2);
                                            SettingListAdapter settingListAdapter2 = settingDisplay3.N1;
                                            if (settingListAdapter2 != null) {
                                                settingListAdapter2.D(new SettingListAdapter.SettingItem(settingDisplay3.getString(R.string.img_bright), 6, 2, SettingDisplay.Q0(PrefWeb.N), !PrefWeb.M, (String) null));
                                                return;
                                            }
                                            return;
                                        case 6:
                                            if (!settingDisplay3.T0()) {
                                                DialogSeekSimple dialogSeekSimple = settingDisplay3.e2;
                                                if (dialogSeekSimple != null) {
                                                    dialogSeekSimple.dismiss();
                                                    settingDisplay3.e2 = null;
                                                }
                                                DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingDisplay3, 3, PrefWeb.N, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingDisplay.14
                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                    public final void a(int i3) {
                                                        if (PrefWeb.N != i3) {
                                                            PrefWeb.N = i3;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            PrefSet.f(settingDisplay4.f1, 14, i3, "mImgBright");
                                                            SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                            if (settingListAdapter3 != null) {
                                                                settingListAdapter3.G(6, SettingDisplay.Q0(i3));
                                                            }
                                                        }
                                                    }
                                                });
                                                settingDisplay3.e2 = dialogSeekSimple2;
                                                dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.15
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr5 = SettingDisplay.p2;
                                                        SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                        DialogSeekSimple dialogSeekSimple3 = settingDisplay4.e2;
                                                        if (dialogSeekSimple3 != null) {
                                                            dialogSeekSimple3.dismiss();
                                                            settingDisplay4.e2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 8:
                                            MyPopupMenu myPopupMenu = settingDisplay3.Z1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingDisplay3.Z1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    for (int i3 = 0; i3 < 3; i3++) {
                                                        int i4 = SettingDisplay.r2[i3];
                                                        int i5 = SettingDisplay.s2[i4];
                                                        if (PrefWeb.O == i4) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i5, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.8
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu3 = settingDisplay4.Z1;
                                                            if (myPopupMenu3 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingDisplay4.Z1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7;
                                                            boolean z8;
                                                            int i8 = SettingDisplay.r2[i6 % 3];
                                                            if (PrefWeb.O != i8) {
                                                                PrefWeb.O = i8;
                                                                SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                                PrefSet.f(settingDisplay4.f1, 14, i8, "mThemeHead");
                                                                SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    int i9 = PrefWeb.O;
                                                                    if (i9 == 1) {
                                                                        i7 = R.string.site_theme_info;
                                                                    } else {
                                                                        i7 = 0;
                                                                    }
                                                                    if (i9 != 2) {
                                                                        z8 = true;
                                                                    } else {
                                                                        z8 = false;
                                                                    }
                                                                    settingListAdapter3.D(new SettingListAdapter.SettingItem(8, R.string.header_title, SettingDisplay.s2[PrefWeb.O], i7, 1));
                                                                    settingDisplay4.N1.D(new SettingListAdapter.SettingItem(9, R.string.header_color, PrefWeb.Q, z8, z8, 0, 0));
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.Z1 = myPopupMenu2;
                                                    settingDisplay3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 9:
                                            if (!settingDisplay3.T0()) {
                                                settingDisplay3.S0();
                                                DialogSetHead dialogSetHead = new DialogSetHead(settingDisplay3, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingDisplay.16
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        int[] iArr5 = SettingDisplay.p2;
                                                        SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                        settingDisplay4.S0();
                                                        SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                        if (settingListAdapter3 == null) {
                                                            return;
                                                        }
                                                        settingListAdapter3.D(new SettingListAdapter.SettingItem(9, R.string.header_color, PrefWeb.Q, 0, (com.mycompany.app.dialog.a) null));
                                                    }
                                                });
                                                settingDisplay3.f2 = dialogSetHead;
                                                dialogSetHead.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.17
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr5 = SettingDisplay.p2;
                                                        SettingDisplay.this.S0();
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 10:
                                            PrefWeb.U = z2;
                                            PrefSet.d(14, settingDisplay3.f1, "mDarkHome", z2);
                                            return;
                                        case 19:
                                            if (!settingDisplay3.T0()) {
                                                settingDisplay3.V0();
                                                int iFolder = PrefWeb.b0;
                                                if (iFolder == 0) {
                                                    iFolder = -65536;
                                                }
                                                DialogQuickColor dialogQuickColor = new DialogQuickColor(settingDisplay3, iFolder, new DialogQuickColor.QuickColorListener() { // from class: com.mycompany.app.setting.SettingDisplay.24
                                                    @Override // com.mycompany.app.dialog.DialogQuickColor.QuickColorListener
                                                    public final void a(int i9) {
                                                        SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                        settingDisplay4.V0();
                                                        PrefWeb.b0 = i9;
                                                        PrefSet.f(settingDisplay4.f1, 14, i9, "mTabFolderColor");
                                                        SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                        if (settingListAdapter3 == null) {
                                                            return;
                                                        }
                                                        settingListAdapter3.D(new SettingListAdapter.SettingItem(19, R.string.folder_color, PrefWeb.b0, 0, (com.mycompany.app.dialog.a) null));
                                                    }
                                                });
                                                settingDisplay3.u2 = dialogQuickColor;
                                                dialogQuickColor.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.25
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        SettingDisplay.this.V0();
                                                    }
                                                });
                                            }
                                            return;
                                        case 20:
                                            MyPopupMenu myPopupMenuLink = settingDisplay3.x2;
                                            if (myPopupMenuLink == null) {
                                                if (myPopupMenuLink != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenuLink.a();
                                                    settingDisplay3.x2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayListLink = new ArrayList();
                                                    for (int iLink = 0; iLink < 3; iLink++) {
                                                        int iVal = SettingDisplay.v2[iLink];
                                                        int iLabel = SettingDisplay.w2[iVal];
                                                        boolean zSel = PrefWeb.c0 == iVal;
                                                        arrayListLink.add(new MyPopupAdapter.PopMenuItem(iLink, iLabel, zSel));
                                                    }
                                                    MyPopupMenu myPopupMenuLink2 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayListLink, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.26
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu3 = settingDisplay4.x2;
                                                            if (myPopupMenu3 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingDisplay4.x2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7 = SettingDisplay.v2[i6 % 3];
                                                            if (PrefWeb.c0 != i7) {
                                                                PrefWeb.c0 = i7;
                                                                SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                                PrefSet.f(settingDisplay4.f1, 14, i7, "mLinkImageTab");
                                                                SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.F(20, SettingDisplay.w2[i7]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.x2 = myPopupMenuLink2;
                                                    settingDisplay3.Z0 = myPopupMenuLink2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 21:
                                            MyPopupMenu myPopupMenuUrl = settingDisplay3.A2;
                                            if (myPopupMenuUrl == null) {
                                                if (myPopupMenuUrl != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenuUrl.a();
                                                    settingDisplay3.A2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayListUrl = new ArrayList();
                                                    for (int iUrl = 0; iUrl < 3; iUrl++) {
                                                        int iValUrl = SettingDisplay.y2[iUrl];
                                                        int iLabelUrl = SettingDisplay.z2[iValUrl];
                                                        boolean zSelUrl = PrefWeb.d0 == iValUrl;
                                                        arrayListUrl.add(new MyPopupAdapter.PopMenuItem(iUrl, iLabelUrl, zSelUrl));
                                                    }
                                                    MyPopupMenu myPopupMenuUrl2 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayListUrl, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.27
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu3 = settingDisplay4.A2;
                                                            if (myPopupMenu3 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingDisplay4.A2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            int i7 = SettingDisplay.y2[i6 % 3];
                                                            if (PrefWeb.d0 != i7) {
                                                                PrefWeb.d0 = i7;
                                                                SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                                PrefSet.f(settingDisplay4.f1, 14, i7, "mPreviewUrlBar");
                                                                SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    settingListAdapter3.F(21, SettingDisplay.z2[i7]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.A2 = myPopupMenuUrl2;
                                                    settingDisplay3.Z0 = myPopupMenuUrl2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 12:
                                            MyPopupMenu myPopupMenu3 = settingDisplay3.a2;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingDisplay3.a2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    final int length = MainConst.W.length;
                                                    for (int i6 = 0; i6 < length; i6++) {
                                                        int i7 = MainConst.W[i6];
                                                        int i8 = MainConst.X[i7];
                                                        if (PrefEditor.z == i7) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i6, i8, z4));
                                                    }
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.9
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu5 = settingDisplay4.a2;
                                                            if (myPopupMenu5 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingDisplay4.a2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i9) {
                                                            int i10 = MainConst.W[i9 % length];
                                                            if (PrefEditor.z == i10) {
                                                                return true;
                                                            }
                                                            PrefEditor.z = i10;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            PrefSet.f(settingDisplay4.f1, 1, i10, "mScrFilUse");
                                                            SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                            if (settingListAdapter3 != null) {
                                                                settingListAdapter3.F(12, MainConst.X[i10]);
                                                            }
                                                            settingDisplay4.I0(MainUtil.l1(), false);
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.a2 = myPopupMenu4;
                                                    settingDisplay3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 13:
                                            if (!settingDisplay3.T0()) {
                                                DialogEditIcon dialogEditIcon = settingDisplay3.g2;
                                                if (dialogEditIcon != null) {
                                                    dialogEditIcon.dismiss();
                                                    settingDisplay3.g2 = null;
                                                }
                                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingDisplay3, 5, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingDisplay.18
                                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                    public final void a(int i9, String str) {
                                                        SettingListAdapter settingListAdapter3 = SettingDisplay.this.N1;
                                                        if (settingListAdapter3 == null) {
                                                            return;
                                                        }
                                                        settingListAdapter3.D(new SettingListAdapter.SettingItem(13, R.string.filter_color, i9, 2, (com.mycompany.app.dialog.a) null));
                                                    }
                                                });
                                                settingDisplay3.g2 = dialogEditIcon2;
                                                dialogEditIcon2.g0 = new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingDisplay.19
                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                    public final void a(int i9) {
                                                        SettingDisplay.this.I0(i9, true);
                                                    }
                                                };
                                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.20
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int l1 = MainUtil.l1();
                                                        SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                        settingDisplay4.I0(l1, false);
                                                        DialogEditIcon dialogEditIcon3 = settingDisplay4.g2;
                                                        if (dialogEditIcon3 != null) {
                                                            dialogEditIcon3.dismiss();
                                                            settingDisplay4.g2 = null;
                                                        }
                                                    }
                                                });
                                                MyMainRelative myMainRelative2 = settingDisplay3.E1;
                                                if (myMainRelative2 != null) {
                                                    myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingDisplay.21
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            if (settingDisplay4.g2 == null) {
                                                                return;
                                                            }
                                                            settingDisplay4.I0(PrefEditor.D, true);
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 15:
                                            if (!settingDisplay3.T0()) {
                                                DialogSeekBright dialogSeekBright = settingDisplay3.h2;
                                                if (dialogSeekBright != null) {
                                                    dialogSeekBright.dismiss();
                                                    settingDisplay3.h2 = null;
                                                }
                                                DialogSeekBright dialogSeekBright2 = new DialogSeekBright(settingDisplay3, settingDisplay3.getWindow(), 0, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingDisplay.22
                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                    public final void a(int i9) {
                                                        SettingDisplay.O0(SettingDisplay.this);
                                                    }
                                                });
                                                settingDisplay3.h2 = dialogSeekBright2;
                                                dialogSeekBright2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingDisplay.23
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr5 = SettingDisplay.p2;
                                                        SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                        DialogSeekBright dialogSeekBright3 = settingDisplay4.h2;
                                                        if (dialogSeekBright3 != null) {
                                                            dialogSeekBright3.dismiss();
                                                            settingDisplay4.h2 = null;
                                                        }
                                                        SettingDisplay.O0(settingDisplay4);
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 16:
                                            MyPopupMenu myPopupMenu5 = settingDisplay3.b2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingDisplay3.b2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    int length2 = MainConst.K.length;
                                                    for (int i9 = 0; i9 < length2; i9++) {
                                                        int i10 = MainConst.K[i9];
                                                        if (PrefPdf.m == i9) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i9, i10, z5));
                                                    }
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.10
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu7 = settingDisplay4.b2;
                                                            if (myPopupMenu7 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingDisplay4.b2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i11) {
                                                            int[] iArr5 = MainConst.K;
                                                            int length3 = i11 % iArr5.length;
                                                            if (PrefPdf.m == length3) {
                                                                return true;
                                                            }
                                                            PrefPdf.m = length3;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            PrefSet.f(settingDisplay4.f1, 7, length3, "mScreenOff");
                                                            SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                            if (settingListAdapter3 != null) {
                                                                settingListAdapter3.F(16, iArr5[PrefPdf.m]);
                                                                settingDisplay4.N1.C(16, MainConst.L[PrefPdf.m]);
                                                            }
                                                            settingDisplay4.q0(true);
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.b2 = myPopupMenu6;
                                                    settingDisplay3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 17:
                                            MyPopupMenu myPopupMenu7 = settingDisplay3.c2;
                                            if (myPopupMenu7 == null) {
                                                if (myPopupMenu7 != null) {
                                                    settingDisplay3.Z0 = null;
                                                    myPopupMenu7.a();
                                                    settingDisplay3.c2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    for (int i11 = 0; i11 < 3; i11++) {
                                                        int i12 = SettingDisplay.t2[i11];
                                                        if (PrefMain.l == i11) {
                                                            z6 = true;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        arrayList4.add(new MyPopupAdapter.PopMenuItem(i11, i12, z6));
                                                    }
                                                    MyPopupMenu myPopupMenu8 = new MyPopupMenu(settingDisplay3, settingDisplay3.E1, viewHolder.D, arrayList4, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingDisplay.11
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr5 = SettingDisplay.p2;
                                                            SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                            MyPopupMenu myPopupMenu9 = settingDisplay4.c2;
                                                            if (myPopupMenu9 != null) {
                                                                settingDisplay4.Z0 = null;
                                                                myPopupMenu9.a();
                                                                settingDisplay4.c2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i13) {
                                                            int i14;
                                                            int i15 = i13 % 3;
                                                            if (PrefMain.l != i15) {
                                                                PrefMain.l = i15;
                                                                SettingDisplay settingDisplay4 = SettingDisplay.this;
                                                                PrefSet.f(settingDisplay4.f1, 5, i15, "mAppRotate");
                                                                MainUtil.w7(settingDisplay4);
                                                                SettingListAdapter settingListAdapter3 = settingDisplay4.N1;
                                                                if (settingListAdapter3 != null) {
                                                                    if (PrefMain.l == 0) {
                                                                        i14 = R.string.screen_info_system;
                                                                    } else {
                                                                        i14 = 0;
                                                                    }
                                                                    settingListAdapter3.F(17, SettingDisplay.t2[i15]);
                                                                    settingDisplay4.N1.C(17, i14);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingDisplay3.c2 = myPopupMenu8;
                                                    settingDisplay3.Z0 = myPopupMenu8;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                    }
                                }
                            });
                            settingDisplay2.N1 = settingListAdapter;
                            settingDisplay2.L1.setAdapter(settingListAdapter);
                            settingDisplay2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            R0();
            DialogSeekSimple dialogSeekSimple = this.e2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.e2 = null;
            }
            S0();
            DialogEditIcon dialogEditIcon = this.g2;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.g2 = null;
            }
            DialogSeekBright dialogSeekBright = this.h2;
            if (dialogSeekBright != null) {
                dialogSeekBright.dismiss();
                this.h2 = null;
            }
            MyPopupMenu myPopupMenu = this.Y1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Y1 = null;
            }
            MyPopupMenu myPopupMenu2 = this.Z1;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu3 = this.a2;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.a2 = null;
            }
            MyPopupMenu myPopupMenu4 = this.b2;
            if (myPopupMenu4 != null) {
                this.Z0 = null;
                myPopupMenu4.a();
                this.b2 = null;
            }
            MyPopupMenu myPopupMenu5 = this.c2;
            if (myPopupMenu5 != null) {
                this.Z0 = null;
                myPopupMenu5.a();
                this.c2 = null;
            }
            MyPopupMenu myPopupMenu6 = this.x2;
            if (myPopupMenu6 != null) {
                this.Z0 = null;
                myPopupMenu6.a();
                this.x2 = null;
            }
            MyPopupMenu myPopupMenu7 = this.A2;
            if (myPopupMenu7 != null) {
                this.Z0 = null;
                myPopupMenu7.a();
                this.A2 = null;
            }
        }
    }
}
