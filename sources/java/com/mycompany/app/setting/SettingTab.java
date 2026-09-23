package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetItem;
import com.mycompany.app.dialog.DialogSetOpen;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogSetTabDetail;
import com.mycompany.app.dialog.DialogSetTabPos;
import com.mycompany.app.dialog.DialogSetTabRestore;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingTab extends SettingActivity {
    public static final /* synthetic */ int g2 = 0;
    public MyPopupMenu X1;
    public MyPopupMenu Y1;
    public MyPopupMenu Z1;
    public DialogSetTabRestore a2;
    public DialogSetOpen b2;
    public DialogSetTabPos c2;
    public DialogSetTabDetail d2;
    public DialogSetItem e2;
    public int f2;

    public static void O0(SettingTab settingTab, int i, int i2) {
        if (i2 >= 0 && i2 < 74) {
            DialogSetItem dialogSetItem = settingTab.e2;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                settingTab.e2 = null;
            }
            if (i == 6) {
                if (PrefWeb.C != i2) {
                    PrefWeb.C = i2;
                    PrefSet.f(settingTab.f1, 14, i2, "mTabSwipeUp3");
                } else {
                    return;
                }
            } else if (PrefWeb.D != i2) {
                PrefWeb.D = i2;
                PrefSet.f(settingTab.f1, 14, i2, "mTabSwipeDn3");
            } else {
                return;
            }
            SettingListAdapter settingListAdapter = settingTab.N1;
            if (settingListAdapter != null) {
                settingListAdapter.F(i, MainUtil.n2(i2));
            }
        }
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefTts.D) {
            PrefTts.D = false;
            PrefSet.j(context, 12, "mTabLast");
            z = true;
        } else {
            z = false;
        }
        if (PrefTts.v) {
            PrefTts.v = false;
            PrefSet.j(context, 12, "mAutoGroup");
            z = true;
        }
        if (PrefWeb.x != 0) {
            PrefWeb.x = 0;
            PrefSet.j(context, 14, "mTabBar2");
            z = true;
        }
        if (!PrefWeb.y) {
            PrefWeb.y = true;
            PrefSet.j(context, 14, "mTabAccent");
        }
        if (PrefWeb.z != 5) {
            PrefWeb.z = 5;
            PrefSet.j(context, 14, "mTabColor");
        }
        if (PrefPdf.C != 3 || !PrefPdf.D || PrefPdf.E != MainApp.Z0 || PrefPdf.F != MainApp.a1) {
            PrefPdf.C = 3;
            PrefPdf.D = true;
            PrefPdf.E = MainApp.Z0;
            PrefPdf.F = MainApp.a1;
            PrefPdf r = PrefPdf.r(context, false);
            r.q("mTabAdd");
            r.q("mTabClose");
            r.q("mTabWidth");
            r.q("mTabHeight");
            r.c();
        }
        if (PrefEditor.E != 0 || PrefEditor.F != i || Float.compare(PrefEditor.G, f) != 0) {
            PrefEditor.E = 0;
            PrefEditor.F = i;
            PrefEditor.G = f;
            PrefEditor.H = PrefEditor.r(i, 0);
            PrefEditor s = PrefEditor.s(context);
            s.q("mGridAlpha");
            s.q("mGridColor");
            s.q("mGridPos");
            s.c();
        }
        if (PrefWeb.C != 30) {
            PrefWeb.C = 30;
            PrefSet.j(context, 14, "mTabSwipeUp3");
            z = true;
        }
        if (PrefWeb.D != 38) {
            PrefWeb.D = 38;
            PrefSet.j(context, 14, "mTabSwipeDn3");
            z = true;
        }
        if (PrefZtwo.r) {
            PrefZtwo.r = false;
            PrefSet.j(context, 16, "mTabIndi");
            z = true;
        }
        if (!PrefZtwo.s) {
            PrefZtwo.s = true;
            PrefSet.j(context, 16, "mTabLoop");
            z = true;
        }
        if (!PrefWeb.A) {
            PrefWeb.A = true;
            PrefSet.j(context, 14, "mTabRestore");
            z = true;
        }
        if (!PrefAlbum.O) {
            PrefAlbum.O = true;
            PrefSet.j(context, 0, "mTabAnim");
            z = true;
        }
        if (PrefZtwo.C != 0) {
            PrefZtwo.C = 0;
            PrefSet.j(context, 16, "mTabOpen2");
            z = true;
        }
        if (PrefWeb.B) {
            PrefWeb.B = false;
            PrefSet.j(context, 14, "mTabKeypad");
            z = true;
        }
        if (PrefZone.j) {
            PrefZone.j = false;
            PrefSet.j(context, 15, "mHomeClose");
            z = true;
        }
        if (PrefMain.n) {
            PrefMain.n = false;
            PrefSet.j(context, 5, "mLastNoti");
            z = true;
        }
        if (!PrefZtri.n0) {
            PrefZtri.n0 = true;
            PrefSet.j(context, 17, "mLastSwipe");
            z = true;
        }
        if (PrefTts.E) {
            PrefTts.E = false;
            PrefSet.j(context, 12, "mLastExit");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        if (PrefTts.D) {
            i = R.string.tab_add_last;
        } else {
            i = R.string.tab_add_next;
        }
        int i3 = i;
        if (PrefTts.E) {
            i2 = R.string.app_exit;
        } else {
            i2 = R.string.delete_tab;
        }
        int i4 = i2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.tab_add_pos, i3, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.auto_group, R.string.auto_group_info, 2, PrefTts.v, true));
        arrayList.add(new SettingListAdapter.SettingItem(3, false));
        arrayList.add(new SettingListAdapter.SettingItem(4, R.string.show_tab_bar, DialogSetTabPos.D0[PrefWeb.x], 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.detail_setting, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.tab_swipe_up, MainUtil.n2(PrefWeb.C), 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.tab_swipe_dn, MainUtil.n2(PrefWeb.D), 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        arrayList.add(new SettingListAdapter.SettingItem(9, R.string.tab_indicator, R.string.tab_indi_info, 1, PrefZtwo.r, true));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.tab_loop, R.string.tab_loop_info, 0, PrefZtwo.s, true));
        arrayList.add(new SettingListAdapter.SettingItem(11, R.string.use_tab_anim, 0, 2, PrefAlbum.O, true));
        arrayList.add(new SettingListAdapter.SettingItem(12, false));
        arrayList.add(new SettingListAdapter.SettingItem(13, R.string.undelete, R0(), 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(14, R.string.open_new_tab, Q0(), 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(15, R.string.tab_keyboard, 0, 0, PrefWeb.B, true));
        arrayList.add(new SettingListAdapter.SettingItem(16, R.string.home_close, 0, 2, PrefZone.j, true));
        arrayList.add(new SettingListAdapter.SettingItem(17, false));
        arrayList.add(new SettingListAdapter.SettingItem(18, R.string.last_noti, R.string.last_noti_info, 1, PrefMain.n, true));
        arrayList.add(new SettingListAdapter.SettingItem(19, R.string.last_swipe, 0, 0, PrefZtri.n0, true));
        a.u(arrayList, new SettingListAdapter.SettingItem(20, R.string.last_exit, i4, 0, 2), 21, false);
        return arrayList;
    }

    public final String Q0() {
        StringBuilder sb;
        int i = PrefZtwo.C;
        if (i == 0) {
            return null;
        }
        if (i == 62) {
            return getString(R.string.link) + ", " + getString(R.string.search_url) + ", " + getString(R.string.quick_access) + ", " + getString(R.string.bookmark) + ", " + getString(R.string.history);
        }
        if ((i & 2) == 2) {
            sb = new StringBuilder();
            sb.append(getString(R.string.link));
        } else {
            sb = null;
        }
        if ((PrefZtwo.C & 4) == 4) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.search_url));
        }
        if ((PrefZtwo.C & 8) == 8) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.quick_access));
        }
        if ((PrefZtwo.C & 16) == 16) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.bookmark));
        }
        if ((PrefZtwo.C & 32) == 32) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.history));
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    public final String R0() {
        boolean z = PrefWeb.A;
        if (z && PrefZone.F) {
            return getString(R.string.web_page) + ", " + getString(R.string.tab_list);
        }
        if (z) {
            return getString(R.string.web_page);
        }
        if (PrefZone.F) {
            return getString(R.string.tab_list);
        }
        return null;
    }

    public final boolean S0() {
        if (this.a2 != null || this.b2 != null || this.c2 != null || this.d2 != null || this.e2 != null) {
            return true;
        }
        return false;
    }

    public final void T0(SettingListAdapter.ViewHolder viewHolder, final int i) {
        MyPopupMenu myPopupMenu = this.Z1;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.do_change));
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.not_used));
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTab.7
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int i2 = SettingTab.g2;
                        SettingTab settingTab = SettingTab.this;
                        MyPopupMenu myPopupMenu3 = settingTab.Z1;
                        if (myPopupMenu3 != null) {
                            settingTab.Z0 = null;
                            myPopupMenu3.a();
                            settingTab.Z1 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view, int i2) {
                        int i3;
                        final int i4 = i;
                        final SettingTab settingTab = SettingTab.this;
                        if (i2 == 0) {
                            int i5 = SettingTab.g2;
                            if (!settingTab.S0()) {
                                DialogSetItem dialogSetItem = settingTab.e2;
                                if (dialogSetItem != null) {
                                    dialogSetItem.dismiss();
                                    settingTab.e2 = null;
                                }
                                if (i4 == 6) {
                                    i3 = PrefWeb.C;
                                } else {
                                    i3 = PrefWeb.D;
                                }
                                DialogSetItem dialogSetItem2 = new DialogSetItem(settingTab, i3, null, null, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingTab.14
                                    @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                    public final void a(int i6) {
                                        SettingTab.O0(SettingTab.this, i4, i6);
                                    }
                                });
                                settingTab.e2 = dialogSetItem2;
                                dialogSetItem2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTab.15
                                    @Override // android.content.DialogInterface.OnDismissListener
                                    public final void onDismiss(DialogInterface dialogInterface) {
                                        int i6 = SettingTab.g2;
                                        SettingTab settingTab2 = SettingTab.this;
                                        DialogSetItem dialogSetItem3 = settingTab2.e2;
                                        if (dialogSetItem3 != null) {
                                            dialogSetItem3.dismiss();
                                            settingTab2.e2 = null;
                                        }
                                    }
                                });
                                return true;
                            }
                            return true;
                        }
                        SettingTab.O0(settingTab, i4, 0);
                        return true;
                    }
                });
                this.Z1 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        DialogSetTabPos dialogSetTabPos = this.c2;
        if (dialogSetTabPos != null) {
            boolean h0 = h0();
            if (dialogSetTabPos.e0 != null) {
                if (h0) {
                    h0 = dialogSetTabPos.q();
                }
                FrameLayout frameLayout = dialogSetTabPos.e0;
                if (h0) {
                    i = 8;
                } else {
                    i = 0;
                }
                frameLayout.setVisibility(i);
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        F0(R.string.tab_item, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTab.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingTab.g2;
                final SettingTab settingTab = SettingTab.this;
                if (settingTab.O0 != null) {
                    settingTab.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingTab.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingTab settingTab2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingTab2 = SettingTab.this).N1) != null) {
                                settingListAdapter.E(settingTab2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingTab.P0(SettingTab.this.f1);
                        }
                    });
                    Handler handler2 = settingTab.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTab.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingTab.g2;
                            final SettingTab settingTab2 = SettingTab.this;
                            if (settingTab2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingTab2.D0(), false, settingTab2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingTab.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingTab.g2;
                                    final SettingTab settingTab3 = SettingTab.this;
                                    switch (i3) {
                                        case 1:
                                            MyPopupMenu myPopupMenu = settingTab3.X1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingTab3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingTab3.X1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.tab_add_next, !PrefTts.D));
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.tab_add_last, PrefTts.D));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingTab3, settingTab3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTab.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i6 = SettingTab.g2;
                                                            SettingTab settingTab4 = SettingTab.this;
                                                            MyPopupMenu myPopupMenu3 = settingTab4.X1;
                                                            if (myPopupMenu3 != null) {
                                                                settingTab4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingTab4.X1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            boolean z2;
                                                            int i7;
                                                            if (i6 == 1) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            if (PrefTts.D != z2) {
                                                                PrefTts.D = z2;
                                                                SettingTab settingTab4 = SettingTab.this;
                                                                PrefSet.d(12, settingTab4.f1, "mTabLast", z2);
                                                                SettingListAdapter settingListAdapter2 = settingTab4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    if (PrefTts.D) {
                                                                        i7 = R.string.tab_add_last;
                                                                    } else {
                                                                        i7 = R.string.tab_add_next;
                                                                    }
                                                                    settingListAdapter2.F(1, i7);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingTab3.X1 = myPopupMenu2;
                                                    settingTab3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 2:
                                            PrefTts.v = z;
                                            PrefSet.d(12, settingTab3.f1, "mAutoGroup", z);
                                            return;
                                        case 3:
                                        case 8:
                                        case 12:
                                        case 17:
                                        default:
                                            return;
                                        case 4:
                                            if (!settingTab3.S0()) {
                                                DialogSetTabPos dialogSetTabPos = settingTab3.c2;
                                                if (dialogSetTabPos != null) {
                                                    dialogSetTabPos.dismiss();
                                                    settingTab3.c2 = null;
                                                }
                                                DialogSetTabPos dialogSetTabPos2 = new DialogSetTabPos(settingTab3, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingTab.11
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        SettingListAdapter settingListAdapter2 = SettingTab.this.N1;
                                                        if (settingListAdapter2 != null) {
                                                            settingListAdapter2.D(new SettingListAdapter.SettingItem(4, R.string.show_tab_bar, DialogSetTabPos.D0[PrefWeb.x], 0, 1));
                                                        }
                                                    }
                                                });
                                                settingTab3.c2 = dialogSetTabPos2;
                                                dialogSetTabPos2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTab.12
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingTab.g2;
                                                        SettingTab settingTab4 = SettingTab.this;
                                                        DialogSetTabPos dialogSetTabPos3 = settingTab4.c2;
                                                        if (dialogSetTabPos3 != null) {
                                                            dialogSetTabPos3.dismiss();
                                                            settingTab4.c2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 5:
                                            if (!settingTab3.S0()) {
                                                DialogSetTabDetail dialogSetTabDetail = settingTab3.d2;
                                                if (dialogSetTabDetail != null) {
                                                    dialogSetTabDetail.dismiss();
                                                    settingTab3.d2 = null;
                                                }
                                                DialogSetTabDetail dialogSetTabDetail2 = new DialogSetTabDetail(settingTab3);
                                                settingTab3.d2 = dialogSetTabDetail2;
                                                dialogSetTabDetail2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTab.13
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingTab.g2;
                                                        SettingTab settingTab4 = SettingTab.this;
                                                        DialogSetTabDetail dialogSetTabDetail3 = settingTab4.d2;
                                                        if (dialogSetTabDetail3 != null) {
                                                            dialogSetTabDetail3.dismiss();
                                                            settingTab4.d2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 6:
                                            settingTab3.T0(viewHolder, i3);
                                            return;
                                        case 7:
                                            settingTab3.T0(viewHolder, i3);
                                            return;
                                        case 9:
                                            PrefZtwo.r = z;
                                            PrefSet.d(16, settingTab3.f1, "mTabIndi", z);
                                            return;
                                        case 10:
                                            PrefZtwo.s = z;
                                            PrefSet.d(16, settingTab3.f1, "mTabLoop", z);
                                            return;
                                        case 11:
                                            PrefAlbum.O = z;
                                            PrefSet.d(0, settingTab3.f1, "mTabAnim", z);
                                            return;
                                        case 13:
                                            if (!settingTab3.S0()) {
                                                DialogSetTabRestore dialogSetTabRestore = settingTab3.a2;
                                                if (dialogSetTabRestore != null) {
                                                    dialogSetTabRestore.dismiss();
                                                    settingTab3.a2 = null;
                                                }
                                                DialogSetTabRestore dialogSetTabRestore2 = new DialogSetTabRestore(settingTab3, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingTab.8
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        SettingTab settingTab4 = SettingTab.this;
                                                        SettingListAdapter settingListAdapter2 = settingTab4.N1;
                                                        if (settingListAdapter2 != null) {
                                                            int i6 = SettingTab.g2;
                                                            settingListAdapter2.G(13, settingTab4.R0());
                                                        }
                                                    }
                                                });
                                                settingTab3.a2 = dialogSetTabRestore2;
                                                dialogSetTabRestore2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTab.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingTab.g2;
                                                        SettingTab settingTab4 = SettingTab.this;
                                                        DialogSetTabRestore dialogSetTabRestore3 = settingTab4.a2;
                                                        if (dialogSetTabRestore3 != null) {
                                                            dialogSetTabRestore3.dismiss();
                                                            settingTab4.a2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 14:
                                            if (!settingTab3.S0()) {
                                                DialogSetOpen dialogSetOpen = settingTab3.b2;
                                                if (dialogSetOpen != null) {
                                                    dialogSetOpen.dismiss();
                                                    settingTab3.b2 = null;
                                                }
                                                settingTab3.f2 = PrefZtwo.C;
                                                DialogSetOpen dialogSetOpen2 = new DialogSetOpen(settingTab3);
                                                settingTab3.b2 = dialogSetOpen2;
                                                dialogSetOpen2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTab.10
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        SettingListAdapter settingListAdapter2;
                                                        SettingTab settingTab4 = SettingTab.this;
                                                        if (settingTab4.f2 != PrefZtwo.C && (settingListAdapter2 = settingTab4.N1) != null) {
                                                            settingListAdapter2.G(14, settingTab4.Q0());
                                                        }
                                                        DialogSetOpen dialogSetOpen3 = settingTab4.b2;
                                                        if (dialogSetOpen3 != null) {
                                                            dialogSetOpen3.dismiss();
                                                            settingTab4.b2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 15:
                                            PrefWeb.B = z;
                                            PrefSet.d(14, settingTab3.f1, "mTabKeypad", z);
                                            return;
                                        case 16:
                                            PrefZone.j = z;
                                            PrefSet.d(15, settingTab3.f1, "mHomeClose", z);
                                            return;
                                        case 18:
                                            PrefMain.n = z;
                                            PrefSet.d(5, settingTab3.f1, "mLastNoti", z);
                                            return;
                                        case 19:
                                            PrefZtri.n0 = z;
                                            PrefSet.d(17, settingTab3.f1, "mLastSwipe", z);
                                            return;
                                        case 20:
                                            MyPopupMenu myPopupMenu3 = settingTab3.Y1;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingTab3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingTab3.Y1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.delete_tab, !PrefTts.E));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.app_exit, PrefTts.E));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingTab3, settingTab3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTab.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i6 = SettingTab.g2;
                                                            SettingTab settingTab4 = SettingTab.this;
                                                            MyPopupMenu myPopupMenu5 = settingTab4.Y1;
                                                            if (myPopupMenu5 != null) {
                                                                settingTab4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingTab4.Y1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i6) {
                                                            boolean z2;
                                                            int i7;
                                                            if (i6 == 1) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            if (PrefTts.E != z2) {
                                                                PrefTts.E = z2;
                                                                SettingTab settingTab4 = SettingTab.this;
                                                                PrefSet.d(12, settingTab4.f1, "mLastExit", z2);
                                                                SettingListAdapter settingListAdapter2 = settingTab4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    if (PrefTts.E) {
                                                                        i7 = R.string.app_exit;
                                                                    } else {
                                                                        i7 = R.string.delete_tab;
                                                                    }
                                                                    settingListAdapter2.F(20, i7);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingTab3.Y1 = myPopupMenu4;
                                                    settingTab3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                    }
                                }
                            });
                            settingTab2.N1 = settingListAdapter;
                            settingTab2.L1.setAdapter(settingListAdapter);
                            settingTab2.M0();
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
            DialogSetTabRestore dialogSetTabRestore = this.a2;
            if (dialogSetTabRestore != null) {
                dialogSetTabRestore.dismiss();
                this.a2 = null;
            }
            DialogSetOpen dialogSetOpen = this.b2;
            if (dialogSetOpen != null) {
                dialogSetOpen.dismiss();
                this.b2 = null;
            }
            DialogSetTabPos dialogSetTabPos = this.c2;
            if (dialogSetTabPos != null) {
                dialogSetTabPos.dismiss();
                this.c2 = null;
            }
            DialogSetTabDetail dialogSetTabDetail = this.d2;
            if (dialogSetTabDetail != null) {
                dialogSetTabDetail.dismiss();
                this.d2 = null;
            }
            DialogSetItem dialogSetItem = this.e2;
            if (dialogSetItem != null) {
                dialogSetItem.dismiss();
                this.e2 = null;
            }
            MyPopupMenu myPopupMenu = this.X1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.X1 = null;
            }
            MyPopupMenu myPopupMenu2 = this.Y1;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.Y1 = null;
            }
            MyPopupMenu myPopupMenu3 = this.Z1;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.Z1 = null;
            }
        }
    }
}
