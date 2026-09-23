package com.mycompany.app.setting;

import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.work.impl.workers.a;
import com.mycompany.app.dialog.DialogConfirm;
import com.mycompany.app.dialog.DialogSaveConfirm;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSetBar;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetItem;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MenuIconAdapter;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.quick.MenuDragHelper;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonRelative;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyIconView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class SettingLayout extends CastActivity {
    public static final /* synthetic */ int J2 = 0;
    public DialogSetMsg A2;
    public DialogSetItem B2;
    public int C1;
    public DialogSetBar C2;
    public MyMainRelative D1;
    public DialogSaveConfirm D2;
    public MyButtonImage E1;
    public boolean E2;
    public AppCompatTextView F1;
    public boolean F2;
    public MyButtonImage G1;
    public boolean G2;
    public MyButtonImage H1;
    public MyFadeFrame H2;
    public MyButtonImage I1;
    public boolean I2;
    public RelativeLayout J1;
    public MyButtonRelative K1;
    public AppCompatTextView L1;
    public AppCompatTextView M1;
    public MyRecyclerView N1;
    public MenuIconAdapter O1;
    public MyManagerLinear P1;
    public MenuDragHelper Q1;
    public ItemTouchHelper R1;
    public boolean S1;
    public AppCompatTextView T1;
    public MyButtonImage U1;
    public MyButtonImage V1;
    public MyButtonImage W1;
    public MyButtonImage X1;
    public MyButtonImage Y1;
    public FrameLayout Z1;
    public RelativeLayout a2;
    public AppCompatTextView b2;
    public MyButtonRelative c2;
    public MyIconView d2;
    public AppCompatTextView e2;
    public MyRoundView f2;
    public MyRecyclerView g2;
    public MenuIconAdapter h2;
    public MyManagerLinear i2;
    public MenuDragHelper j2;
    public ItemTouchHelper k2;
    public boolean l2;
    public AppCompatTextView m2;
    public MyButtonImage n2;
    public MyButtonImage o2;
    public MyButtonImage p2;
    public MyButtonImage q2;
    public int[] r2;
    public int[] s2;
    public int[] t2;
    public int[] u2;
    public MyPopupMenu v2;
    public MyPopupMenu w2;
    public MyPopupMenu x2;
    public DialogConfirm y2;
    public DialogSetMsg z2;

    public static void D0(SettingLayout settingLayout, boolean z) {
        if (z) {
            MenuIconAdapter menuIconAdapter = settingLayout.O1;
            if (menuIconAdapter != null) {
                int v = menuIconAdapter.v(68, 0);
                settingLayout.U0();
                settingLayout.a1(v, true);
                return;
            }
            return;
        }
        MenuIconAdapter menuIconAdapter2 = settingLayout.h2;
        if (menuIconAdapter2 == null) {
            return;
        }
        int v2 = menuIconAdapter2.v(68, 0);
        settingLayout.U0();
        settingLayout.a1(v2, false);
    }

    public static boolean E0(SettingLayout settingLayout, boolean z) {
        MenuIconAdapter menuIconAdapter;
        MenuIconAdapter menuIconAdapter2 = settingLayout.O1;
        if (menuIconAdapter2 != null && (menuIconAdapter = settingLayout.h2) != null) {
            if (z) {
                if (menuIconAdapter2.d() >= 9) {
                    MainUtil.e8(settingLayout, R.string.not_space);
                    return true;
                }
                return false;
            }
            if (menuIconAdapter.d() >= 9) {
                MainUtil.e8(settingLayout, R.string.not_space);
                return true;
            }
            return false;
        }
        return false;
    }

    public static void F0(SettingLayout settingLayout, MenuIconAdapter menuIconAdapter) {
        if (menuIconAdapter == null) {
            return;
        }
        boolean z = menuIconAdapter.k;
        if (menuIconAdapter.A(2)) {
            menuIconAdapter.H(new int[]{2}, true);
        } else {
            menuIconAdapter.H(null, true);
        }
        if (z) {
            settingLayout.a2.setVisibility(0);
        }
        settingLayout.U0();
    }

    public static void G0(SettingLayout settingLayout, boolean z) {
        if (settingLayout.R0()) {
            return;
        }
        settingLayout.L0();
        settingLayout.I2 = z;
        DialogSetMsg dialogSetMsg = new DialogSetMsg(settingLayout, R.string.del_all_confirm, R.string.delete_all, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingLayout.30
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                int i = SettingLayout.J2;
                SettingLayout settingLayout2 = SettingLayout.this;
                settingLayout2.L0();
                if (settingLayout2.I2) {
                    SettingLayout.F0(settingLayout2, settingLayout2.O1);
                } else {
                    SettingLayout.F0(settingLayout2, settingLayout2.h2);
                }
            }
        });
        settingLayout.z2 = dialogSetMsg;
        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.31
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingLayout.J2;
                SettingLayout.this.L0();
            }
        });
    }

    public static void H0(SettingLayout settingLayout, final boolean z) {
        if (!PrefRead.w || settingLayout.R0()) {
            return;
        }
        settingLayout.M0();
        DialogConfirm dialogConfirm = new DialogConfirm(settingLayout, R.string.space_title, R.string.space_guide, new DialogConfirm.DialogConfListener() { // from class: com.mycompany.app.setting.SettingLayout.28
            @Override // com.mycompany.app.dialog.DialogConfirm.DialogConfListener
            public final void a(boolean z2) {
                SettingLayout settingLayout2 = SettingLayout.this;
                if (z2) {
                    PrefRead.w = false;
                    PrefSet.d(8, settingLayout2.f1, "mGuideSpace", false);
                }
                int i = SettingLayout.J2;
                settingLayout2.M0();
            }
        });
        settingLayout.y2 = dialogConfirm;
        dialogConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.29
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingLayout.J2;
                SettingLayout settingLayout2 = SettingLayout.this;
                settingLayout2.M0();
                SettingLayout.D0(settingLayout2, z);
            }
        });
    }

    public static void I0(SettingLayout settingLayout, int i) {
        int[] y;
        if (!settingLayout.R0()) {
            DialogSetBar dialogSetBar = settingLayout.C2;
            if (dialogSetBar != null) {
                dialogSetBar.dismiss();
                settingLayout.C2 = null;
            }
            if (i == 1) {
                MenuIconAdapter menuIconAdapter = settingLayout.O1;
                if (menuIconAdapter != null) {
                    y = menuIconAdapter.y(0);
                } else {
                    return;
                }
            } else {
                MenuIconAdapter menuIconAdapter2 = settingLayout.h2;
                if (menuIconAdapter2 == null) {
                    return;
                } else {
                    y = menuIconAdapter2.y(0);
                }
            }
            DialogSetBar dialogSetBar2 = new DialogSetBar(settingLayout, i, y);
            settingLayout.C2 = dialogSetBar2;
            dialogSetBar2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.37
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i2 = SettingLayout.J2;
                    SettingLayout settingLayout2 = SettingLayout.this;
                    DialogSetBar dialogSetBar3 = settingLayout2.C2;
                    if (dialogSetBar3 != null) {
                        dialogSetBar3.dismiss();
                        settingLayout2.C2 = null;
                    }
                }
            });
        }
    }

    public static void J0(final int i, final int i2, final SettingLayout settingLayout, final boolean z) {
        MenuIconAdapter menuIconAdapter;
        int[] iArr;
        int[] iArr2;
        if (!settingLayout.R0()) {
            settingLayout.P0();
            int i3 = settingLayout.C1;
            if ((i3 != 0 || (i2 != 1 && i2 != 2)) && (menuIconAdapter = settingLayout.O1) != null && settingLayout.h2 != null) {
                if (i3 == 0) {
                    int[] y = menuIconAdapter.y(0);
                    iArr2 = settingLayout.h2.y(0);
                    iArr = y;
                } else {
                    iArr = null;
                    iArr2 = null;
                }
                DialogSetItem dialogSetItem = new DialogSetItem(settingLayout, i2, iArr, iArr2, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingLayout.34
                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                    public final void a(int i4) {
                        SettingLayout settingLayout2 = settingLayout;
                        if (settingLayout2.O1 != null && settingLayout2.h2 != null && i4 >= 0 && i4 < 74) {
                            settingLayout2.P0();
                            MainUtil.c();
                            boolean z2 = z;
                            int i5 = i;
                            int i6 = i2;
                            if (i4 == i6) {
                                settingLayout2.a1(i5, z2);
                                return;
                            }
                            if (i6 == 1000) {
                                if (z2) {
                                    if (!SettingLayout.E0(settingLayout2, true)) {
                                        i5 = settingLayout2.O1.v(i4, settingLayout2.C1);
                                    } else {
                                        return;
                                    }
                                } else if (!SettingLayout.E0(settingLayout2, false)) {
                                    i5 = settingLayout2.h2.v(i4, settingLayout2.C1);
                                } else {
                                    return;
                                }
                            } else if (z2) {
                                settingLayout2.O1.K(i5, i4, settingLayout2.C1);
                            } else {
                                settingLayout2.h2.K(i5, i4, settingLayout2.C1);
                            }
                            settingLayout2.U0();
                            settingLayout2.a1(i5, z2);
                        }
                    }
                });
                settingLayout.B2 = dialogSetItem;
                dialogSetItem.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.35
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        int i4 = SettingLayout.J2;
                        SettingLayout.this.P0();
                    }
                });
            }
        }
    }

    public static void K0(final SettingLayout settingLayout, View view, final int i, final int i2, final boolean z) {
        int i3;
        int i4;
        int i5;
        MyPopupMenu myPopupMenu = settingLayout.w2;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                settingLayout.Z0 = null;
                myPopupMenu.a();
                settingLayout.w2 = null;
            }
            if (view == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            if (settingLayout.C1 == 0) {
                if (i2 == 1) {
                    if (z) {
                        i5 = R.string.move_down;
                    } else {
                        i5 = R.string.move_up;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i5));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.delete));
                } else if (i2 == 2) {
                    if (z) {
                        i4 = R.string.move_down;
                    } else {
                        i4 = R.string.move_up;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i4));
                } else {
                    if (z) {
                        i3 = R.string.move_down;
                    } else {
                        i3 = R.string.move_up;
                    }
                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i3));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.delete));
                }
            } else {
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
                arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.delete));
            }
            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingLayout, settingLayout.D1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingLayout.22
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                public final void a() {
                    int i6 = SettingLayout.J2;
                    SettingLayout settingLayout2 = settingLayout;
                    MyPopupMenu myPopupMenu3 = settingLayout2.w2;
                    if (myPopupMenu3 != null) {
                        settingLayout2.Z0 = null;
                        myPopupMenu3.a();
                        settingLayout2.w2 = null;
                    }
                }

                /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final boolean b(android.view.View r9, int r10) {
                    /*
                        r8 = this;
                        com.mycompany.app.setting.SettingLayout r9 = r3
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.O1
                        r1 = 1
                        if (r0 == 0) goto L89
                        com.mycompany.app.main.MenuIconAdapter r2 = r9.h2
                        if (r2 != 0) goto Ld
                        goto L89
                    Ld:
                        int r3 = r2
                        r4 = 0
                        int r5 = r1
                        boolean r6 = r4
                        if (r10 != r1) goto L6b
                        r10 = r6 ^ 1
                        boolean r0 = com.mycompany.app.setting.SettingLayout.E0(r9, r10)
                        if (r0 == 0) goto L20
                        goto L89
                    L20:
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.O1
                        if (r0 == 0) goto L4a
                        com.mycompany.app.main.MenuIconAdapter r2 = r9.h2
                        if (r2 != 0) goto L29
                        goto L4a
                    L29:
                        if (r5 != 0) goto L2c
                        goto L4b
                    L2c:
                        if (r6 == 0) goto L3c
                        int r0 = r0.d()
                        int r0 = r0 - r1
                        if (r5 < r0) goto L4a
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.h2
                        int r4 = r0.d()
                        goto L4b
                    L3c:
                        int r0 = r2.d()
                        int r0 = r0 - r1
                        if (r5 < r0) goto L4a
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.O1
                        int r4 = r0.d()
                        goto L4b
                    L4a:
                        r4 = r5
                    L4b:
                        if (r6 == 0) goto L59
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.O1
                        r0.E(r5)
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.h2
                        int r0 = r0.C(r4, r3)
                        goto L64
                    L59:
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.h2
                        r0.E(r5)
                        com.mycompany.app.main.MenuIconAdapter r0 = r9.O1
                        int r0 = r0.C(r4, r3)
                    L64:
                        r9.U0()
                        r9.a1(r0, r10)
                        return r1
                    L6b:
                        r7 = 2
                        if (r10 != r7) goto L86
                        if (r6 == 0) goto L76
                        int r10 = r9.C1
                        r0.K(r5, r4, r10)
                        goto L7b
                    L76:
                        int r10 = r9.C1
                        r2.K(r5, r4, r10)
                    L7b:
                        if (r3 != r1) goto L82
                        android.widget.RelativeLayout r10 = r9.a2
                        r10.setVisibility(r4)
                    L82:
                        r9.U0()
                        return r1
                    L86:
                        com.mycompany.app.setting.SettingLayout.J0(r5, r3, r9, r6)
                    L89:
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingLayout.AnonymousClass22.b(android.view.View, int):boolean");
                }
            });
            settingLayout.w2 = myPopupMenu2;
            if (i2 != 1) {
                myPopupMenu2.m = 2;
            }
            settingLayout.Z0 = myPopupMenu2;
        }
    }

    public final void L0() {
        DialogSetMsg dialogSetMsg = this.z2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.z2 = null;
        }
    }

    public final void M0() {
        DialogConfirm dialogConfirm = this.y2;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.y2 = null;
        }
    }

    public final void N0() {
        DialogSetMsg dialogSetMsg = this.A2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.A2 = null;
        }
    }

    public final void O0() {
        DialogSaveConfirm dialogSaveConfirm = this.D2;
        if (dialogSaveConfirm != null) {
            dialogSaveConfirm.dismiss();
            this.D2 = null;
        }
    }

    public final void P0() {
        DialogSetItem dialogSetItem = this.B2;
        if (dialogSetItem != null) {
            dialogSetItem.dismiss();
            this.B2 = null;
        }
    }

    public final boolean Q0() {
        MenuIconAdapter menuIconAdapter = this.O1;
        if (menuIconAdapter == null || this.h2 == null || (this.F2 == PrefPdf.z && !menuIconAdapter.B(0, this.r2) && !this.h2.B(0, this.s2) && !this.h2.B(1, this.t2) && !this.h2.B(2, this.u2))) {
            return false;
        }
        return true;
    }

    public final boolean R0() {
        if (this.y2 != null || this.z2 != null || this.A2 != null || this.B2 != null || this.C2 != null || this.D2 != null) {
            return true;
        }
        return false;
    }

    public final void S0(boolean z) {
        boolean z2;
        if (this.O1 != null && this.h2 != null && !this.E2) {
            boolean z3 = true;
            this.E2 = true;
            PrefMain r = PrefMain.r(this.f1, false);
            if (this.O1.B(0, this.r2)) {
                if (z) {
                    PrefMain.D = MainUtil.b2(this.O1.y(0));
                } else {
                    PrefMain.D = "63,1,31,35";
                    this.r2 = MainUtil.a2("63,1,31,35");
                }
                if (z) {
                    r.p("mTopItems", PrefMain.D);
                } else {
                    r.q("mTopItems");
                }
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.h2.B(0, this.s2)) {
                if (z) {
                    PrefMain.E = MainUtil.b2(this.h2.y(0));
                } else {
                    PrefMain.E = "26,27,28,29,30,2";
                    this.s2 = MainUtil.a2("26,27,28,29,30,2");
                }
                if (z) {
                    r.p("mBotItems", PrefMain.E);
                } else {
                    r.q("mBotItems");
                }
                z2 = true;
            }
            if (this.h2.B(1, this.t2)) {
                if (z) {
                    PrefMain.F = MainUtil.b2(this.h2.y(1));
                } else {
                    PrefMain.F = "3,3,44,45,70,65";
                    this.t2 = MainUtil.a2("3,3,44,45,70,65");
                }
                if (z) {
                    r.p("mBotLongs", PrefMain.F);
                } else {
                    r.q("mBotLongs");
                }
                z2 = true;
            }
            if (this.h2.B(2, this.u2)) {
                if (z) {
                    PrefMain.G = MainUtil.b2(this.h2.y(2));
                } else {
                    PrefMain.G = "0,0,0,0,0,0";
                    this.u2 = MainUtil.a2("0,0,0,0,0,0");
                }
                if (z) {
                    r.p("mBotSwipe", PrefMain.G);
                } else {
                    r.q("mBotSwipe");
                }
            } else {
                z3 = z2;
            }
            if (z3) {
                r.a();
            }
            if (z) {
                boolean z4 = PrefPdf.z;
                boolean z5 = this.F2;
                if (z4 != z5) {
                    PrefPdf.z = z5;
                    PrefSet.d(7, this.f1, "mTopToBot", z5);
                }
            } else if (PrefPdf.z) {
                PrefPdf.z = false;
                PrefSet.j(this.f1, 7, "mTopToBot");
                this.F2 = PrefPdf.z;
            }
            if (z) {
                finish();
            } else {
                this.E2 = false;
            }
        }
    }

    public final void T0(boolean z) {
        RelativeLayout relativeLayout = this.J1;
        if (relativeLayout != null) {
            if (z) {
                this.F2 = false;
            } else {
                this.F2 = !this.F2;
                TransitionManager.beginDelayedTransition(relativeLayout);
            }
            if (this.F2) {
                MyRecyclerView myRecyclerView = this.N1;
                if (myRecyclerView != null) {
                    int i = R.id.set_info_view;
                    int i2 = R.id.set_top_view;
                    int i3 = R.id.set_back_view;
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) myRecyclerView.getLayoutParams();
                    layoutParams.addRule(2, i3);
                    layoutParams.topMargin = 0;
                    layoutParams.bottomMargin = MainApp.F1;
                    this.N1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.T1.getLayoutParams();
                    layoutParams2.addRule(2, i3);
                    layoutParams2.topMargin = 0;
                    layoutParams2.bottomMargin = MainApp.F1;
                    this.T1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.U1.getLayoutParams();
                    layoutParams3.removeRule(3);
                    layoutParams3.addRule(2, i2);
                    layoutParams3.topMargin = 0;
                    layoutParams3.bottomMargin = MainApp.F1;
                    this.U1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.V1.getLayoutParams();
                    layoutParams4.removeRule(3);
                    layoutParams4.addRule(2, i2);
                    layoutParams4.topMargin = 0;
                    layoutParams4.bottomMargin = MainApp.F1;
                    this.V1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) this.W1.getLayoutParams();
                    layoutParams5.removeRule(3);
                    layoutParams5.addRule(2, i2);
                    layoutParams5.topMargin = 0;
                    layoutParams5.bottomMargin = MainApp.F1;
                    this.W1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.X1.getLayoutParams();
                    layoutParams6.removeRule(3);
                    layoutParams6.addRule(2, i2);
                    layoutParams6.topMargin = 0;
                    layoutParams6.bottomMargin = MainApp.F1;
                    this.X1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) this.Y1.getLayoutParams();
                    layoutParams7.removeRule(3);
                    layoutParams7.addRule(2, i2);
                    layoutParams7.topMargin = 0;
                    layoutParams7.bottomMargin = MainApp.F1;
                    this.Y1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) this.Z1.getLayoutParams();
                    layoutParams8.addRule(3, i);
                    layoutParams8.addRule(2, i2);
                    this.Z1.requestLayout();
                }
            } else {
                MyRecyclerView myRecyclerView2 = this.N1;
                if (myRecyclerView2 != null) {
                    int i4 = R.id.set_top_view;
                    int i5 = R.id.set_back_view;
                    RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) myRecyclerView2.getLayoutParams();
                    layoutParams9.removeRule(2);
                    layoutParams9.topMargin = 0;
                    layoutParams9.bottomMargin = 0;
                    this.N1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) this.T1.getLayoutParams();
                    layoutParams10.removeRule(2);
                    layoutParams10.topMargin = 0;
                    layoutParams10.bottomMargin = 0;
                    this.T1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams11 = (RelativeLayout.LayoutParams) this.U1.getLayoutParams();
                    layoutParams11.removeRule(2);
                    layoutParams11.addRule(3, i4);
                    layoutParams11.topMargin = MainApp.F1;
                    layoutParams11.bottomMargin = 0;
                    this.U1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) this.V1.getLayoutParams();
                    layoutParams12.removeRule(2);
                    layoutParams12.addRule(3, i4);
                    layoutParams12.topMargin = MainApp.F1;
                    layoutParams12.bottomMargin = 0;
                    this.V1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams13 = (RelativeLayout.LayoutParams) this.W1.getLayoutParams();
                    layoutParams13.removeRule(2);
                    layoutParams13.addRule(3, i4);
                    layoutParams13.topMargin = MainApp.F1;
                    layoutParams13.bottomMargin = 0;
                    this.W1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams14 = (RelativeLayout.LayoutParams) this.X1.getLayoutParams();
                    layoutParams14.removeRule(2);
                    layoutParams14.addRule(3, i4);
                    layoutParams14.topMargin = MainApp.F1;
                    layoutParams14.bottomMargin = 0;
                    this.X1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams15 = (RelativeLayout.LayoutParams) this.Y1.getLayoutParams();
                    layoutParams15.removeRule(2);
                    layoutParams15.addRule(3, i4);
                    layoutParams15.topMargin = MainApp.F1;
                    layoutParams15.bottomMargin = 0;
                    this.Y1.requestLayout();
                    RelativeLayout.LayoutParams layoutParams16 = (RelativeLayout.LayoutParams) this.Z1.getLayoutParams();
                    layoutParams16.addRule(3, i4);
                    layoutParams16.addRule(2, i5);
                    this.Z1.requestLayout();
                }
            }
            V0();
            MenuIconAdapter menuIconAdapter = this.O1;
            if (menuIconAdapter != null) {
                menuIconAdapter.I(this.F2);
            }
        }
    }

    public final void U0() {
        MyRecyclerView myRecyclerView = this.N1;
        if (myRecyclerView != null && this.O1 != null) {
            if (this.C1 == 0) {
                myRecyclerView.setVisibility(0);
                this.W1.setVisibility(0);
                this.X1.setVisibility(0);
                this.Y1.setVisibility(0);
                this.p2.setVisibility(0);
                this.q2.setVisibility(0);
                if (this.O1.d() > 0) {
                    this.T1.setVisibility(8);
                    this.U1.setVisibility(0);
                    this.V1.setVisibility(0);
                } else {
                    this.T1.setVisibility(0);
                    this.U1.setVisibility(8);
                    this.V1.setVisibility(8);
                }
                if (this.h2.d() > 0) {
                    this.m2.setVisibility(8);
                    this.n2.setVisibility(0);
                    this.o2.setVisibility(0);
                } else {
                    this.m2.setVisibility(0);
                    this.n2.setVisibility(8);
                    this.o2.setVisibility(8);
                }
                if (!this.O1.k && !this.h2.k) {
                    this.a2.setVisibility(0);
                    return;
                } else {
                    this.a2.setVisibility(8);
                    return;
                }
            }
            myRecyclerView.setVisibility(8);
            this.T1.setVisibility(8);
            this.U1.setVisibility(8);
            this.V1.setVisibility(8);
            this.W1.setVisibility(8);
            this.X1.setVisibility(8);
            this.Y1.setVisibility(8);
            if (this.h2.d() > 0) {
                this.m2.setVisibility(8);
            } else {
                this.m2.setVisibility(0);
            }
            this.n2.setVisibility(8);
            this.o2.setVisibility(8);
            this.p2.setVisibility(8);
            this.q2.setVisibility(8);
            this.a2.setVisibility(8);
        }
    }

    public final void V0() {
        MyButtonImage myButtonImage = this.W1;
        if (myButtonImage == null) {
            return;
        }
        if (this.F2) {
            if (MainApp.K1) {
                myButtonImage.setImageResource(R.drawable.outline_keyboard_arrow_up_dark_24);
                return;
            } else {
                myButtonImage.setImageResource(R.drawable.outline_keyboard_arrow_up_black_24);
                return;
            }
        }
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_keyboard_arrow_down_dark_24);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_keyboard_arrow_down_black_24);
        }
    }

    public final void W0() {
        MyButtonImage myButtonImage = this.G1;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            int i = this.C1;
            if (i == 1) {
                myButtonImage.setImageResource(R.drawable.outline_touch_long_dark_20);
                return;
            } else if (i == 2) {
                myButtonImage.setImageResource(R.drawable.outline_swipe_up_dark_20);
                return;
            } else {
                myButtonImage.setImageResource(R.drawable.outline_space_dashboard_dark_24);
                return;
            }
        }
        int i2 = this.C1;
        if (i2 == 1) {
            myButtonImage.setImageResource(R.drawable.outline_touch_long_black_20);
        } else if (i2 == 2) {
            myButtonImage.setImageResource(R.drawable.outline_swipe_up_black_20);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_space_dashboard_black_24);
        }
    }

    public final void X0() {
        int i;
        if (this.L1 != null) {
            int i2 = this.C1;
            if (i2 == 1) {
                this.K1.setVisibility(0);
                this.L1.setText(R.string.long_press);
                this.M1.setText(R.string.long_edit_guide);
            } else if (i2 == 2) {
                this.K1.setVisibility(0);
                this.L1.setText(R.string.swipe_up);
                this.M1.setText(R.string.swipe_edit_guide);
            } else {
                this.K1.setVisibility(8);
            }
            MenuIconAdapter menuIconAdapter = this.h2;
            if (menuIconAdapter != null && menuIconAdapter.f != (i = this.C1)) {
                menuIconAdapter.f = i;
                menuIconAdapter.g();
            }
        }
    }

    public final void Y0() {
        int i = -12632257;
        if (MainApp.K1) {
            this.E1.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.F1.setTextColor(-328966);
            this.H1.setImageResource(R.drawable.outline_replay_dark_20);
            this.I1.setImageResource(R.drawable.outline_check_dark_20);
            this.T1.setTextColor(-328966);
            this.U1.setImageResource(R.drawable.outline_settings_dark_24);
            this.V1.setImageResource(R.drawable.outline_delete_dark_24);
            this.X1.setImageResource(R.drawable.outline_border_clear_dark_24);
            this.Y1.setImageResource(R.drawable.outline_add_dark_24);
            this.m2.setTextColor(-328966);
            this.n2.setImageResource(R.drawable.outline_settings_dark_24);
            this.o2.setImageResource(R.drawable.outline_delete_dark_24);
            this.p2.setImageResource(R.drawable.outline_border_clear_dark_24);
            this.q2.setImageResource(R.drawable.outline_add_dark_24);
            this.L1.setTextColor(-328966);
            this.M1.setTextColor(-328966);
            this.N1.setBackgroundColor(-14606047);
            this.c2.g(-14606047, -12632257);
            this.f2.setBackColor(-14606047);
            this.b2.setTextColor(-328966);
            this.e2.setTextColor(-328966);
        } else {
            this.E1.setImageResource(R.drawable.outline_chevron_left_black_24);
            this.F1.setTextColor(-16777216);
            this.H1.setImageResource(R.drawable.outline_replay_black_20);
            this.I1.setImageResource(R.drawable.outline_check_black_20);
            this.T1.setTextColor(-16777216);
            this.U1.setImageResource(R.drawable.outline_settings_black_24);
            this.V1.setImageResource(R.drawable.outline_delete_black_24);
            this.X1.setImageResource(R.drawable.outline_border_clear_black_24);
            this.Y1.setImageResource(R.drawable.outline_add_black_24);
            this.m2.setTextColor(-16777216);
            this.n2.setImageResource(R.drawable.outline_settings_black_24);
            this.o2.setImageResource(R.drawable.outline_delete_black_24);
            this.p2.setImageResource(R.drawable.outline_border_clear_black_24);
            this.q2.setImageResource(R.drawable.outline_add_black_24);
            this.L1.setTextColor(-16777216);
            this.M1.setTextColor(-16777216);
            this.N1.setBackgroundColor(-1);
            this.c2.g(-1, -2039584);
            this.f2.setBackColor(-1);
            this.b2.setTextColor(-16777216);
            this.e2.setTextColor(-16777216);
        }
        V0();
        this.d2.p(MainUtil.s0(0, false), 0, false, false);
        if (!MainApp.K1) {
            i = 553648128;
        }
        this.E1.setBgPreColor(i);
        this.G1.setBgPreColor(i);
        this.H1.setBgPreColor(i);
        this.I1.setBgPreColor(i);
        this.U1.setBgPreColor(i);
        this.V1.setBgPreColor(i);
        this.W1.setBgPreColor(i);
        this.X1.setBgPreColor(i);
        this.Y1.setBgPreColor(i);
        this.n2.setBgPreColor(i);
        this.o2.setBgPreColor(i);
        this.p2.setBgPreColor(i);
        this.q2.setBgPreColor(i);
    }

    public final void Z0() {
        if (R0()) {
            return;
        }
        O0();
        DialogSaveConfirm dialogSaveConfirm = new DialogSaveConfirm(this, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingLayout.38
            @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
            public final void a(int i) {
                int i2 = SettingLayout.J2;
                SettingLayout settingLayout = SettingLayout.this;
                settingLayout.O0();
                if (i == 0) {
                    settingLayout.S0(true);
                } else {
                    settingLayout.finish();
                }
            }
        });
        this.D2 = dialogSaveConfirm;
        dialogSaveConfirm.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.39
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingLayout.J2;
                SettingLayout.this.O0();
            }
        });
    }

    public final void a1(final int i, final boolean z) {
        MyMainRelative myMainRelative;
        if (i >= 0 && (myMainRelative = this.D1) != null) {
            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.36
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z2 = z;
                    int i2 = i;
                    SettingLayout settingLayout = SettingLayout.this;
                    if (z2) {
                        MenuIconAdapter menuIconAdapter = settingLayout.O1;
                        if (menuIconAdapter != null) {
                            menuIconAdapter.J(i2, settingLayout.P1);
                            return;
                        }
                        return;
                    }
                    MenuIconAdapter menuIconAdapter2 = settingLayout.h2;
                    if (menuIconAdapter2 != null) {
                        menuIconAdapter2.J(i2, settingLayout.i2);
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.E2) {
            return;
        }
        if (Q0()) {
            Z0();
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
        DialogSetBar dialogSetBar = this.C2;
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
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.40
            @Override // java.lang.Runnable
            public final void run() {
                int i2;
                SettingLayout settingLayout = SettingLayout.this;
                MenuIconAdapter menuIconAdapter = settingLayout.O1;
                if (menuIconAdapter != null) {
                    menuIconAdapter.g();
                }
                MenuIconAdapter menuIconAdapter2 = settingLayout.h2;
                if (menuIconAdapter2 != null) {
                    menuIconAdapter2.g();
                }
                boolean z = settingLayout.G2;
                boolean z2 = MainApp.K1;
                if (z != z2) {
                    settingLayout.G2 = z2;
                    MyMainRelative myMainRelative = settingLayout.D1;
                    if (myMainRelative != null) {
                        try {
                            Window window = settingLayout.getWindow();
                            if (MainApp.K1) {
                                i2 = -16777216;
                            } else {
                                i2 = -460552;
                            }
                            myMainRelative.b(window, i2);
                            settingLayout.Y0();
                            settingLayout.W0();
                            settingLayout.A0();
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
        this.r2 = MainUtil.a2(PrefMain.D);
        this.s2 = MainUtil.a2(PrefMain.E);
        this.t2 = MainUtil.a2(PrefMain.F);
        this.u2 = MainUtil.a2(PrefMain.G);
        this.F2 = PrefPdf.z;
        this.G2 = MainApp.K1;
        int i = R.id.set_icon_type;
        int i2 = R.id.set_icon_reset;
        int i3 = R.id.set_icon_apply;
        int i4 = R.id.set_info_view;
        int i5 = R.id.set_top_view;
        int i6 = R.id.set_back_view;
        int i7 = R.id.set_noti_view;
        int i8 = R.id.set_cast_icon;
        int i9 = R.id.set_cast_ctrl;
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
        appCompatTextView.setText(R.string.layout_title);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(16, i);
        layoutParams2.setMarginStart(MainApp.i1);
        myHeaderView.addView(appCompatTextView, layoutParams2);
        int G = (int) MainUtil.G(this, 14.0f);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i);
        myButtonImage2.setPadding(G, G, G, G);
        myButtonImage2.setScaleType(scaleType);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i10, i10);
        layoutParams3.addRule(16, i2);
        layoutParams3.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage2, layoutParams3);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i2);
        myButtonImage3.setPadding(G, G, G, G);
        myButtonImage3.setScaleType(scaleType);
        int i11 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i11, i11);
        layoutParams4.addRule(16, i3);
        layoutParams4.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage3, layoutParams4);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setId(i3);
        myButtonImage4.setPadding(G, G, G, G);
        myButtonImage4.setScaleType(scaleType);
        int i12 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i12, i12);
        layoutParams5.addRule(16, i8);
        layoutParams5.topMargin = MainApp.G1;
        myHeaderView.addView(myButtonImage4, layoutParams5);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i8);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams6.addRule(21);
        myHeaderView.addView(frameLayout, layoutParams6);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams h = a.h(-1, -1, 2, i9);
        h.topMargin = MainApp.b1 + MainApp.F1;
        myMainRelative.addView(relativeLayout, h);
        MyButtonRelative myButtonRelative = new MyButtonRelative(this);
        int i13 = MainApp.E1;
        myButtonRelative.setPadding(i13, i13, i13, i13);
        myButtonRelative.e(MainApp.m1, false);
        myButtonRelative.setBgPreColor(1084664298);
        relativeLayout.addView(myButtonRelative, -1, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setId(i4);
        appCompatTextView2.setTextSize(1, 16.0f);
        myButtonRelative.addView(appCompatTextView2, -2, -2);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams h2 = a.h(-2, -2, 3, i4);
        h2.topMargin = MainApp.F1;
        myButtonRelative.addView(appCompatTextView3, h2);
        int G2 = (int) MainUtil.G(this, 80.0f);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        myRecyclerView.setId(i5);
        myRecyclerView.u0(true, true);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, G2);
        if (this.F2) {
            layoutParams7.addRule(2, i6);
            layoutParams7.bottomMargin = MainApp.F1;
        }
        relativeLayout.addView(myRecyclerView, layoutParams7);
        AppCompatTextView appCompatTextView4 = new AppCompatTextView(this, null);
        appCompatTextView4.setGravity(17);
        appCompatTextView4.setTextSize(1, 16.0f);
        appCompatTextView4.setText(R.string.not_used);
        appCompatTextView4.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, G2);
        if (this.F2) {
            layoutParams8.addRule(2, i6);
            layoutParams8.bottomMargin = MainApp.F1;
        }
        relativeLayout.addView(appCompatTextView4, layoutParams8);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setVisibility(8);
        int i14 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i14, i14);
        if (this.F2) {
            layoutParams9.addRule(2, i5);
            layoutParams9.bottomMargin = MainApp.F1;
        } else {
            layoutParams9.addRule(3, i5);
            layoutParams9.topMargin = MainApp.F1;
        }
        layoutParams9.setMarginStart(MainApp.G1);
        relativeLayout.addView(myButtonImage5, layoutParams9);
        MyButtonImage myButtonImage6 = new MyButtonImage(this);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.setVisibility(8);
        int i15 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(i15, i15);
        if (this.F2) {
            layoutParams10.addRule(2, i5);
            layoutParams10.bottomMargin = MainApp.F1;
        } else {
            layoutParams10.addRule(3, i5);
            layoutParams10.topMargin = MainApp.F1;
        }
        layoutParams10.setMarginStart(MainApp.G1 + MainApp.g1);
        relativeLayout.addView(myButtonImage6, layoutParams10);
        MyButtonImage myButtonImage7 = new MyButtonImage(this);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.setVisibility(8);
        int i16 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(i16, i16);
        if (this.F2) {
            layoutParams11.addRule(2, i5);
            layoutParams11.bottomMargin = MainApp.F1;
        } else {
            layoutParams11.addRule(3, i5);
            layoutParams11.topMargin = MainApp.F1;
        }
        layoutParams11.addRule(14);
        relativeLayout.addView(myButtonImage7, layoutParams11);
        MyButtonImage myButtonImage8 = new MyButtonImage(this);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.setVisibility(8);
        int i17 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(i17, i17);
        if (this.F2) {
            layoutParams12.addRule(2, i5);
            layoutParams12.bottomMargin = MainApp.F1;
        } else {
            layoutParams12.addRule(3, i5);
            layoutParams12.topMargin = MainApp.F1;
        }
        layoutParams12.addRule(21);
        layoutParams12.setMarginEnd(MainApp.G1 + MainApp.g1);
        relativeLayout.addView(myButtonImage8, layoutParams12);
        MyButtonImage myButtonImage9 = new MyButtonImage(this);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.setVisibility(8);
        int i18 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams13 = new RelativeLayout.LayoutParams(i18, i18);
        if (this.F2) {
            layoutParams13.addRule(2, i5);
            layoutParams13.bottomMargin = MainApp.F1;
        } else {
            layoutParams13.addRule(3, i5);
            layoutParams13.topMargin = MainApp.F1;
        }
        layoutParams13.addRule(21);
        layoutParams13.setMarginEnd(MainApp.G1);
        relativeLayout.addView(myButtonImage9, layoutParams13);
        FrameLayout frameLayout2 = new FrameLayout(this);
        RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(-1, -1);
        if (this.F2) {
            layoutParams14.addRule(3, i4);
            layoutParams14.addRule(2, i5);
        } else {
            layoutParams14.addRule(3, i5);
            layoutParams14.addRule(2, i6);
        }
        relativeLayout.addView(frameLayout2, layoutParams14);
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams15 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams15.gravity = 17;
        frameLayout2.addView(relativeLayout2, layoutParams15);
        AppCompatTextView appCompatTextView5 = new AppCompatTextView(this, null);
        appCompatTextView5.setId(i7);
        int i19 = MainApp.F1;
        appCompatTextView5.setPadding(0, i19, 0, i19);
        appCompatTextView5.setTextSize(1, 14.0f);
        appCompatTextView5.setText(R.string.not_used);
        RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams16.addRule(14);
        relativeLayout2.addView(appCompatTextView5, layoutParams16);
        MyButtonRelative myButtonRelative2 = new MyButtonRelative(this);
        int i20 = MainApp.E1;
        myButtonRelative2.setPadding(i20, 0, i20, 0);
        myButtonRelative2.e(MainApp.E1, true);
        RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-2, G2);
        layoutParams17.addRule(3, i7);
        layoutParams17.addRule(14);
        relativeLayout2.addView(myButtonRelative2, layoutParams17);
        MyIconView myIconView = new MyIconView(this);
        myIconView.setScaleType(scaleType);
        myIconView.setSetting(true);
        RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams((int) MainUtil.G(this, 120.0f), MainApp.f1);
        layoutParams18.topMargin = MainApp.F1;
        myButtonRelative2.addView(myIconView, layoutParams18);
        AppCompatTextView appCompatTextView6 = new AppCompatTextView(this, null);
        int i21 = MainApp.G1;
        appCompatTextView6.setPadding(i21, 0, i21, 0);
        appCompatTextView6.setMaxLines(2);
        appCompatTextView6.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView6.setTextSize(1, 12.0f);
        appCompatTextView6.setText(R.string.address_bar);
        RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams19.topMargin = MainApp.G1 + MainApp.g1;
        layoutParams19.addRule(14);
        myButtonRelative2.addView(appCompatTextView6, layoutParams19);
        MyRoundView myRoundView = new MyRoundView(this);
        myRoundView.setId(i6);
        myRoundView.i = 0;
        RelativeLayout.LayoutParams g = a.g(-1, G2, 12);
        g.bottomMargin = MainApp.i1;
        relativeLayout.addView(myRoundView, g);
        MyRecyclerView myRecyclerView2 = new MyRecyclerView(this);
        myRecyclerView2.setVerticalScrollBarEnabled(false);
        myRecyclerView2.setHorizontalScrollBarEnabled(false);
        RelativeLayout.LayoutParams layoutParams20 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams20.addRule(12);
        layoutParams20.bottomMargin = MainApp.i1;
        relativeLayout.addView(myRecyclerView2, layoutParams20);
        AppCompatTextView appCompatTextView7 = new AppCompatTextView(this, null);
        appCompatTextView7.setGravity(17);
        appCompatTextView7.setTextSize(1, 16.0f);
        appCompatTextView7.setText(R.string.not_used);
        appCompatTextView7.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams21 = new RelativeLayout.LayoutParams(-1, G2);
        layoutParams21.addRule(12);
        layoutParams21.bottomMargin = MainApp.i1;
        relativeLayout.addView(appCompatTextView7, layoutParams21);
        MyButtonImage myButtonImage10 = new MyButtonImage(this);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.setVisibility(8);
        int i22 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams22 = new RelativeLayout.LayoutParams(i22, i22);
        layoutParams22.addRule(12);
        layoutParams22.bottomMargin = MainApp.F1;
        layoutParams22.setMarginStart(MainApp.G1);
        relativeLayout.addView(myButtonImage10, layoutParams22);
        MyButtonImage myButtonImage11 = new MyButtonImage(this);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.setVisibility(8);
        int i23 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams23 = new RelativeLayout.LayoutParams(i23, i23);
        layoutParams23.addRule(12);
        layoutParams23.bottomMargin = MainApp.F1;
        layoutParams23.setMarginStart(MainApp.G1 + MainApp.g1);
        relativeLayout.addView(myButtonImage11, layoutParams23);
        MyButtonImage myButtonImage12 = new MyButtonImage(this);
        myButtonImage12.setScaleType(scaleType);
        myButtonImage12.setVisibility(8);
        int i24 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams24 = new RelativeLayout.LayoutParams(i24, i24);
        layoutParams24.addRule(12);
        layoutParams24.addRule(21);
        layoutParams24.bottomMargin = MainApp.F1;
        layoutParams24.setMarginEnd(MainApp.G1 + MainApp.g1);
        relativeLayout.addView(myButtonImage12, layoutParams24);
        MyButtonImage myButtonImage13 = new MyButtonImage(this);
        myButtonImage13.setScaleType(scaleType);
        myButtonImage13.setVisibility(8);
        int i25 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams25 = new RelativeLayout.LayoutParams(i25, i25);
        layoutParams25.addRule(12);
        layoutParams25.addRule(21);
        layoutParams25.bottomMargin = MainApp.F1;
        layoutParams25.setMarginEnd(MainApp.G1);
        relativeLayout.addView(myButtonImage13, layoutParams25);
        FrameLayout frameLayout3 = new FrameLayout(this);
        frameLayout3.setId(i9);
        frameLayout3.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams26 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams26.addRule(12);
        myMainRelative.addView(frameLayout3, layoutParams26);
        this.D1 = myMainRelative;
        this.E1 = myButtonImage;
        this.F1 = appCompatTextView;
        this.G1 = myButtonImage2;
        this.H1 = myButtonImage3;
        this.I1 = myButtonImage4;
        this.J1 = relativeLayout;
        this.K1 = myButtonRelative;
        this.L1 = appCompatTextView2;
        this.M1 = appCompatTextView3;
        this.N1 = myRecyclerView;
        this.T1 = appCompatTextView4;
        this.U1 = myButtonImage5;
        this.V1 = myButtonImage6;
        this.W1 = myButtonImage7;
        this.X1 = myButtonImage8;
        this.Y1 = myButtonImage9;
        this.Z1 = frameLayout2;
        this.a2 = relativeLayout2;
        this.b2 = appCompatTextView5;
        this.c2 = myButtonRelative2;
        this.d2 = myIconView;
        this.e2 = appCompatTextView6;
        this.f2 = myRoundView;
        this.g2 = myRecyclerView2;
        this.m2 = appCompatTextView7;
        this.n2 = myButtonImage10;
        this.o2 = myButtonImage11;
        this.p2 = myButtonImage12;
        this.q2 = myButtonImage13;
        B0(myMainRelative, frameLayout, frameLayout3);
        this.D1.setWindow(getWindow());
        initMainScreenOn(this.D1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.1
            /* JADX WARN: Type inference failed for: r1v18, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
            /* JADX WARN: Type inference failed for: r1v5, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingLayout settingLayout = SettingLayout.this;
                if (settingLayout.D1 != null) {
                    settingLayout.Y0();
                    settingLayout.W0();
                    settingLayout.X0();
                    settingLayout.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i26 = SettingLayout.J2;
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (settingLayout2.Q0()) {
                                settingLayout2.Z0();
                            } else {
                                settingLayout2.finish();
                            }
                        }
                    });
                    settingLayout.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            boolean z;
                            boolean z2;
                            final SettingLayout settingLayout2 = SettingLayout.this;
                            MyPopupMenu myPopupMenu = settingLayout2.v2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingLayout2.Z0 = null;
                                    myPopupMenu.a();
                                    settingLayout2.v2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                int i26 = R.string.layout_title;
                                boolean z3 = false;
                                if (settingLayout2.C1 == 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, i26, z));
                                int i27 = R.string.long_press;
                                if (settingLayout2.C1 == 1) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, i27, z2));
                                int i28 = R.string.swipe_up;
                                if (settingLayout2.C1 == 2) {
                                    z3 = true;
                                }
                                arrayList.add(new MyPopupAdapter.PopMenuItem(2, i28, z3));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingLayout2, settingLayout2.D1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingLayout.21
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i29 = SettingLayout.J2;
                                        SettingLayout settingLayout3 = SettingLayout.this;
                                        MyPopupMenu myPopupMenu3 = settingLayout3.v2;
                                        if (myPopupMenu3 != null) {
                                            settingLayout3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingLayout3.v2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i29) {
                                        SettingLayout settingLayout3 = SettingLayout.this;
                                        if (settingLayout3.N1 != null && settingLayout3.C1 != i29) {
                                            settingLayout3.C1 = i29;
                                            settingLayout3.U0();
                                            settingLayout3.W0();
                                            settingLayout3.X0();
                                            if (settingLayout3.C1 != 0) {
                                                MyButtonRelative myButtonRelative3 = settingLayout3.K1;
                                                if (!myButtonRelative3.J) {
                                                    myButtonRelative3.J = true;
                                                    myButtonRelative3.G = false;
                                                    if (myButtonRelative3.getVisibility() != 0) {
                                                        myButtonRelative3.setVisibility(0);
                                                    }
                                                    myButtonRelative3.j();
                                                }
                                            }
                                        }
                                        return true;
                                    }
                                });
                                settingLayout2.v2 = myPopupMenu2;
                                settingLayout2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    settingLayout.H1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i26 = SettingLayout.J2;
                            final SettingLayout settingLayout2 = SettingLayout.this;
                            if (settingLayout2.R0()) {
                                return;
                            }
                            settingLayout2.N0();
                            DialogSetMsg dialogSetMsg = new DialogSetMsg(settingLayout2, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingLayout.32
                                @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                public final void a() {
                                    int i27 = SettingLayout.J2;
                                    SettingLayout settingLayout3 = SettingLayout.this;
                                    settingLayout3.N0();
                                    MenuIconAdapter menuIconAdapter = settingLayout3.O1;
                                    if (menuIconAdapter != null) {
                                        menuIconAdapter.H(MainUtil.a2("63,1,31,35"), true);
                                    }
                                    MenuIconAdapter menuIconAdapter2 = settingLayout3.h2;
                                    if (menuIconAdapter2 != null) {
                                        menuIconAdapter2.G(true, true);
                                    }
                                    settingLayout3.U0();
                                    settingLayout3.T0(true);
                                    settingLayout3.X0();
                                    int i28 = PrefPdf.A;
                                    int i29 = MainApp.Y0;
                                    if (i28 != i29) {
                                        PrefPdf.A = i29;
                                        PrefSet.f(settingLayout3.f1, 7, i29, "mTopHeight");
                                    }
                                    if (PrefEditor.I != 0) {
                                        PrefEditor.I = 0;
                                        PrefSet.f(settingLayout3.f1, 1, 0, "mBotAlpha");
                                    }
                                    int i30 = PrefPdf.B;
                                    int i31 = MainApp.Y0;
                                    if (i30 != i31) {
                                        PrefPdf.B = i31;
                                        PrefSet.f(settingLayout3.f1, 7, i31, "mBotHeight");
                                    }
                                    settingLayout3.S0(false);
                                }
                            });
                            settingLayout2.A2 = dialogSetMsg;
                            dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingLayout.33
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i27 = SettingLayout.J2;
                                    SettingLayout.this.N0();
                                }
                            });
                        }
                    });
                    settingLayout.I1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            MyButtonImage myButtonImage14 = settingLayout2.I1;
                            if (myButtonImage14 == null) {
                                return;
                            }
                            myButtonImage14.setClickable(false);
                            settingLayout2.I1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingLayout settingLayout3 = SettingLayout.this;
                                    if (settingLayout3.I1 == null) {
                                        return;
                                    }
                                    settingLayout3.S0(true);
                                }
                            });
                        }
                    });
                    settingLayout.P1 = new LinearLayoutManager(0);
                    MenuIconAdapter menuIconAdapter = new MenuIconAdapter(settingLayout.N1, settingLayout.r2, 2, true, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.setting.SettingLayout.6
                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                            ItemTouchHelper itemTouchHelper;
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (!settingLayout2.S1 && settingLayout2.O1 != null && (itemTouchHelper = settingLayout2.R1) != null) {
                                itemTouchHelper.t(menuHolder);
                            }
                        }

                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void b(View view, int i26, int i27) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (!settingLayout2.S1 && settingLayout2.O1 != null) {
                                SettingLayout.K0(settingLayout2, view, i26, i27, true);
                            }
                        }
                    });
                    settingLayout.O1 = menuIconAdapter;
                    if (PrefRead.v) {
                        menuIconAdapter.l = true;
                    }
                    menuIconAdapter.I(settingLayout.F2);
                    MenuDragHelper menuDragHelper = new MenuDragHelper(new MenuDragHelper.MenuDragListener() { // from class: com.mycompany.app.setting.SettingLayout.7
                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void a(int i26) {
                            boolean z;
                            if (i26 == 2) {
                                z = true;
                            } else {
                                z = false;
                            }
                            SettingLayout.this.S1 = z;
                        }

                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void b(int i26, int i27) {
                            MenuIconAdapter menuIconAdapter2 = SettingLayout.this.O1;
                            if (menuIconAdapter2 != null) {
                                menuIconAdapter2.F(i26, i27);
                            }
                        }
                    });
                    settingLayout.Q1 = menuDragHelper;
                    ItemTouchHelper itemTouchHelper = new ItemTouchHelper(menuDragHelper);
                    settingLayout.R1 = itemTouchHelper;
                    itemTouchHelper.i(settingLayout.N1);
                    settingLayout.N1.setLayoutManager(settingLayout.P1);
                    settingLayout.N1.setAdapter(settingLayout.O1);
                    settingLayout.U1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            MyButtonImage myButtonImage14 = settingLayout2.U1;
                            if (myButtonImage14 == null) {
                                return;
                            }
                            myButtonImage14.setNoti(false);
                            SettingLayout.I0(settingLayout2, 1);
                        }
                    });
                    settingLayout.V1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout.G0(SettingLayout.this, true);
                        }
                    });
                    settingLayout.W1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.10
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int i26 = SettingLayout.J2;
                            SettingLayout.this.T0(false);
                        }
                    });
                    settingLayout.X1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.11
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (SettingLayout.E0(settingLayout2, true)) {
                                return;
                            }
                            if (PrefRead.w) {
                                SettingLayout.H0(settingLayout2, true);
                            } else {
                                SettingLayout.D0(settingLayout2, true);
                            }
                        }
                    });
                    settingLayout.Y1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.12
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (SettingLayout.E0(settingLayout2, true)) {
                                return;
                            }
                            SettingLayout.J0(0, 1000, settingLayout2, true);
                        }
                    });
                    settingLayout.c2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.13
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            final SettingLayout settingLayout2 = SettingLayout.this;
                            MyPopupMenu myPopupMenu = settingLayout2.x2;
                            if (myPopupMenu == null) {
                                if (myPopupMenu != null) {
                                    settingLayout2.Z0 = null;
                                    myPopupMenu.a();
                                    settingLayout2.x2 = null;
                                }
                                if (view == null) {
                                    return;
                                }
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.move_up));
                                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.move_down));
                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingLayout2, settingLayout2.D1, view, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingLayout.23
                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final void a() {
                                        int i26 = SettingLayout.J2;
                                        SettingLayout settingLayout3 = SettingLayout.this;
                                        MyPopupMenu myPopupMenu3 = settingLayout3.x2;
                                        if (myPopupMenu3 != null) {
                                            settingLayout3.Z0 = null;
                                            myPopupMenu3.a();
                                            settingLayout3.x2 = null;
                                        }
                                    }

                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                    public final boolean b(View view2, int i26) {
                                        boolean z;
                                        int C;
                                        SettingLayout settingLayout3 = SettingLayout.this;
                                        if (settingLayout3.O1 != null) {
                                            if (i26 == 1) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            boolean z2 = !z;
                                            if (!SettingLayout.E0(settingLayout3, z2)) {
                                                if (z) {
                                                    C = settingLayout3.h2.C(1, 1);
                                                } else {
                                                    C = settingLayout3.O1.C(1, 1);
                                                }
                                                settingLayout3.a2.setVisibility(8);
                                                settingLayout3.U0();
                                                settingLayout3.a1(C, z2);
                                                return true;
                                            }
                                        }
                                        return true;
                                    }
                                });
                                settingLayout2.x2 = myPopupMenu2;
                                settingLayout2.Z0 = myPopupMenu2;
                            }
                        }
                    });
                    settingLayout.i2 = new LinearLayoutManager(0);
                    settingLayout.h2 = new MenuIconAdapter(settingLayout.g2, settingLayout.s2, 3, true, new MenuIconAdapter.MenuListener() { // from class: com.mycompany.app.setting.SettingLayout.14
                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void a(MenuIconAdapter.MenuHolder menuHolder) {
                            ItemTouchHelper itemTouchHelper2;
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (!settingLayout2.l2 && settingLayout2.h2 != null && (itemTouchHelper2 = settingLayout2.k2) != null) {
                                itemTouchHelper2.t(menuHolder);
                            }
                        }

                        @Override // com.mycompany.app.main.MenuIconAdapter.MenuListener
                        public final void b(View view, int i26, int i27) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (!settingLayout2.l2 && settingLayout2.h2 != null) {
                                SettingLayout.K0(settingLayout2, view, i26, i27, false);
                            }
                        }
                    });
                    MenuDragHelper menuDragHelper2 = new MenuDragHelper(new MenuDragHelper.MenuDragListener() { // from class: com.mycompany.app.setting.SettingLayout.15
                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void a(int i26) {
                            boolean z;
                            if (i26 == 2) {
                                z = true;
                            } else {
                                z = false;
                            }
                            SettingLayout.this.l2 = z;
                        }

                        @Override // com.mycompany.app.quick.MenuDragHelper.MenuDragListener
                        public final void b(int i26, int i27) {
                            MenuIconAdapter menuIconAdapter2 = SettingLayout.this.h2;
                            if (menuIconAdapter2 != null) {
                                menuIconAdapter2.F(i26, i27);
                            }
                        }
                    });
                    settingLayout.j2 = menuDragHelper2;
                    ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(menuDragHelper2);
                    settingLayout.k2 = itemTouchHelper2;
                    itemTouchHelper2.i(settingLayout.g2);
                    if (Build.VERSION.SDK_INT < 31) {
                        settingLayout.g2.setOverScrollMode(2);
                    }
                    settingLayout.g2.setLayoutManager(settingLayout.i2);
                    settingLayout.g2.setAdapter(settingLayout.h2);
                    settingLayout.n2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            MyButtonImage myButtonImage14 = settingLayout2.n2;
                            if (myButtonImage14 == null) {
                                return;
                            }
                            myButtonImage14.setNoti(false);
                            SettingLayout.I0(settingLayout2, 2);
                        }
                    });
                    settingLayout.o2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.17
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout.G0(SettingLayout.this, false);
                        }
                    });
                    settingLayout.p2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.18
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (SettingLayout.E0(settingLayout2, false)) {
                                return;
                            }
                            if (PrefRead.w) {
                                SettingLayout.H0(settingLayout2, false);
                            } else {
                                SettingLayout.D0(settingLayout2, false);
                            }
                        }
                    });
                    settingLayout.q2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.19
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingLayout settingLayout2 = SettingLayout.this;
                            if (SettingLayout.E0(settingLayout2, false)) {
                                return;
                            }
                            SettingLayout.J0(0, 1000, settingLayout2, false);
                        }
                    });
                    settingLayout.U0();
                    if (PrefRead.v) {
                        settingLayout.U1.setNoti(true);
                        settingLayout.n2.setNoti(true);
                        settingLayout.D1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.20
                            @Override // java.lang.Runnable
                            public final void run() {
                                Handler handler2;
                                if (PrefRead.v) {
                                    final SettingLayout settingLayout2 = SettingLayout.this;
                                    if (settingLayout2.H2 == null && settingLayout2.D1 != null && (handler2 = settingLayout2.O0) != null) {
                                        handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingLayout.24
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                if (PrefRead.v) {
                                                    final SettingLayout settingLayout3 = SettingLayout.this;
                                                    if (settingLayout3.H2 == null && settingLayout3.D1 != null) {
                                                        MyFadeFrame myFadeFrame = new MyFadeFrame(settingLayout3);
                                                        int i26 = MainApp.F1;
                                                        myFadeFrame.setPadding(i26, i26, i26, i26);
                                                        FrameLayout frameLayout4 = new FrameLayout(settingLayout3);
                                                        frameLayout4.setBackgroundResource(R.drawable.round_guide_8);
                                                        FrameLayout.LayoutParams layoutParams27 = new FrameLayout.LayoutParams(-1, -2);
                                                        layoutParams27.gravity = 8388691;
                                                        myFadeFrame.addView(frameLayout4, layoutParams27);
                                                        LinearLayout linearLayout = new LinearLayout(settingLayout3);
                                                        int i27 = MainApp.E1;
                                                        linearLayout.setPadding(i27, i27, i27, i27);
                                                        linearLayout.setOrientation(1);
                                                        FrameLayout.LayoutParams layoutParams28 = new FrameLayout.LayoutParams(-2, -2);
                                                        layoutParams28.gravity = 1;
                                                        frameLayout4.addView(linearLayout, layoutParams28);
                                                        AppCompatTextView appCompatTextView8 = new AppCompatTextView(settingLayout3, null);
                                                        appCompatTextView8.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView8.setTextSize(1, 16.0f);
                                                        appCompatTextView8.setTextColor(-1);
                                                        linearLayout.addView(appCompatTextView8, -2, -2);
                                                        AppCompatTextView appCompatTextView9 = new AppCompatTextView(settingLayout3, null);
                                                        appCompatTextView9.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView9.setTextSize(1, 16.0f);
                                                        appCompatTextView9.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams29 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams29.topMargin = MainApp.E1;
                                                        linearLayout.addView(appCompatTextView9, layoutParams29);
                                                        AppCompatTextView appCompatTextView10 = new AppCompatTextView(settingLayout3, null);
                                                        appCompatTextView10.setLineSpacing(MainApp.G1, 1.0f);
                                                        appCompatTextView10.setTextSize(1, 14.0f);
                                                        appCompatTextView10.setTextColor(-1);
                                                        LinearLayout.LayoutParams layoutParams30 = new LinearLayout.LayoutParams(-2, -2);
                                                        layoutParams30.topMargin = MainApp.E1 + MainApp.G1;
                                                        linearLayout.addView(appCompatTextView10, layoutParams30);
                                                        settingLayout3.H2 = myFadeFrame;
                                                        appCompatTextView8.setText(R.string.quick_guide_1);
                                                        appCompatTextView9.setText(R.string.icon_edit_guide);
                                                        appCompatTextView10.setText(R.string.bar_remove_info);
                                                        settingLayout3.H2.setListener(new MyFadeListener() { // from class: com.mycompany.app.setting.SettingLayout.25
                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void a(boolean z) {
                                                                SettingLayout settingLayout4;
                                                                MyFadeFrame myFadeFrame2;
                                                                if (!z && (myFadeFrame2 = (settingLayout4 = SettingLayout.this).H2) != null && settingLayout4.D1 != null) {
                                                                    myFadeFrame2.f();
                                                                    settingLayout4.D1.removeView(settingLayout4.H2);
                                                                    settingLayout4.H2 = null;
                                                                }
                                                            }

                                                            @Override // com.mycompany.app.view.MyFadeListener
                                                            public final void b(boolean z, boolean z2) {
                                                            }
                                                        });
                                                        settingLayout3.H2.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.setting.SettingLayout.26
                                                            @Override // android.view.View.OnTouchListener
                                                            public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                                boolean z = PrefRead.v;
                                                                SettingLayout settingLayout4 = SettingLayout.this;
                                                                if (z) {
                                                                    PrefRead.v = false;
                                                                    PrefSet.d(8, settingLayout4.f1, "mGuideLayout", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingLayout4.H2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                                return false;
                                                            }
                                                        });
                                                        frameLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingLayout.27
                                                            @Override // android.view.View.OnClickListener
                                                            public final void onClick(View view) {
                                                                boolean z = PrefRead.v;
                                                                SettingLayout settingLayout4 = SettingLayout.this;
                                                                if (z) {
                                                                    PrefRead.v = false;
                                                                    PrefSet.d(8, settingLayout4.f1, "mGuideLayout", false);
                                                                }
                                                                MyFadeFrame myFadeFrame2 = settingLayout4.H2;
                                                                if (myFadeFrame2 != null) {
                                                                    myFadeFrame2.d(true);
                                                                }
                                                            }
                                                        });
                                                        settingLayout3.D1.addView(settingLayout3.H2, -1, -1);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                int i28 = SettingLayout.J2;
                                            }
                                        });
                                        return;
                                    }
                                    return;
                                }
                                int i26 = SettingLayout.J2;
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
        MyButtonImage myButtonImage = this.E1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.E1 = null;
        }
        MyButtonImage myButtonImage2 = this.G1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.G1 = null;
        }
        MyButtonImage myButtonImage3 = this.H1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.H1 = null;
        }
        MyButtonImage myButtonImage4 = this.I1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.I1 = null;
        }
        MyButtonRelative myButtonRelative = this.K1;
        if (myButtonRelative != null) {
            myButtonRelative.f();
            this.K1 = null;
        }
        MyRecyclerView myRecyclerView = this.N1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.N1 = null;
        }
        MenuIconAdapter menuIconAdapter = this.O1;
        if (menuIconAdapter != null) {
            menuIconAdapter.D();
            this.O1 = null;
        }
        MenuDragHelper menuDragHelper = this.Q1;
        if (menuDragHelper != null) {
            menuDragHelper.d = null;
            this.Q1 = null;
        }
        MyButtonImage myButtonImage5 = this.U1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.U1 = null;
        }
        MyButtonImage myButtonImage6 = this.V1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.V1 = null;
        }
        MyButtonImage myButtonImage7 = this.W1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.W1 = null;
        }
        MyButtonImage myButtonImage8 = this.X1;
        if (myButtonImage8 != null) {
            myButtonImage8.j();
            this.X1 = null;
        }
        MyButtonImage myButtonImage9 = this.Y1;
        if (myButtonImage9 != null) {
            myButtonImage9.j();
            this.Y1 = null;
        }
        MyButtonRelative myButtonRelative2 = this.c2;
        if (myButtonRelative2 != null) {
            myButtonRelative2.f();
            this.c2 = null;
        }
        MyIconView myIconView = this.d2;
        if (myIconView != null) {
            myIconView.m();
            this.d2 = null;
        }
        MyRoundView myRoundView = this.f2;
        if (myRoundView != null) {
            myRoundView.a();
            this.f2 = null;
        }
        MyRecyclerView myRecyclerView2 = this.g2;
        if (myRecyclerView2 != null) {
            myRecyclerView2.s0();
            this.g2 = null;
        }
        MenuIconAdapter menuIconAdapter2 = this.h2;
        if (menuIconAdapter2 != null) {
            menuIconAdapter2.D();
            this.h2 = null;
        }
        MenuDragHelper menuDragHelper2 = this.j2;
        if (menuDragHelper2 != null) {
            menuDragHelper2.d = null;
            this.j2 = null;
        }
        MyButtonImage myButtonImage10 = this.n2;
        if (myButtonImage10 != null) {
            myButtonImage10.j();
            this.n2 = null;
        }
        MyButtonImage myButtonImage11 = this.o2;
        if (myButtonImage11 != null) {
            myButtonImage11.j();
            this.o2 = null;
        }
        MyButtonImage myButtonImage12 = this.p2;
        if (myButtonImage12 != null) {
            myButtonImage12.j();
            this.p2 = null;
        }
        MyButtonImage myButtonImage13 = this.q2;
        if (myButtonImage13 != null) {
            myButtonImage13.j();
            this.q2 = null;
        }
        MyFadeFrame myFadeFrame = this.H2;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.H2 = null;
        }
        this.D1 = null;
        this.F1 = null;
        this.J1 = null;
        this.L1 = null;
        this.M1 = null;
        this.P1 = null;
        this.R1 = null;
        this.r2 = null;
        this.T1 = null;
        this.Z1 = null;
        this.a2 = null;
        this.b2 = null;
        this.e2 = null;
        this.i2 = null;
        this.k2 = null;
        this.m2 = null;
        this.s2 = null;
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            M0();
            L0();
            N0();
            P0();
            DialogSetBar dialogSetBar = this.C2;
            if (dialogSetBar != null) {
                dialogSetBar.dismiss();
                this.C2 = null;
            }
            O0();
            MyPopupMenu myPopupMenu = this.v2;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.v2 = null;
            }
            MyPopupMenu myPopupMenu2 = this.w2;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.w2 = null;
            }
            MyPopupMenu myPopupMenu3 = this.x2;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.x2 = null;
            }
        }
    }
}
