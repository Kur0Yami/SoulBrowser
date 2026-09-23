package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetBar;
import com.mycompany.app.dialog.DialogSetColumn;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetItem;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.quick.MenuDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SettingMenu extends CastActivity {
    public static final /* synthetic */ int s2 = 0;
    public MyMainRelative C1;
    public MyButtonImage D1;
    public AppCompatTextView E1;
    public MyButtonImage F1;
    public MyButtonImage G1;
    public MyRecyclerView H1;
    public MenuIconAdapter I1;
    public MyManagerGrid J1;
    public MenuDragHelper K1;
    public ItemTouchHelper L1;
    public boolean M1;
    public AppCompatTextView N1;
    public MyButtonImage O1;
    public MyButtonImage P1;
    public MyButtonImage Q1;
    public MyButtonImage R1;
    public MyRecyclerView S1;
    public MenuIconAdapter T1;
    public MyManagerLinear U1;
    public MenuDragHelper V1;
    public ItemTouchHelper W1;
    public boolean X1;
    public AppCompatTextView Y1;
    public MyButtonImage Z1;
    public MyButtonImage a2;
    public MyButtonImage b2;
    public MyButtonImage c2;
    public int[] d2;
    public int[] e2;
    public MyPopupMenu f2;
    public DialogConfirm g2;
    public DialogSetMsg h2;
    public DialogSetMsg i2;
    public DialogSetColumn j2;
    public DialogSetItem k2;
    public DialogSetBar l2;
    public DialogSaveConfirm m2;
    public boolean n2;
    public MyFadeFrame o2;
    public boolean p2;
    public int q2;
    public boolean r2;

    public static void D0(SettingMenu settingMenu, boolean z) {
        if (z) {
            MenuIconAdapter menuIconAdapter = settingMenu.I1;
            if (menuIconAdapter != null) {
                final int v = menuIconAdapter.v(68, 0);
                settingMenu.R0();
                settingMenu.H1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.19
                    @Override // java.lang.Runnable
                    public final void run() {
                        MenuIconAdapter menuIconAdapter2;
                        SettingMenu settingMenu2 = SettingMenu.this;
                        if (settingMenu2.J1 != null && (menuIconAdapter2 = settingMenu2.I1) != null && menuIconAdapter2.d() != 0) {
                            settingMenu2.J1.x0(settingMenu2.I1.d() - 1);
                            settingMenu2.V0(v, true);
                        }
                    }
                });
                return;
            }
            return;
        }
        MenuIconAdapter menuIconAdapter2 = settingMenu.T1;
        if (menuIconAdapter2 == null) {
            return;
        }
        int v2 = menuIconAdapter2.v(68, 0);
        settingMenu.R0();
        settingMenu.V0(v2, false);
    }

    public static boolean E0(SettingMenu settingMenu) {
        MenuIconAdapter menuIconAdapter = settingMenu.T1;
        if (menuIconAdapter != null && menuIconAdapter.d() >= 9) {
            MainUtil.e8(settingMenu, R.string.not_space);
            return true;
        }
        return false;
    }

    public static void F0(SettingMenu settingMenu, boolean z) {
        if (settingMenu.P0()) {
            return;
        }
        settingMenu.J0();
        settingMenu.r2 = z;
        DialogSetMsg dialogSetMsg = new DialogSetMsg(settingMenu, R.string.del_all_confirm, R.string.delete_all, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingMenu.27
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                int i = SettingMenu.s2;
                SettingMenu settingMenu2 = SettingMenu.this;
                settingMenu2.J0();
                if (settingMenu2.r2) {
                    MenuIconAdapter menuIconAdapter = settingMenu2.I1;
                    if (menuIconAdapter != null) {
                        menuIconAdapter.H(null, true);
                        settingMenu2.R0();
                        return;
                    }
                    return;
                }
                MenuIconAdapter menuIconAdapter2 = settingMenu2.T1;
                if (menuIconAdapter2 == null) {
                    return;
                }
                menuIconAdapter2.H(null, true);
                settingMenu2.R0();
            }
        });
        settingMenu.h2 = dialogSetMsg;
        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.28
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingMenu.s2;
                SettingMenu.this.J0();
            }
        });
    }

    public static void G0(SettingMenu settingMenu, final boolean z) {
        if (!PrefRead.w || settingMenu.P0()) {
            return;
        }
        settingMenu.K0();
        DialogConfirm dialogConfirm = new DialogConfirm(settingMenu, R.string.space_title, R.string.space_guide, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingMenu.25
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z2) {
                SettingMenu settingMenu2 = SettingMenu.this;
                if (z2) {
                    PrefRead.w = false;
                    PrefSet.d(8, settingMenu2.f1, "mGuideSpace", false);
                }
                int i = SettingMenu.s2;
                settingMenu2.K0();
            }
        });
        settingMenu.g2 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.26
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingMenu.s2;
                SettingMenu settingMenu2 = SettingMenu.this;
                settingMenu2.K0();
                SettingMenu.D0(settingMenu2, z);
            }
        });
    }

    public static void H0(final int i, final int i2, final SettingMenu settingMenu, final boolean z) {
        if (!settingMenu.P0()) {
            settingMenu.N0();
            MenuIconAdapter menuIconAdapter = settingMenu.I1;
            if (menuIconAdapter != null && settingMenu.T1 != null) {
                DialogSetItem dialogSetItem = new DialogSetItem(settingMenu, i2, menuIconAdapter.y(0), settingMenu.T1.y(0), new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingMenu.32
                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                    public final void a(int i3) {
                        SettingMenu settingMenu2 = settingMenu;
                        if (settingMenu2.I1 != null && settingMenu2.T1 != null && i3 >= 0 && i3 < 74) {
                            settingMenu2.N0();
                            MainUtil.c();
                            boolean z2 = z;
                            int i4 = i;
                            int i5 = i2;
                            if (i3 == i5) {
                                settingMenu2.V0(i4, z2);
                                return;
                            }
                            if (i5 == 1000) {
                                if (z2) {
                                    final int v = settingMenu2.I1.v(i3, 0);
                                    settingMenu2.R0();
                                    settingMenu2.H1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.32.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            MenuIconAdapter menuIconAdapter2;
                                            AnonymousClass32 anonymousClass32 = AnonymousClass32.this;
                                            SettingMenu settingMenu3 = settingMenu;
                                            if (settingMenu3.J1 != null && (menuIconAdapter2 = settingMenu3.I1) != null && menuIconAdapter2.d() != 0) {
                                                settingMenu3.J1.x0(settingMenu3.I1.d() - 1);
                                                settingMenu3.V0(v, z);
                                            }
                                        }
                                    });
                                    return;
                                }
                                i4 = settingMenu2.T1.v(i3, 0);
                            } else if (z2) {
                                settingMenu2.I1.K(i4, i3, 0);
                            } else {
                                settingMenu2.T1.K(i4, i3, 0);
                            }
                            settingMenu2.R0();
                            settingMenu2.V0(i4, z2);
                        }
                    }
                });
                settingMenu.k2 = dialogSetItem;
                dialogSetItem.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.33
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i3 = SettingMenu.s2;
                        SettingMenu.this.N0();
                    }
                });
            }
        }
    }

    public static void I0(final SettingMenu settingMenu, View view, final int i, final int i2, final boolean z) {
        int i3;
        MyPopupMenu myPopupMenu = settingMenu.f2;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                settingMenu.Z0 = null;
                myPopupMenu.a();
                settingMenu.f2 = null;
            }
            if (view == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            if (z) {
                i3 = R.string.move_down;
            } else {
                i3 = R.string.move_up;
            }
            arrayList.add(new MyPopupAdapter.PopMenuItem(1, i3));
            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
            arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.delete));
            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingMenu, settingMenu.C1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingMenu.20
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final void a() {
                    int i4 = SettingMenu.s2;
                    SettingMenu settingMenu2 = settingMenu;
                    MyPopupMenu myPopupMenu3 = settingMenu2.f2;
                    if (myPopupMenu3 != null) {
                        settingMenu2.Z0 = null;
                        myPopupMenu3.a();
                        settingMenu2.f2 = null;
                    }
                }

                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final boolean b(View view2, int i4) {
                    MenuIconAdapter menuIconAdapter;
                    SettingMenu settingMenu2 = settingMenu;
                    MenuIconAdapter menuIconAdapter2 = settingMenu2.I1;
                    if (menuIconAdapter2 != null && (menuIconAdapter = settingMenu2.T1) != null) {
                        int i5 = i2;
                        boolean z2 = z;
                        int i6 = i;
                        if (i4 == 1) {
                            if (z2) {
                                if (!SettingMenu.E0(settingMenu2)) {
                                    settingMenu2.I1.E(i6);
                                    int C = settingMenu2.T1.C(0, i5);
                                    settingMenu2.R0();
                                    settingMenu2.V0(C, false);
                                    return true;
                                }
                            } else {
                                menuIconAdapter.E(i6);
                                final int C2 = settingMenu2.I1.C(0, i5);
                                settingMenu2.R0();
                                settingMenu2.H1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.20.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MenuIconAdapter menuIconAdapter3;
                                        AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                                        SettingMenu settingMenu3 = settingMenu;
                                        if (settingMenu3.J1 != null && (menuIconAdapter3 = settingMenu3.I1) != null && menuIconAdapter3.d() != 0) {
                                            SettingMenu settingMenu4 = settingMenu;
                                            settingMenu4.J1.x0(settingMenu4.I1.d() - 1);
                                            settingMenu.V0(C2, true);
                                        }
                                    }
                                });
                                return true;
                            }
                        } else {
                            if (i4 == 2) {
                                if (z2) {
                                    menuIconAdapter2.K(i6, 0, 0);
                                } else {
                                    menuIconAdapter.K(i6, 0, 0);
                                }
                                settingMenu2.R0();
                                return true;
                            }
                            SettingMenu.H0(i6, i5, settingMenu2, z2);
                        }
                    }
                    return true;
                }
            });
            settingMenu.f2 = myPopupMenu2;
            settingMenu.Z0 = myPopupMenu2;
        }
    }

    public final void J0() {
        DialogSetMsg dialogSetMsg = this.h2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.h2 = null;
        }
    }

    public final void K0() {
        DialogConfirm dialogConfirm = this.g2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.g2 = null;
        }
    }

    public final void L0() {
        DialogSetMsg dialogSetMsg = this.i2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.i2 = null;
        }
    }

    public final void M0() {
        DialogSaveConfirm dialogSaveConfirm = this.m2;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.m2 = null;
        }
    }

    public final void N0() {
        DialogSetItem dialogSetItem = this.k2;
        if (dialogSetItem != null) {
            dialogSetItem.dismiss();
            this.k2 = null;
        }
    }

    public final boolean O0() {
        MenuIconAdapter menuIconAdapter = this.I1;
        if (menuIconAdapter == null || this.T1 == null || (!menuIconAdapter.B(0, this.d2) && !this.T1.B(0, this.e2))) {
            return false;
        }
        return true;
    }

    public final boolean P0() {
        if (this.g2 != null || this.h2 != null || this.i2 != null || this.j2 != null || this.k2 != null || this.l2 != null || this.m2 != null) {
            return true;
        }
        return false;
    }

    public final void Q0(boolean z) {
        boolean z2;
        if (this.I1 != null && this.T1 != null && !this.n2) {
            boolean z3 = true;
            this.n2 = true;
            PrefMain r = PrefMain.r(this.f1, false);
            if (this.I1.B(0, this.d2)) {
                if (z) {
                    PrefMain.B = MainUtil.b2(this.I1.y(0));
                } else {
                    PrefMain.B = "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40";
                    this.d2 = MainUtil.a2("3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40");
                }
                if (z) {
                    r.p("mMenuItems", PrefMain.B);
                } else {
                    r.q("mMenuItems");
                }
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.T1.B(0, this.e2)) {
                if (z) {
                    PrefMain.C = MainUtil.b2(this.T1.y(0));
                } else {
                    PrefMain.C = "21,22,23,24,25";
                    this.e2 = MainUtil.a2("21,22,23,24,25");
                }
                if (z) {
                    r.p("mMidItems", PrefMain.C);
                } else {
                    r.q("mMidItems");
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                r.a();
            }
            if (z) {
                finish();
            } else {
                this.n2 = false;
            }
        }
    }

    public final void R0() {
        MenuIconAdapter menuIconAdapter;
        if (this.N1 != null && (menuIconAdapter = this.I1) != null) {
            if (menuIconAdapter.d() > 0) {
                this.N1.setVisibility(8);
                this.O1.setVisibility(0);
                this.P1.setVisibility(0);
            } else {
                this.N1.setVisibility(0);
                this.O1.setVisibility(8);
                this.P1.setVisibility(8);
            }
            if (this.T1.d() > 0) {
                this.Y1.setVisibility(8);
                this.Z1.setVisibility(0);
                this.a2.setVisibility(0);
            } else {
                this.Y1.setVisibility(0);
                this.Z1.setVisibility(8);
                this.a2.setVisibility(8);
            }
        }
    }

    public final void S0() {
        int i;
        MyManagerGrid myManagerGrid = this.J1;
        if (myManagerGrid != null && (i = this.q2) != 0 && myManagerGrid.F != i) {
            myManagerGrid.x1(i);
        }
    }

    public final void T0() {
        int i;
        if (MainApp.K1) {
            this.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.E1.setTextColor(-328966);
            this.F1.setImageResource(R.drawable.outline_replay_dark_20);
            this.G1.setImageResource(R.drawable.outline_check_dark_20);
            this.H1.setBackgroundColor(-14606047);
            this.N1.setTextColor(-328966);
            this.O1.setImageResource(R.drawable.outline_settings_dark_24);
            this.P1.setImageResource(R.drawable.outline_delete_dark_24);
            this.Q1.setImageResource(R.drawable.outline_border_clear_dark_24);
            this.R1.setImageResource(R.drawable.outline_add_dark_24);
            this.S1.setBackgroundColor(-14606047);
            this.Y1.setTextColor(-328966);
            this.Z1.setImageResource(R.drawable.outline_settings_dark_24);
            this.a2.setImageResource(R.drawable.outline_delete_dark_24);
            this.b2.setImageResource(R.drawable.outline_border_clear_dark_24);
            this.c2.setImageResource(R.drawable.outline_add_dark_24);
        } else {
            this.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.E1.setTextColor(-16777216);
            this.F1.setImageResource(R.drawable.outline_replay_black_20);
            this.G1.setImageResource(R.drawable.outline_check_black_20);
            this.H1.setBackgroundColor(-1);
            this.N1.setTextColor(-16777216);
            this.O1.setImageResource(R.drawable.outline_settings_black_24);
            this.P1.setImageResource(R.drawable.outline_delete_black_24);
            this.Q1.setImageResource(R.drawable.outline_border_clear_black_24);
            this.R1.setImageResource(R.drawable.outline_add_black_24);
            this.S1.setBackgroundColor(-1);
            this.Y1.setTextColor(-16777216);
            this.Z1.setImageResource(R.drawable.outline_settings_black_24);
            this.a2.setImageResource(R.drawable.outline_delete_black_24);
            this.b2.setImageResource(R.drawable.outline_border_clear_black_24);
            this.c2.setImageResource(R.drawable.outline_add_black_24);
        }
        if (MainApp.K1) {
            i = -12632257;
        } else {
            i = 553648128;
        }
        this.D1.setBgPreColor(i);
        this.F1.setBgPreColor(i);
        this.G1.setBgPreColor(i);
        this.O1.setBgPreColor(i);
        this.P1.setBgPreColor(i);
        this.Q1.setBgPreColor(i);
        this.R1.setBgPreColor(i);
        this.Z1.setBgPreColor(i);
        this.a2.setBgPreColor(i);
        this.b2.setBgPreColor(i);
        this.c2.setBgPreColor(i);
    }

    public final void U0() {
        if (P0()) {
            return;
        }
        M0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingMenu.36
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingMenu.s2;
                SettingMenu settingMenu = SettingMenu.this;
                settingMenu.M0();
                if (i == 0) {
                    settingMenu.Q0(true);
                } else {
                    settingMenu.finish();
                }
            }
        });
        this.m2 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.37
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingMenu.s2;
                SettingMenu.this.M0();
            }
        });
    }

    public final void V0(final int i, final boolean z) {
        MyMainRelative myMainRelative;
        if (i >= 0 && (myMainRelative = this.C1) != null) {
            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.34
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2 = z;
                    int i2 = i;
                    SettingMenu settingMenu = SettingMenu.this;
                    if (z2) {
                        MenuIconAdapter menuIconAdapter = settingMenu.I1;
                        if (menuIconAdapter != null) {
                            menuIconAdapter.J(i2, settingMenu.J1);
                            return;
                        }
                        return;
                    }
                    MenuIconAdapter menuIconAdapter2 = settingMenu.T1;
                    if (menuIconAdapter2 != null) {
                        menuIconAdapter2.J(i2, settingMenu.U1);
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.n2) {
            return;
        }
        if (O0()) {
            U0();
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        DialogSetBar dialogSetBar = this.l2;
        if (dialogSetBar != null) {
            boolean h0 = h0();
            if (dialogSetBar.i0 != null) {
                if (h0) {
                    h0 = dialogSetBar.q();
                }
                FrameLayout frameLayout = dialogSetBar.i0;
                if (h0) {
                    i = 8;
                } else {
                    i = 0;
                }
                frameLayout.setVisibility(i);
            }
        }
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.38
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                int i3 = SettingMenu.s2;
                SettingMenu settingMenu = SettingMenu.this;
                settingMenu.S0();
                MenuIconAdapter menuIconAdapter = settingMenu.I1;
                if (menuIconAdapter != null) {
                    menuIconAdapter.g();
                }
                MenuIconAdapter menuIconAdapter2 = settingMenu.T1;
                if (menuIconAdapter2 != null) {
                    menuIconAdapter2.g();
                }
                boolean z = settingMenu.p2;
                boolean z2 = MainApp.K1;
                if (z != z2) {
                    settingMenu.p2 = z2;
                    MyMainRelative myMainRelative = settingMenu.C1;
                    if (myMainRelative != null) {
                        try {
                            Window window = settingMenu.getWindow();
                            if (MainApp.K1) {
                                i2 = -16777216;
                            } else {
                                i2 = -460552;
                            }
                            myMainRelative.b(window, i2);
                            settingMenu.T0();
                            settingMenu.A0();
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MainUtil.C7(this);
        this.d2 = MainUtil.a2(PrefMain.B);
        this.e2 = MainUtil.a2(PrefMain.C);
        this.p2 = MainApp.K1;
        int i = PrefMain.z;
        this.q2 = i;
        if (i == 0) {
            this.q2 = 5;
        }
        int i2 = R.id.set_icon_reset;
        int i3 = R.id.set_icon_apply;
        int i4 = R.id.set_cast_icon;
        int i5 = R.id.set_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyHeaderView myHeaderView = new MyHeaderView(this);
        myMainRelative.addView(myHeaderView, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
        layoutParams.setMarginStart(MainApp.F1);
        myHeaderView.addView(myButtonImage, layoutParams);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 18.0f);
        appCompatTextView.setText(R.string.list_menu);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(16, i2);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i2);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams3.addRule(16, i3);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams3);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i3);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i7 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i7, i7);
        layoutParams4.addRule(16, i4);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams4);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i4);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams5.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams5);
        FrameLayout frameLayout2 = new FrameLayout(this);
        RelativeLayout.LayoutParams h = a.h(-1, -1, 2, i5);
        h.topMargin = MainApp.b1 + MainApp.F1;
        myMainRelative.addView(frameLayout2, h);
        int G2 = (int) MainUtil.G(this, 232.0f);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.bottomMargin = G2;
        frameLayout2.addView(myRecyclerView, layoutParams6);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setGravity(17);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setText(R.string.not_used);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams7.bottomMargin = G2;
        frameLayout2.addView(appCompatTextView2, layoutParams7);
        int G3 = (int) MainUtil.G(this, 176.0f);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setVisibility(8);
        int i8 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams8 = new FrameLayout.LayoutParams(i8, i8);
        layoutParams8.gravity = 8388691;
        layoutParams8.setMarginStart(MainApp.G1);
        layoutParams8.bottomMargin = G3;
        frameLayout2.addView(myButtonImage4, layoutParams8);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setVisibility(8);
        int i9 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(i9, i9);
        layoutParams9.gravity = 8388691;
        layoutParams9.setMarginStart(MainApp.G1 + MainApp.g1);
        layoutParams9.bottomMargin = G3;
        frameLayout2.addView(myButtonImage5, layoutParams9);
        MyButtonImage myButtonImage6 = new MyButtonImage(this);
        myButtonImage6.setScaleType(scaleType);
        int i10 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(i10, i10);
        layoutParams10.gravity = 8388693;
        layoutParams10.setMarginEnd(MainApp.G1 + MainApp.g1);
        layoutParams10.bottomMargin = G3;
        frameLayout2.addView(myButtonImage6, layoutParams10);
        MyButtonImage myButtonImage7 = new MyButtonImage(this);
        myButtonImage7.setScaleType(scaleType);
        int i11 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i11, i11);
        layoutParams11.gravity = 8388693;
        layoutParams11.setMarginEnd(MainApp.G1);
        layoutParams11.bottomMargin = G3;
        frameLayout2.addView(myButtonImage7, layoutParams11);
        int G4 = (int) MainUtil.G(this, 80.0f);
        MyRecyclerView myRecyclerView2 = new MyRecyclerView(this);
        myRecyclerView2.u0(true, true);
        myRecyclerView2.setVerticalScrollBarEnabled(false);
        myRecyclerView2.setHorizontalScrollBarEnabled(false);
        FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(-1, G4);
        layoutParams12.gravity = 8388691;
        layoutParams12.bottomMargin = MainApp.i1;
        frameLayout2.addView(myRecyclerView2, layoutParams12);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setGravity(17);
        appCompatTextView3.setTextSize(1, 16.0f);
        appCompatTextView3.setText(R.string.not_used);
        appCompatTextView3.setVisibility(8);
        FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-1, G4);
        layoutParams13.gravity = 8388691;
        layoutParams13.bottomMargin = MainApp.i1;
        frameLayout2.addView(appCompatTextView3, layoutParams13);
        MyButtonImage myButtonImage8 = new MyButtonImage(this);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.setVisibility(8);
        int i12 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams14 = new FrameLayout.LayoutParams(i12, i12);
        layoutParams14.gravity = 8388691;
        layoutParams14.setMarginStart(MainApp.G1);
        layoutParams14.bottomMargin = MainApp.F1;
        frameLayout2.addView(myButtonImage8, layoutParams14);
        MyButtonImage myButtonImage9 = new MyButtonImage(this);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.setVisibility(8);
        int i13 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(i13, i13);
        layoutParams15.gravity = 8388691;
        layoutParams15.setMarginStart(MainApp.G1 + MainApp.g1);
        layoutParams15.bottomMargin = MainApp.F1;
        frameLayout2.addView(myButtonImage9, layoutParams15);
        MyButtonImage myButtonImage10 = new MyButtonImage(this);
        myButtonImage10.setScaleType(scaleType);
        int i14 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams16 = new FrameLayout.LayoutParams(i14, i14);
        layoutParams16.gravity = 8388693;
        layoutParams16.setMarginEnd(MainApp.G1 + MainApp.g1);
        layoutParams16.bottomMargin = MainApp.F1;
        frameLayout2.addView(myButtonImage10, layoutParams16);
        MyButtonImage myButtonImage11 = new MyButtonImage(this);
        myButtonImage11.setScaleType(scaleType);
        int i15 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(i15, i15);
        layoutParams17.gravity = 8388693;
        layoutParams17.setMarginEnd(MainApp.G1);
        layoutParams17.bottomMargin = MainApp.F1;
        frameLayout2.addView(myButtonImage11, layoutParams17);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i5);
        frameLayout3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams18.addRule(12);
        myMainRelative.addView(frameLayout3, layoutParams18);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = appCompatTextView;
        this.F1 = myButtonImage2;
        this.G1 = myButtonImage3;
        this.H1 = myRecyclerView;
        this.N1 = appCompatTextView2;
        this.O1 = myButtonImage4;
        this.P1 = myButtonImage5;
        this.Q1 = myButtonImage6;
        this.R1 = myButtonImage7;
        this.S1 = myRecyclerView2;
        this.Y1 = appCompatTextView3;
        this.Z1 = myButtonImage8;
        this.a2 = myButtonImage9;
        this.b2 = myButtonImage10;
        this.c2 = myButtonImage11;
        B0(myMainRelative, frameLayout, frameLayout3);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.1
            /* JADX WARN: Type inference failed for: r1v14, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
            /* JADX WARN: Type inference failed for: r1v4, types: [androidx.recyclerview.widget.GridLayoutManager, com.mycompany.app.view.MyManagerGrid] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingMenu settingMenu = SettingMenu.this;
                if (settingMenu.C1 != null) {
                    settingMenu.T0();
                    settingMenu.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i16 = SettingMenu.s2;
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (settingMenu2.O0()) {
                                settingMenu2.U0();
                            } else {
                                settingMenu2.finish();
                            }
                        }
                    });
                    settingMenu.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i16 = SettingMenu.s2;
                            final SettingMenu settingMenu2 = SettingMenu.this;
                            if (settingMenu2.P0()) {
                                return;
                            }
                            settingMenu2.L0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingMenu2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingMenu.29
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int i17 = SettingMenu.s2;
                                    SettingMenu settingMenu3 = SettingMenu.this;
                                    settingMenu3.L0();
                                    MenuIconAdapter menuIconAdapter = settingMenu3.I1;
                                    if (menuIconAdapter != null) {
                                        menuIconAdapter.H(MainUtil.a2("3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40"), true);
                                    }
                                    MenuIconAdapter menuIconAdapter2 = settingMenu3.T1;
                                    if (menuIconAdapter2 != null) {
                                        menuIconAdapter2.H(MainUtil.a2("21,22,23,24,25"), true);
                                    }
                                    settingMenu3.R0();
                                    if (PrefMain.z != 5) {
                                        PrefMain.z = 5;
                                        PrefMain r = PrefMain.r(settingMenu3.f1, false);
                                        r.n(PrefMain.z, "mMenuPort");
                                        r.a();
                                        settingMenu3.q2 = PrefMain.z;
                                        settingMenu3.S0();
                                    }
                                    int i18 = PrefPdf.y;
                                    int i19 = MainApp.Y0;
                                    if (i18 != i19) {
                                        PrefPdf.y = i19;
                                        PrefSet.f(settingMenu3.f1, 7, i19, "mMidHeight");
                                    }
                                    settingMenu3.Q0(false);
                                }
                            });
                            settingMenu2.i2 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.30
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i17 = SettingMenu.s2;
                                    SettingMenu.this.L0();
                                }
                            });
                        }
                    });
                    settingMenu.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            MyButtonImage myButtonImage12 = settingMenu2.G1;
                            if (myButtonImage12 == null) {
                                return;
                            }
                            myButtonImage12.setClickable(false);
                            settingMenu2.G1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.4.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingMenu settingMenu3 = SettingMenu.this;
                                    if (settingMenu3.G1 == null) {
                                        return;
                                    }
                                    settingMenu3.Q0(true);
                                }
                            });
                        }
                    });
                    settingMenu.J1 = new GridLayoutManager(settingMenu.q2);
                    settingMenu.I1 = new MenuIconAdapter(settingMenu.H1, settingMenu.d2, 0, true, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.setting.SettingMenu.5
                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                            ItemTouchHelper itemTouchHelper;
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (!settingMenu2.M1 && settingMenu2.I1 != null && (itemTouchHelper = settingMenu2.L1) != null) {
                                itemTouchHelper.t(menuHolder);
                            }
                        }

                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void b(View view, int i16, int i17) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (!settingMenu2.M1 && settingMenu2.I1 != null) {
                                SettingMenu.I0(settingMenu2, view, i16, i17, true);
                            }
                        }
                    });
                    MenuDragHelper menuDragHelper = new MenuDragHelper(new MenuDragHelper.MenuDragListener() { // from class: com.mycompany.app.setting.SettingMenu.6
                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void a(int i16) {
                            boolean z;
                            if (i16 == 2) {
                                z = true;
                            } else {
                                z = false;
                            }
                            SettingMenu.this.M1 = z;
                        }

                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void b(int i16, int i17) {
                            MenuIconAdapter menuIconAdapter = SettingMenu.this.I1;
                            if (menuIconAdapter != null) {
                                menuIconAdapter.F(i16, i17);
                            }
                        }
                    });
                    settingMenu.K1 = menuDragHelper;
                    ItemTouchHelper itemTouchHelper = new ItemTouchHelper(menuDragHelper);
                    settingMenu.L1 = itemTouchHelper;
                    itemTouchHelper.i(settingMenu.H1);
                    settingMenu.H1.setLayoutManager(settingMenu.J1);
                    settingMenu.H1.setAdapter(settingMenu.I1);
                    settingMenu.H1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.setting.SettingMenu.7
                        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                        public final void b(RecyclerView recyclerView, int i16, int i17) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            MyRecyclerView myRecyclerView3 = settingMenu2.H1;
                            if (myRecyclerView3 == null) {
                                return;
                            }
                            if (myRecyclerView3.computeVerticalScrollOffset() > 0) {
                                settingMenu2.H1.w0();
                            } else {
                                settingMenu2.H1.r0();
                            }
                        }
                    });
                    settingMenu.O1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingMenu settingMenu2 = SettingMenu.this;
                            MyButtonImage myButtonImage12 = settingMenu2.O1;
                            if (myButtonImage12 != null) {
                                myButtonImage12.setNoti(false);
                                if (settingMenu2.P0()) {
                                    return;
                                }
                                DialogSetColumn dialogSetColumn = settingMenu2.j2;
                                if (dialogSetColumn != null) {
                                    dialogSetColumn.dismiss();
                                    settingMenu2.j2 = null;
                                }
                                DialogSetColumn dialogSetColumn2 = new DialogSetColumn(settingMenu2, true);
                                settingMenu2.j2 = dialogSetColumn2;
                                dialogSetColumn2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.31
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i16 = SettingMenu.s2;
                                        SettingMenu settingMenu3 = SettingMenu.this;
                                        DialogSetColumn dialogSetColumn3 = settingMenu3.j2;
                                        if (dialogSetColumn3 != null) {
                                            dialogSetColumn3.dismiss();
                                            settingMenu3.j2 = null;
                                        }
                                        int i17 = settingMenu3.q2;
                                        int i18 = PrefMain.z;
                                        if (i17 != i18) {
                                            settingMenu3.q2 = i18;
                                            settingMenu3.S0();
                                        }
                                    }
                                });
                            }
                        }
                    });
                    settingMenu.P1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu.F0(SettingMenu.this, true);
                        }
                    });
                    settingMenu.Q1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.10
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            boolean z = PrefRead.w;
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (z) {
                                SettingMenu.G0(settingMenu2, true);
                            } else {
                                SettingMenu.D0(settingMenu2, true);
                            }
                        }
                    });
                    settingMenu.R1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu.H0(0, 1000, SettingMenu.this, true);
                        }
                    });
                    settingMenu.U1 = new LinearLayoutManager(0);
                    settingMenu.T1 = new MenuIconAdapter(settingMenu.S1, settingMenu.e2, 1, true, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.setting.SettingMenu.12
                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                            ItemTouchHelper itemTouchHelper2;
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (!settingMenu2.X1 && settingMenu2.T1 != null && (itemTouchHelper2 = settingMenu2.W1) != null) {
                                itemTouchHelper2.t(menuHolder);
                            }
                        }

                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void b(View view, int i16, int i17) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (!settingMenu2.X1 && settingMenu2.T1 != null) {
                                SettingMenu.I0(settingMenu2, view, i16, i17, false);
                            }
                        }
                    });
                    MenuDragHelper menuDragHelper2 = new MenuDragHelper(new MenuDragHelper.MenuDragListener() { // from class: com.mycompany.app.setting.SettingMenu.13
                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void a(int i16) {
                            boolean z;
                            if (i16 == 2) {
                                z = true;
                            } else {
                                z = false;
                            }
                            SettingMenu.this.X1 = z;
                        }

                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void b(int i16, int i17) {
                            MenuIconAdapter menuIconAdapter = SettingMenu.this.T1;
                            if (menuIconAdapter != null) {
                                menuIconAdapter.F(i16, i17);
                            }
                        }
                    });
                    settingMenu.V1 = menuDragHelper2;
                    ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(menuDragHelper2);
                    settingMenu.W1 = itemTouchHelper2;
                    itemTouchHelper2.i(settingMenu.S1);
                    settingMenu.S1.setLayoutManager(settingMenu.U1);
                    settingMenu.S1.setAdapter(settingMenu.T1);
                    settingMenu.Z1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingMenu settingMenu2 = SettingMenu.this;
                            MyButtonImage myButtonImage12 = settingMenu2.Z1;
                            if (myButtonImage12 != null) {
                                myButtonImage12.setNoti(false);
                                if (!settingMenu2.P0()) {
                                    DialogSetBar dialogSetBar = settingMenu2.l2;
                                    if (dialogSetBar != null) {
                                        dialogSetBar.dismiss();
                                        settingMenu2.l2 = null;
                                    }
                                    MenuIconAdapter menuIconAdapter = settingMenu2.T1;
                                    if (menuIconAdapter == null) {
                                        return;
                                    }
                                    DialogSetBar dialogSetBar2 = new DialogSetBar(settingMenu2, 0, menuIconAdapter.y(0));
                                    settingMenu2.l2 = dialogSetBar2;
                                    dialogSetBar2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingMenu.35
                                        @Override // android.content.DialogInterface.OnDismissListener
                                        public final void onDismiss(DialogInterface dialogInterface) {
                                            int i16 = SettingMenu.s2;
                                            SettingMenu settingMenu3 = SettingMenu.this;
                                            DialogSetBar dialogSetBar3 = settingMenu3.l2;
                                            if (dialogSetBar3 != null) {
                                                dialogSetBar3.dismiss();
                                                settingMenu3.l2 = null;
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });
                    settingMenu.a2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu.F0(SettingMenu.this, false);
                        }
                    });
                    settingMenu.b2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (SettingMenu.E0(settingMenu2)) {
                                return;
                            }
                            if (PrefRead.w) {
                                SettingMenu.G0(settingMenu2, false);
                            } else {
                                SettingMenu.D0(settingMenu2, false);
                            }
                        }
                    });
                    settingMenu.c2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.17
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingMenu settingMenu2 = SettingMenu.this;
                            if (SettingMenu.E0(settingMenu2)) {
                                return;
                            }
                            SettingMenu.H0(0, 1000, settingMenu2, false);
                        }
                    });
                    settingMenu.R0();
                    if (PrefRead.u) {
                        settingMenu.O1.setNoti(true);
                        settingMenu.Z1.setNoti(true);
                        settingMenu.C1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.18
                            @Override // java.lang.Runnable
                            public final void run() {
                                Handler handler2;
                                if (PrefRead.u) {
                                    final SettingMenu settingMenu2 = SettingMenu.this;
                                    if (settingMenu2.o2 == null && settingMenu2.C1 != null && (handler2 = settingMenu2.O0) != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMenu.21
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                if (PrefRead.u) {
                                                    final SettingMenu settingMenu3 = SettingMenu.this;
                                                    if (settingMenu3.o2 == null && settingMenu3.C1 != null) {
                                                        MyFadeFrame myFadeFrame = new MyFadeFrame(settingMenu3);
                                                        int i16 = MainApp.F1;
                                                        myFadeFrame.setPadding(i16, i16, i16, i16);
                                                        FrameLayout frameLayout4 = new FrameLayout(settingMenu3);
                                                        frameLayout4.setBackgroundResource(R.drawable.round_guide_8);
                                                        FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-1, -2);
                                                        layoutParams19.gravity = 8388691;
                                                        myFadeFrame.addView(frameLayout4, layoutParams19);
                                                        LinearLayout linearLayout = new LinearLayout(settingMenu3);
                                                        int i17 = MainApp.E1;
                                                        linearLayout.setPadding(i17, i17, i17, i17);
                                                        linearLayout.setOrientation(1);
                                                        FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(-2, -2);
                                                        layoutParams20.gravity = 1;
                                                        frameLayout4.addView(linearLayout, layoutParams20);
                                                        AppCompatTextView appCompatTextView4 = new AppCompatTextView(settingMenu3, null);
                                                        appCompatTextView4.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView4.setTextSize(1, 16.0f);
                                                        appCompatTextView4.setTextColor(-1);
                                                        linearLayout.addView(appCompatTextView4, -2, -2);
                                                        AppCompatTextView appCompatTextView5 = new AppCompatTextView(settingMenu3, null);
                                                        appCompatTextView5.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView5.setTextSize(1, 16.0f);
                                                        appCompatTextView5.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams21.topMargin = MainApp.E1;
                                                        linearLayout.addView(appCompatTextView5, layoutParams21);
                                                        settingMenu3.o2 = myFadeFrame;
                                                        appCompatTextView4.setText(R.string.quick_guide_1);
                                                        appCompatTextView5.setText(R.string.icon_edit_guide);
                                                        settingMenu3.o2.setListener(new MyFadeListener() { // from class: com.mycompany.app.setting.SettingMenu.22
                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void a(boolean z) {
                                                                SettingMenu settingMenu4;
                                                                MyFadeFrame myFadeFrame2;
                                                                if (!z && (myFadeFrame2 = (settingMenu4 = SettingMenu.this).o2) != null && settingMenu4.C1 != null) {
                                                                    myFadeFrame2.f();
                                                                    settingMenu4.C1.removeView(settingMenu4.o2);
                                                                    settingMenu4.o2 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void b(boolean z, boolean z2) {
                                                            }
                                                        });
                                                        settingMenu3.o2.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.setting.SettingMenu.23
                                                            @Override // android.view.View.OnTouchListener
                                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                boolean z = PrefRead.u;
                                                                SettingMenu settingMenu4 = SettingMenu.this;
                                                                if (z) {
                                                                    PrefRead.u = false;
                                                                    PrefSet.d(8, settingMenu4.f1, "mGuideEdIc3", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingMenu4.o2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                                return false;
                                                            }
                                                        });
                                                        frameLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMenu.24
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                boolean z = PrefRead.u;
                                                                SettingMenu settingMenu4 = SettingMenu.this;
                                                                if (z) {
                                                                    PrefRead.u = false;
                                                                    PrefSet.d(8, settingMenu4.f1, "mGuideEdIc3", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingMenu4.o2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                            }
                                                        });
                                                        settingMenu3.C1.addView(settingMenu3.o2, -1, -1);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                int i18 = SettingMenu.s2;
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                int i16 = SettingMenu.s2;
                            }
                        });
                    }
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.D1 = null;
        }
        MyButtonImage myButtonImage2 = this.F1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.F1 = null;
        }
        MyButtonImage myButtonImage3 = this.G1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.G1 = null;
        }
        MyRecyclerView myRecyclerView = this.H1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.H1 = null;
        }
        MenuIconAdapter menuIconAdapter = this.I1;
        if (menuIconAdapter != null) {
            menuIconAdapter.D();
            this.I1 = null;
        }
        MenuDragHelper menuDragHelper = this.K1;
        if (menuDragHelper != null) {
            menuDragHelper.d = null;
            this.K1 = null;
        }
        MyButtonImage myButtonImage4 = this.O1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.O1 = null;
        }
        MyButtonImage myButtonImage5 = this.P1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.P1 = null;
        }
        MyButtonImage myButtonImage6 = this.Q1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.Q1 = null;
        }
        MyButtonImage myButtonImage7 = this.R1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.R1 = null;
        }
        MyRecyclerView myRecyclerView2 = this.S1;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.S1 = null;
        }
        MenuIconAdapter menuIconAdapter2 = this.T1;
        if (menuIconAdapter2 != null) {
            menuIconAdapter2.D();
            this.T1 = null;
        }
        MenuDragHelper menuDragHelper2 = this.V1;
        if (menuDragHelper2 != null) {
            menuDragHelper2.d = null;
            this.V1 = null;
        }
        MyButtonImage myButtonImage8 = this.Z1;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.Z1 = null;
        }
        MyButtonImage myButtonImage9 = this.a2;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.a2 = null;
        }
        MyButtonImage myButtonImage10 = this.b2;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.b2 = null;
        }
        MyButtonImage myButtonImage11 = this.c2;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.c2 = null;
        }
        MyFadeFrame myFadeFrame = this.o2;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.o2 = null;
        }
        this.C1 = null;
        this.E1 = null;
        this.J1 = null;
        this.L1 = null;
        this.N1 = null;
        this.Y1 = null;
        this.d2 = null;
        this.U1 = null;
        this.W1 = null;
        this.e2 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            K0();
            J0();
            L0();
            DialogSetColumn dialogSetColumn = this.j2;
            if (dialogSetColumn != null) {
                dialogSetColumn.dismiss();
                this.j2 = null;
            }
            N0();
            DialogSetBar dialogSetBar = this.l2;
            if (dialogSetBar != null) {
                dialogSetBar.dismiss();
                this.l2 = null;
            }
            M0();
            MyPopupMenu myPopupMenu = this.f2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.f2 = null;
            }
        }
    }
}
