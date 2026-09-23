package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditUp;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetAddr;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogSetSuggest;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyMoveFrame;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingCustom extends SettingActivity {
    public static final int[] h2 = {R.string.domain_name, R.string.url, R.string.title};
    public String X1;
    public MyPopupMenu Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogSetFull b2;
    public DialogSetSuggest c2;
    public DialogSetAddr d2;
    public DialogSeekSimple e2;
    public DialogEditIcon f2;
    public DialogEditUp g2;

    public static boolean O0(Context context) {
        boolean z;
        int i;
        int i2;
        if (context == null) {
            return false;
        }
        int i3 = MainConst.q[5];
        float f = MainConst.p[5];
        boolean z2 = true;
        if (!PrefWeb.t || !PrefWeb.u || PrefWeb.v || PrefWeb.w) {
            PrefWeb.t = true;
            PrefWeb.u = true;
            PrefWeb.v = false;
            PrefWeb.w = false;
            PrefWeb r = PrefWeb.r(context, false);
            r.q("mShowStatus");
            r.q("mShowNavi");
            r.q("mFixTop");
            r.q("mFixBot");
            r.c();
        }
        if (PrefTts.F != 0 || PrefTts.G != 0) {
            PrefTts.F = 0;
            PrefTts.G = 0;
            PrefTts r2 = PrefTts.r(context, false);
            r2.q("mWebLand1");
            r2.q("mWebLand2");
            r2.c();
        }
        if (PrefPdf.H != 0) {
            PrefPdf.H = 0;
            PrefSet.j(context, 7, "mAddrType2");
            z = true;
        } else {
            z = false;
        }
        if (!MainUtil.q5(PrefMain.H, "0,1,2")) {
            PrefMain.H = "0,1,2";
            PrefSet.j(context, 5, "mAddrItems2");
        }
        if (MainUtil.f5()) {
            i = 1;
        } else {
            i = 2;
        }
        if (PrefWeb.V != i || PrefWeb.W != 14) {
            PrefWeb.V = i;
            PrefWeb.W = 14;
            PrefWeb r3 = PrefWeb.r(context, false);
            r3.q("mSugEng");
            r3.q("mSugType3");
            r3.c();
            z = true;
        }
        if (!PrefZtwo.B) {
            PrefZtwo.B = true;
            PrefSet.j(context, 16, "mAutoComp");
            z = true;
        }
        if (PrefZtwo.Z != 20) {
            PrefZtwo.Z = 20;
            PrefSet.j(context, 16, "mRecentLimit");
            DataBookRecent.a(context).b = true;
            z = true;
        }
        if (PrefZtwo.a0) {
            PrefZtwo.a0 = false;
            PrefSet.j(context, 16, "mRecentSecret");
            if (PrefSync.k) {
                DataBookRecent.a(context).b = true;
            }
            z = true;
        }
        if (PrefZtri.H) {
            PrefZtri.H = false;
            PrefSet.j(context, 17, "mHandIcon");
            z = true;
        }
        if (PrefEditor.O != 0 || PrefEditor.P != i3 || Float.compare(PrefEditor.Q, f) != 0) {
            PrefEditor.O = 0;
            PrefEditor.P = i3;
            PrefEditor.Q = f;
            PrefEditor.R = PrefEditor.r(i3, 0);
            PrefEditor s = PrefEditor.s(context);
            s.q("mHandAlpha");
            s.q("mHandColor");
            s.q("mHandPos");
            s.c();
            z = true;
        }
        if (PrefTts.J != 60) {
            PrefTts.J = 60;
            PrefSet.j(context, 12, "mHandTop2");
        }
        if (!PrefZone.z) {
            PrefZone.z = true;
            PrefSet.j(context, 15, "mPullRefresh");
            z = true;
        }
        if (PrefZone.y != 2) {
            PrefZone.y = 2;
            PrefSet.j(context, 15, "mShowUpPos");
        }
        if (PrefEditor.J != 25) {
            PrefEditor.J = 25;
            PrefSet.j(context, 1, "mUpAlpha");
        }
        if (MainUtil.O5(context)) {
            i2 = 1;
        } else {
            i2 = 3;
        }
        if (PrefZone.x != i2) {
            PrefZone.x = i2;
            PrefSet.j(context, 15, "mScrollPos");
            z = true;
        }
        if (PrefZone.B) {
            PrefZone.B = false;
            PrefSet.j(context, 15, "mVolScroll");
            z = true;
        }
        if (PrefZtwo.D) {
            PrefZtwo.D = false;
            PrefSet.j(context, 16, "mScrollAnim");
        } else {
            z2 = z;
        }
        SettingFloat.P0(context);
        return z2;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        boolean z;
        if (PrefZtwo.Z == 0) {
            z = true;
        } else {
            z = false;
        }
        int r = PrefEditor.r(PrefEditor.P, PrefEditor.O);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.full_tool, 0, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.land_mode, 0, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.float_button, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.address_label, h2[PrefPdf.H], 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.address_icon, (String) null, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.search_suggest, Q0(), 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.auto_comp, 0, 2, PrefZtwo.B, true));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.recent_search, P0(PrefZtwo.Z), 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(11, R.string.recent_secret, 0, PrefZtwo.a0, z, z, 2));
        arrayList.add(new SettingListAdapter.SettingItem(12, false));
        arrayList.add(new SettingListAdapter.SettingItem(13, R.string.onehand_icon, R.string.drag_move_guide, 1, PrefZtri.H, true));
        arrayList.add(new SettingListAdapter.SettingItem(14, R.string.icon_color, r, 0, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(15, R.string.onehand_area, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(16, false));
        arrayList.add(new SettingListAdapter.SettingItem(17, R.string.pull_refresh, 0, 1, PrefZone.z, true));
        arrayList.add(new SettingListAdapter.SettingItem(18, R.string.show_up, (String) null, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(19, R.string.show_scroll, MainConst.N[PrefZone.x], 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(20, R.string.vol_scroll, 0, 0, PrefZone.B, true));
        a.u(arrayList, new SettingListAdapter.SettingItem(21, R.string.use_scroll_anim, 0, 2, PrefZtwo.D, true), 22, false);
        return arrayList;
    }

    public final String P0(int i) {
        if (i < 0) {
            return getString(R.string.history_none);
        }
        if (i == 0) {
            return getString(R.string.history_zero);
        }
        return android.support.v4.media.a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final String Q0() {
        StringBuilder sb;
        int i = PrefWeb.V;
        if (i == 0 && PrefWeb.W == 0) {
            return null;
        }
        if (i == 1) {
            sb = new StringBuilder();
            sb.append(getString(R.string.duckduckgo));
        } else if (i == 2) {
            sb = new StringBuilder();
            sb.append(getString(R.string.google));
        } else {
            sb = null;
        }
        if ((PrefWeb.W & 2) == 2) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.recent_search));
        }
        if ((PrefWeb.W & 4) == 4) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.history));
        }
        if ((PrefWeb.W & 8) == 8) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.bookmark));
        }
        if ((PrefWeb.W & 16) == 16) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(getString(R.string.quick_access));
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    public final boolean R0() {
        if (this.b2 != null || this.c2 != null || this.d2 != null || this.e2 != null || this.f2 != null || this.g2 != null) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        int i;
        super.onConfigurationChanged(configuration);
        DialogSetFull dialogSetFull = this.b2;
        if (dialogSetFull != null) {
            dialogSetFull.B(h0());
            return;
        }
        DialogEditUp dialogEditUp = this.g2;
        if (dialogEditUp != null) {
            boolean h0 = h0();
            if (dialogEditUp.e0 != null) {
                if (h0) {
                    h0 = dialogEditUp.q();
                }
                MyMoveFrame myMoveFrame = dialogEditUp.e0;
                if (h0) {
                    i = 8;
                } else {
                    i = 0;
                }
                myMoveFrame.setVisibility(i);
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getStringExtra("EXTRA_PATH");
        F0(R.string.composition, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingCustom.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingCustom.h2;
                final SettingCustom settingCustom = SettingCustom.this;
                if (settingCustom.O0 != null) {
                    settingCustom.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingCustom.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingCustom settingCustom2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingCustom2 = SettingCustom.this).N1) != null) {
                                settingListAdapter.E(settingCustom2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingCustom.O0(SettingCustom.this.f1);
                        }
                    });
                    Handler handler2 = settingCustom.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingCustom.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingCustom.h2;
                            final SettingCustom settingCustom2 = SettingCustom.this;
                            if (settingCustom2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingCustom2.D0(), false, settingCustom2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingCustom.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i2) {
                                    boolean z2;
                                    boolean z3;
                                    int[] iArr3 = SettingCustom.h2;
                                    final SettingCustom settingCustom3 = SettingCustom.this;
                                    switch (i) {
                                        case 1:
                                            if (settingCustom3.R0()) {
                                                return;
                                            }
                                            DialogSetFull dialogSetFull = settingCustom3.b2;
                                            if (dialogSetFull != null) {
                                                dialogSetFull.dismiss();
                                                settingCustom3.b2 = null;
                                            }
                                            DialogSetFull dialogSetFull2 = new DialogSetFull(settingCustom3, null);
                                            settingCustom3.b2 = dialogSetFull2;
                                            dialogSetFull2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.8
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int[] iArr4 = SettingCustom.h2;
                                                    SettingCustom settingCustom4 = SettingCustom.this;
                                                    DialogSetFull dialogSetFull3 = settingCustom4.b2;
                                                    if (dialogSetFull3 != null) {
                                                        dialogSetFull3.dismiss();
                                                        settingCustom4.b2 = null;
                                                    }
                                                }
                                            });
                                            return;
                                        case 2:
                                            Intent intent = new Intent(settingCustom3.f1, (Class<?>) SettingLand.class);
                                            intent.putExtra("EXTRA_PATH", settingCustom3.X1);
                                            settingCustom3.startActivity(intent);
                                            return;
                                        case 3:
                                            settingCustom3.startActivity(new Intent(settingCustom3.f1, (Class<?>) SettingFloat.class));
                                            return;
                                        case 4:
                                        case 9:
                                        case 12:
                                        case 16:
                                        default:
                                            return;
                                        case 5:
                                            MyPopupMenu myPopupMenu = settingCustom3.Y1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingCustom3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingCustom3.Y1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList = new ArrayList();
                                                    for (int i3 = 0; i3 < 3; i3++) {
                                                        int i4 = SettingCustom.h2[i3];
                                                        if (PrefPdf.H == i3) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        arrayList.add(new MyPopupAdapter.PopMenuItem(i3, i4, z2));
                                                    }
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingCustom3, settingCustom3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingCustom.5
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingCustom.h2;
                                                            SettingCustom settingCustom4 = SettingCustom.this;
                                                            MyPopupMenu myPopupMenu3 = settingCustom4.Y1;
                                                            if (myPopupMenu3 != null) {
                                                                settingCustom4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingCustom4.Y1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i5) {
                                                            int i6 = i5 % 3;
                                                            if (PrefPdf.H != i6) {
                                                                PrefPdf.H = i6;
                                                                SettingCustom settingCustom4 = SettingCustom.this;
                                                                PrefSet.f(settingCustom4.f1, 7, i6, "mAddrType2");
                                                                SettingListAdapter settingListAdapter2 = settingCustom4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(5, SettingCustom.h2[i6]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingCustom3.Y1 = myPopupMenu2;
                                                    settingCustom3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 6:
                                            if (!settingCustom3.R0()) {
                                                DialogSetAddr dialogSetAddr = settingCustom3.d2;
                                                if (dialogSetAddr != null) {
                                                    dialogSetAddr.dismiss();
                                                    settingCustom3.d2 = null;
                                                }
                                                DialogSetAddr dialogSetAddr2 = new DialogSetAddr(settingCustom3);
                                                settingCustom3.d2 = dialogSetAddr2;
                                                dialogSetAddr2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.10
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr4 = SettingCustom.h2;
                                                        SettingCustom settingCustom4 = SettingCustom.this;
                                                        DialogSetAddr dialogSetAddr3 = settingCustom4.d2;
                                                        if (dialogSetAddr3 != null) {
                                                            dialogSetAddr3.dismiss();
                                                            settingCustom4.d2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 7:
                                            if (!settingCustom3.R0()) {
                                                DialogSetSuggest dialogSetSuggest = settingCustom3.c2;
                                                if (dialogSetSuggest != null) {
                                                    dialogSetSuggest.dismiss();
                                                    settingCustom3.c2 = null;
                                                }
                                                final int i5 = PrefWeb.V;
                                                final int i6 = PrefWeb.W;
                                                DialogSetSuggest dialogSetSuggest2 = new DialogSetSuggest(settingCustom3);
                                                settingCustom3.c2 = dialogSetSuggest2;
                                                dialogSetSuggest2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.9
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        SettingListAdapter settingListAdapter2;
                                                        int i7 = i5;
                                                        int i8 = PrefWeb.V;
                                                        SettingCustom settingCustom4 = SettingCustom.this;
                                                        if ((i7 != i8 || i6 != PrefWeb.W) && (settingListAdapter2 = settingCustom4.N1) != null) {
                                                            int[] iArr4 = SettingCustom.h2;
                                                            settingListAdapter2.G(7, settingCustom4.Q0());
                                                        }
                                                        int[] iArr5 = SettingCustom.h2;
                                                        DialogSetSuggest dialogSetSuggest3 = settingCustom4.c2;
                                                        if (dialogSetSuggest3 != null) {
                                                            dialogSetSuggest3.dismiss();
                                                            settingCustom4.c2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 8:
                                            PrefZtwo.B = z;
                                            PrefSet.d(16, settingCustom3.f1, "mAutoComp", z);
                                            return;
                                        case 10:
                                            MyPopupMenu myPopupMenu3 = settingCustom3.Z1;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingCustom3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingCustom3.Z1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_zero));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.history_none));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(2, R.string.setting));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingCustom3, settingCustom3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingCustom.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingCustom.h2;
                                                            SettingCustom settingCustom4 = SettingCustom.this;
                                                            MyPopupMenu myPopupMenu5 = settingCustom4.Z1;
                                                            if (myPopupMenu5 != null) {
                                                                settingCustom4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingCustom4.Z1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            boolean z4;
                                                            final SettingCustom settingCustom4 = SettingCustom.this;
                                                            if (i7 == 2) {
                                                                int[] iArr4 = SettingCustom.h2;
                                                                if (!settingCustom4.R0()) {
                                                                    DialogSeekSimple dialogSeekSimple = settingCustom4.e2;
                                                                    if (dialogSeekSimple != null) {
                                                                        dialogSeekSimple.dismiss();
                                                                        settingCustom4.e2 = null;
                                                                    }
                                                                    int i8 = PrefZtwo.Z;
                                                                    if (i8 <= 0) {
                                                                        i8 = 20;
                                                                    }
                                                                    DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingCustom4, 7, i8, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingCustom.11
                                                                        @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                        public final void a(int i9) {
                                                                            if (PrefZtwo.Z != i9) {
                                                                                PrefZtwo.Z = i9;
                                                                                SettingCustom settingCustom5 = SettingCustom.this;
                                                                                PrefSet.f(settingCustom5.f1, 16, i9, "mRecentLimit");
                                                                                boolean z5 = true;
                                                                                DataBookRecent.a(settingCustom5.f1).b = true;
                                                                                SettingListAdapter settingListAdapter2 = settingCustom5.N1;
                                                                                if (settingListAdapter2 != null) {
                                                                                    if (PrefZtwo.Z != 0) {
                                                                                        z5 = false;
                                                                                    }
                                                                                    boolean z6 = z5;
                                                                                    int[] iArr5 = SettingCustom.h2;
                                                                                    settingListAdapter2.G(10, settingCustom5.P0(i9));
                                                                                    settingCustom5.N1.D(new SettingListAdapter.SettingItem(11, R.string.recent_secret, 0, PrefZtwo.a0, z6, z6, 2));
                                                                                }
                                                                            }
                                                                        }
                                                                    });
                                                                    settingCustom4.e2 = dialogSeekSimple2;
                                                                    dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.12
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int[] iArr5 = SettingCustom.h2;
                                                                            SettingCustom settingCustom5 = SettingCustom.this;
                                                                            DialogSeekSimple dialogSeekSimple3 = settingCustom5.e2;
                                                                            if (dialogSeekSimple3 != null) {
                                                                                dialogSeekSimple3.dismiss();
                                                                                settingCustom5.e2 = null;
                                                                            }
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                            } else {
                                                                if (i7 == 1) {
                                                                    i7 = -1;
                                                                }
                                                                if (PrefZtwo.Z != i7) {
                                                                    PrefZtwo.Z = i7;
                                                                    PrefSet.f(settingCustom4.f1, 16, i7, "mRecentLimit");
                                                                    DataBookRecent.a(settingCustom4.f1).b = true;
                                                                    SettingListAdapter settingListAdapter2 = settingCustom4.N1;
                                                                    if (settingListAdapter2 != null) {
                                                                        if (PrefZtwo.Z == 0) {
                                                                            z4 = true;
                                                                        } else {
                                                                            z4 = false;
                                                                        }
                                                                        int[] iArr5 = SettingCustom.h2;
                                                                        settingListAdapter2.G(10, settingCustom4.P0(i7));
                                                                        settingCustom4.N1.D(new SettingListAdapter.SettingItem(11, R.string.recent_secret, 0, PrefZtwo.a0, z4, z4, 2));
                                                                    }
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingCustom3.Z1 = myPopupMenu4;
                                                    settingCustom3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 11:
                                            PrefZtwo.a0 = z;
                                            PrefSet.d(16, settingCustom3.f1, "mRecentSecret", z);
                                            if (PrefSync.k) {
                                                DataBookRecent.a(settingCustom3.f1).b = true;
                                                return;
                                            }
                                            return;
                                        case 13:
                                            PrefZtri.H = z;
                                            PrefSet.d(17, settingCustom3.f1, "mHandIcon", z);
                                            return;
                                        case 14:
                                            if (!settingCustom3.R0()) {
                                                DialogEditIcon dialogEditIcon = settingCustom3.f2;
                                                if (dialogEditIcon != null) {
                                                    dialogEditIcon.dismiss();
                                                    settingCustom3.f2 = null;
                                                }
                                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingCustom3, 8, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingCustom.13
                                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                    public final void a(int i7, String str) {
                                                        SettingCustom settingCustom4 = SettingCustom.this;
                                                        if (settingCustom4.N1 == null) {
                                                            return;
                                                        }
                                                        settingCustom4.N1.D(new SettingListAdapter.SettingItem(14, R.string.icon_color, PrefEditor.r(PrefEditor.P, PrefEditor.O), 0, (a) null));
                                                    }
                                                });
                                                settingCustom3.f2 = dialogEditIcon2;
                                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.14
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr4 = SettingCustom.h2;
                                                        SettingCustom settingCustom4 = SettingCustom.this;
                                                        DialogEditIcon dialogEditIcon3 = settingCustom4.f2;
                                                        if (dialogEditIcon3 != null) {
                                                            dialogEditIcon3.dismiss();
                                                            settingCustom4.f2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 15:
                                            settingCustom3.startActivity(new Intent(settingCustom3.f1, (Class<?>) SettingHandArea.class));
                                            return;
                                        case 17:
                                            PrefZone.z = z;
                                            PrefSet.d(15, settingCustom3.f1, "mPullRefresh", z);
                                            return;
                                        case 18:
                                            if (!settingCustom3.R0()) {
                                                DialogEditUp dialogEditUp = settingCustom3.g2;
                                                if (dialogEditUp != null) {
                                                    dialogEditUp.dismiss();
                                                    settingCustom3.g2 = null;
                                                }
                                                DialogEditUp dialogEditUp2 = new DialogEditUp(settingCustom3);
                                                settingCustom3.g2 = dialogEditUp2;
                                                dialogEditUp2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingCustom.15
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr4 = SettingCustom.h2;
                                                        SettingCustom settingCustom4 = SettingCustom.this;
                                                        DialogEditUp dialogEditUp3 = settingCustom4.g2;
                                                        if (dialogEditUp3 != null) {
                                                            dialogEditUp3.dismiss();
                                                            settingCustom4.g2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        case 19:
                                            MyPopupMenu myPopupMenu5 = settingCustom3.a2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingCustom3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingCustom3.a2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    final int length = MainConst.M.length;
                                                    for (int i7 = 0; i7 < length; i7++) {
                                                        int i8 = MainConst.M[i7];
                                                        int i9 = MainConst.N[i8];
                                                        if (PrefZone.x == i8) {
                                                            z3 = true;
                                                        } else {
                                                            z3 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i7, i9, z3));
                                                    }
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingCustom3, settingCustom3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingCustom.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingCustom.h2;
                                                            SettingCustom settingCustom4 = SettingCustom.this;
                                                            MyPopupMenu myPopupMenu7 = settingCustom4.a2;
                                                            if (myPopupMenu7 != null) {
                                                                settingCustom4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingCustom4.a2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i10) {
                                                            int i11 = MainConst.M[i10 % length];
                                                            if (PrefZone.x != i11) {
                                                                PrefZone.x = i11;
                                                                SettingCustom settingCustom4 = SettingCustom.this;
                                                                PrefSet.f(settingCustom4.f1, 15, i11, "mScrollPos");
                                                                SettingListAdapter settingListAdapter2 = settingCustom4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(19, MainConst.N[i11]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingCustom3.a2 = myPopupMenu6;
                                                    settingCustom3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 20:
                                            PrefZone.B = z;
                                            PrefSet.d(15, settingCustom3.f1, "mVolScroll", z);
                                            return;
                                        case 21:
                                            PrefZtwo.D = z;
                                            PrefSet.d(16, settingCustom3.f1, "mScrollAnim", z);
                                            return;
                                    }
                                }
                            });
                            settingCustom2.N1 = settingListAdapter;
                            settingCustom2.L1.setAdapter(settingListAdapter);
                            settingCustom2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.X1 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            DialogSetFull dialogSetFull = this.b2;
            if (dialogSetFull != null) {
                dialogSetFull.dismiss();
                this.b2 = null;
            }
            DialogSetSuggest dialogSetSuggest = this.c2;
            if (dialogSetSuggest != null) {
                dialogSetSuggest.dismiss();
                this.c2 = null;
            }
            DialogSetAddr dialogSetAddr = this.d2;
            if (dialogSetAddr != null) {
                dialogSetAddr.dismiss();
                this.d2 = null;
            }
            DialogSeekSimple dialogSeekSimple = this.e2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.e2 = null;
            }
            DialogEditIcon dialogEditIcon = this.f2;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.f2 = null;
            }
            DialogEditUp dialogEditUp = this.g2;
            if (dialogEditUp != null) {
                dialogEditUp.dismiss();
                this.g2 = null;
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
        }
    }
}
