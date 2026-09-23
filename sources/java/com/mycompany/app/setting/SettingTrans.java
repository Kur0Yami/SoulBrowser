package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.dialog.DialogWebView;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebNestView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingTrans extends SettingActivity {
    public static final int[] i2 = {1, 2, 0};
    public static final int[] j2 = {R.string.not_used, R.string.trans_auto, R.string.trans_always};
    public static final int[] k2 = {0, R.string.trans_auto_info, R.string.trans_always_info};
    public boolean X1;
    public String Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogSeekSimple b2;
    public DialogWebView c2;
    public DialogTransLang d2;
    public MyPopupMenu e2;
    public DialogEditIcon f2;
    public DialogListBook g2;
    public int h2;

    public static void O0(SettingTrans settingTrans, int i) {
        if (PrefZtwo.d0 != i) {
            PrefZtwo.d0 = i;
            PrefSet.f(settingTrans.f1, 16, i, "mRecentTrans");
            SettingListAdapter settingListAdapter = settingTrans.N1;
            if (settingListAdapter != null) {
                settingListAdapter.G(3, settingTrans.Q0(i));
            }
            int i3 = PrefZtwo.d0;
            if (i3 == -1 || i3 >= settingTrans.h2) {
                return;
            }
            settingTrans.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingTrans.10
                @Override // java.lang.Runnable
                public final void run() {
                    int i4 = PrefZtwo.d0;
                    SettingTrans settingTrans2 = SettingTrans.this;
                    if (i4 == 0) {
                        DbRecentLang.f(settingTrans2.f1, 2);
                    } else {
                        DbRecentLang.a(settingTrans2.f1, 2);
                    }
                }
            });
        }
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefAlbum.u != 0) {
            PrefAlbum.u = 0;
            PrefSet.j(context, 0, "mTransMode2");
            z = true;
        } else {
            z = false;
        }
        if (PrefZtwo.d0 != 5) {
            PrefZtwo.d0 = 5;
            PrefSet.j(context, 16, "mRecentTrans");
            z = true;
        }
        if (PrefAlbum.v) {
            PrefAlbum.v = false;
            PrefSet.j(context, 0, "mTransIcon");
            z = true;
        }
        if (PrefAlbum.w) {
            PrefAlbum.w = false;
            PrefSet.j(context, 0, "mTransPage");
            z = true;
        }
        if (PrefEditor.W == 0 && PrefEditor.X == i && Float.compare(PrefEditor.Y, f) == 0) {
            return z;
        }
        PrefEditor.W = 0;
        PrefEditor.X = i;
        PrefEditor.Y = f;
        PrefEditor.Z = PrefEditor.r(i, 0);
        PrefEditor s = PrefEditor.s(context);
        s.q("mTrnsAlpha");
        s.q("mTrnsColor");
        s.q("mTrnsPos");
        s.c();
        return true;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i3;
        int i4;
        if (MainApp.K1) {
            i = R.drawable.trans_logo_regular_white;
        } else {
            i = R.drawable.trans_logo_regular_color;
        }
        int i5 = PrefAlbum.u;
        int i6 = j2[i5];
        int i7 = k2[i5];
        boolean z = PrefAlbum.w;
        if (z) {
            i3 = R.string.float_button;
        } else {
            i3 = R.string.address_bar;
        }
        int i8 = i3;
        if (z) {
            i4 = R.string.drag_move_guide;
        } else {
            i4 = 0;
        }
        int r = PrefEditor.r(PrefEditor.X, PrefEditor.W);
        ArrayList arrayList = new ArrayList();
        ?? obj = new Object();
        obj.f17931a = 24;
        obj.b = 0;
        obj.v = i;
        arrayList.add(obj);
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.trans_detect, i6, i7, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.locale, PrefAlbum.y, 0, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.recent_lang, Q0(PrefZtwo.d0), 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.trans_icon_always, 0, 1, PrefAlbum.v, true));
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.icon_pos, i8, i4, 0));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.icon_color, r, 2, (a) null));
        arrayList.add(new SettingListAdapter.SettingItem(8, false));
        a.u(arrayList, new SettingListAdapter.SettingItem(9, R.string.trans_except, 0, R.string.trans_except_info, 3), 10, false);
        return arrayList;
    }

    public final String Q0(int i) {
        if (i < 0) {
            return getString(R.string.history_none);
        }
        if (i == 0) {
            return getString(R.string.history_zero);
        }
        return android.support.v4.media.a.e(i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public final void R0() {
        DialogTransLang dialogTransLang = this.d2;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.d2 = null;
        }
    }

    public final void S0() {
        DialogWebView dialogWebView = this.c2;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.c2 = null;
        }
    }

    public final boolean T0() {
        if (this.b2 != null || this.c2 != null || this.d2 != null || this.f2 != null || this.g2 != null) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListBook dialogListBook = this.g2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        this.Y1 = getIntent().getStringExtra("EXTRA_PATH");
        F0(R.string.translator, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTrans.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingTrans.i2;
                final SettingTrans settingTrans = SettingTrans.this;
                if (settingTrans.O0 != null) {
                    settingTrans.L0(2, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingTrans.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingTrans settingTrans2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingTrans2 = SettingTrans.this).N1) != null) {
                                settingListAdapter.E(settingTrans2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingTrans.P0(SettingTrans.this.f1);
                        }
                    });
                    settingTrans.K0(false, new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingTrans.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            int[] iArr2 = SettingTrans.i2;
                            final SettingTrans settingTrans2 = SettingTrans.this;
                            if (settingTrans2.T0()) {
                                return;
                            }
                            settingTrans2.S0();
                            DialogWebView dialogWebView = new DialogWebView(settingTrans2, "https://support.google.com/translate", "https://support.google.com/translate", false, 2, new DialogWebView.DialogWebListener() { // from class: com.mycompany.app.setting.SettingTrans.11
                                @Override // com.mycompany.app.dialog.DialogWebView.DialogWebListener
                                public final void a(int i, String str, String str2) {
                                    SettingTrans settingTrans3 = SettingTrans.this;
                                    Intent o4 = MainUtil.o4(settingTrans3.f1);
                                    o4.putExtra("EXTRA_PATH", str);
                                    o4.addFlags(67108864);
                                    settingTrans3.startActivity(o4);
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
                            settingTrans2.c2 = dialogWebView;
                            dialogWebView.J1 = new DialogTransLang.TransNotiListener() { // from class: com.mycompany.app.setting.SettingTrans.12
                                @Override // com.mycompany.app.dialog.DialogTransLang.TransNotiListener
                                public final void a() {
                                    int[] iArr3 = SettingTrans.i2;
                                    SettingTrans settingTrans3 = SettingTrans.this;
                                    settingTrans3.S0();
                                    settingTrans3.N0(3);
                                }
                            };
                            dialogWebView.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTrans.13
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int[] iArr3 = SettingTrans.i2;
                                    SettingTrans.this.S0();
                                }
                            });
                        }
                    });
                    Handler handler2 = settingTrans.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingTrans.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArr2 = SettingTrans.i2;
                            final SettingTrans settingTrans2 = SettingTrans.this;
                            if (settingTrans2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingTrans2.D0(), false, settingTrans2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingTrans.5
                                /* JADX WARN: Type inference failed for: r8v11, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i, boolean z, int i3) {
                                    boolean z2;
                                    int[] iArr3 = SettingTrans.i2;
                                    final SettingTrans settingTrans3 = SettingTrans.this;
                                    if (i != 1) {
                                        if (i != 2) {
                                            if (i != 3) {
                                                if (i != 5) {
                                                    if (i != 6) {
                                                        if (i != 7) {
                                                            if (i == 9 && !settingTrans3.T0()) {
                                                                DialogListBook dialogListBook = settingTrans3.g2;
                                                                if (dialogListBook != null) {
                                                                    dialogListBook.dismiss();
                                                                    settingTrans3.g2 = null;
                                                                }
                                                                ?? obj = new Object();
                                                                obj.f16734a = 30;
                                                                obj.i = true;
                                                                obj.f = R.string.trans_except;
                                                                DialogListBook dialogListBook2 = new DialogListBook(settingTrans3, obj, settingTrans3.Y1, null);
                                                                settingTrans3.g2 = dialogListBook2;
                                                                dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTrans.20
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int[] iArr4 = SettingTrans.i2;
                                                                        SettingTrans settingTrans4 = SettingTrans.this;
                                                                        DialogListBook dialogListBook3 = settingTrans4.g2;
                                                                        if (dialogListBook3 != null) {
                                                                            dialogListBook3.dismiss();
                                                                            settingTrans4.g2 = null;
                                                                        }
                                                                        settingTrans4.C0(null);
                                                                    }
                                                                });
                                                                settingTrans3.g2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingTrans.21
                                                                    @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
                                                                    public final void a() {
                                                                        SettingTrans settingTrans4 = SettingTrans.this;
                                                                        settingTrans4.C0(settingTrans4.g2);
                                                                    }
                                                                };
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        if (!settingTrans3.T0()) {
                                                            DialogEditIcon dialogEditIcon = settingTrans3.f2;
                                                            if (dialogEditIcon != null) {
                                                                dialogEditIcon.dismiss();
                                                                settingTrans3.f2 = null;
                                                            }
                                                            DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingTrans3, 10, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingTrans.18
                                                                @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                                public final void a(int i4, String str) {
                                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                                    if (settingTrans4.N1 == null) {
                                                                        return;
                                                                    }
                                                                    settingTrans4.N1.D(new SettingListAdapter.SettingItem(7, R.string.icon_color, PrefEditor.r(PrefEditor.X, PrefEditor.W), 2, (a) null));
                                                                }
                                                            });
                                                            settingTrans3.f2 = dialogEditIcon2;
                                                            dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTrans.19
                                                                @Override // android.content.DialogInterface.OnDismissListener
                                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                                    int[] iArr4 = SettingTrans.i2;
                                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                                    DialogEditIcon dialogEditIcon3 = settingTrans4.f2;
                                                                    if (dialogEditIcon3 != null) {
                                                                        dialogEditIcon3.dismiss();
                                                                        settingTrans4.f2 = null;
                                                                    }
                                                                }
                                                            });
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    MyPopupMenu myPopupMenu = settingTrans3.e2;
                                                    if (myPopupMenu == null) {
                                                        if (myPopupMenu != null) {
                                                            settingTrans3.Z0 = null;
                                                            myPopupMenu.a();
                                                            settingTrans3.e2 = null;
                                                        }
                                                        if (viewHolder != null && viewHolder.D != null) {
                                                            ArrayList arrayList = new ArrayList();
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.address_bar, !PrefAlbum.w));
                                                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.float_button, PrefAlbum.w));
                                                            MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingTrans3, settingTrans3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTrans.17
                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final void a() {
                                                                    int[] iArr4 = SettingTrans.i2;
                                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                                    MyPopupMenu myPopupMenu3 = settingTrans4.e2;
                                                                    if (myPopupMenu3 != null) {
                                                                        settingTrans4.Z0 = null;
                                                                        myPopupMenu3.a();
                                                                        settingTrans4.e2 = null;
                                                                    }
                                                                }

                                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                                public final boolean b(View view, int i4) {
                                                                    boolean z3;
                                                                    int i5;
                                                                    int i6 = 0;
                                                                    if (i4 == 1) {
                                                                        z3 = true;
                                                                    } else {
                                                                        z3 = false;
                                                                    }
                                                                    if (PrefAlbum.w != z3) {
                                                                        PrefAlbum.w = z3;
                                                                        SettingTrans settingTrans4 = SettingTrans.this;
                                                                        PrefSet.d(0, settingTrans4.f1, "mTransPage", z3);
                                                                        SettingListAdapter settingListAdapter2 = settingTrans4.N1;
                                                                        if (settingListAdapter2 != null) {
                                                                            boolean z4 = PrefAlbum.w;
                                                                            if (z4) {
                                                                                i5 = R.string.float_button;
                                                                            } else {
                                                                                i5 = R.string.address_bar;
                                                                            }
                                                                            if (z4) {
                                                                                i6 = R.string.drag_move_guide;
                                                                            }
                                                                            settingListAdapter2.F(6, i5);
                                                                            settingTrans4.N1.C(6, i6);
                                                                        }
                                                                    }
                                                                    return true;
                                                                }
                                                            });
                                                            settingTrans3.e2 = myPopupMenu2;
                                                            settingTrans3.Z0 = myPopupMenu2;
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                PrefAlbum.v = z;
                                                PrefSet.d(0, settingTrans3.f1, "mTransIcon", z);
                                                return;
                                            }
                                            MyPopupMenu myPopupMenu3 = settingTrans3.a2;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingTrans3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingTrans3.a2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    settingTrans3.h2 = PrefZtwo.d0;
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_zero));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, R.string.history_none));
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(2, R.string.setting));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingTrans3, settingTrans3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTrans.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingTrans.i2;
                                                            SettingTrans settingTrans4 = SettingTrans.this;
                                                            MyPopupMenu myPopupMenu5 = settingTrans4.a2;
                                                            if (myPopupMenu5 != null) {
                                                                settingTrans4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingTrans4.a2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i4) {
                                                            final SettingTrans settingTrans4 = SettingTrans.this;
                                                            if (i4 == 2) {
                                                                int[] iArr4 = SettingTrans.i2;
                                                                if (settingTrans4.T0()) {
                                                                    return true;
                                                                }
                                                                DialogSeekSimple dialogSeekSimple = settingTrans4.b2;
                                                                if (dialogSeekSimple != null) {
                                                                    dialogSeekSimple.dismiss();
                                                                    settingTrans4.b2 = null;
                                                                }
                                                                int i5 = settingTrans4.h2;
                                                                if (i5 <= 0) {
                                                                    i5 = 5;
                                                                }
                                                                DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingTrans4, 8, i5, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingTrans.8
                                                                    @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                                                    public final void a(int i6) {
                                                                        SettingTrans.O0(SettingTrans.this, i6);
                                                                    }
                                                                });
                                                                settingTrans4.b2 = dialogSeekSimple2;
                                                                dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTrans.9
                                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                                        int[] iArr5 = SettingTrans.i2;
                                                                        SettingTrans settingTrans5 = SettingTrans.this;
                                                                        DialogSeekSimple dialogSeekSimple3 = settingTrans5.b2;
                                                                        if (dialogSeekSimple3 != null) {
                                                                            dialogSeekSimple3.dismiss();
                                                                            settingTrans5.b2 = null;
                                                                        }
                                                                    }
                                                                });
                                                                return true;
                                                            }
                                                            if (i4 == 1) {
                                                                i4 = -1;
                                                            }
                                                            SettingTrans.O0(settingTrans4, i4);
                                                            return true;
                                                        }
                                                    });
                                                    settingTrans3.a2 = myPopupMenu4;
                                                    settingTrans3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        if (!settingTrans3.T0()) {
                                            settingTrans3.R0();
                                            DialogTransLang dialogTransLang = new DialogTransLang(settingTrans3, false, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.setting.SettingTrans.14
                                                @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                public final void a(String str) {
                                                    int[] iArr4 = SettingTrans.i2;
                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                    settingTrans4.R0();
                                                    SettingListAdapter settingListAdapter2 = settingTrans4.N1;
                                                    if (settingListAdapter2 != null) {
                                                        settingListAdapter2.G(2, PrefAlbum.y);
                                                    }
                                                }
                                            });
                                            settingTrans3.d2 = dialogTransLang;
                                            dialogTransLang.d0 = new DialogTransLang.TransNotiListener() { // from class: com.mycompany.app.setting.SettingTrans.15
                                                @Override // com.mycompany.app.dialog.DialogTransLang.TransNotiListener
                                                public final void a() {
                                                    int[] iArr4 = SettingTrans.i2;
                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                    settingTrans4.R0();
                                                    settingTrans4.N0(3);
                                                }
                                            };
                                            dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingTrans.16
                                                @Override // android.content.DialogInterface.OnDismissListener
                                                public final void onDismiss(DialogInterface dialogInterface) {
                                                    int[] iArr4 = SettingTrans.i2;
                                                    SettingTrans.this.R0();
                                                }
                                            });
                                            return;
                                        }
                                        return;
                                    }
                                    MyPopupMenu myPopupMenu5 = settingTrans3.Z1;
                                    if (myPopupMenu5 == null) {
                                        if (myPopupMenu5 != null) {
                                            settingTrans3.Z0 = null;
                                            myPopupMenu5.a();
                                            settingTrans3.Z1 = null;
                                        }
                                        if (viewHolder != null && viewHolder.D != null) {
                                            ArrayList arrayList3 = new ArrayList();
                                            for (int i4 = 0; i4 < 3; i4++) {
                                                int i5 = SettingTrans.i2[i4];
                                                int i6 = SettingTrans.j2[i5];
                                                if (PrefAlbum.u == i5) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                arrayList3.add(new MyPopupAdapter.PopMenuItem(i4, i6, z2));
                                            }
                                            MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingTrans3, settingTrans3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingTrans.6
                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final void a() {
                                                    int[] iArr4 = SettingTrans.i2;
                                                    SettingTrans settingTrans4 = SettingTrans.this;
                                                    MyPopupMenu myPopupMenu7 = settingTrans4.Z1;
                                                    if (myPopupMenu7 != null) {
                                                        settingTrans4.Z0 = null;
                                                        myPopupMenu7.a();
                                                        settingTrans4.Z1 = null;
                                                    }
                                                }

                                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                public final boolean b(View view, int i7) {
                                                    int i8 = SettingTrans.i2[i7 % 3];
                                                    if (PrefAlbum.u != i8) {
                                                        PrefAlbum.u = i8;
                                                        SettingTrans settingTrans4 = SettingTrans.this;
                                                        PrefSet.f(settingTrans4.f1, 0, i8, "mTransMode2");
                                                        SettingListAdapter settingListAdapter2 = settingTrans4.N1;
                                                        if (settingListAdapter2 != null) {
                                                            settingListAdapter2.F(1, SettingTrans.j2[i8]);
                                                            settingTrans4.N1.C(1, SettingTrans.k2[i8]);
                                                        }
                                                    }
                                                    return true;
                                                }
                                            });
                                            settingTrans3.Z1 = myPopupMenu6;
                                            settingTrans3.Z0 = myPopupMenu6;
                                        }
                                    }
                                }
                            });
                            settingTrans2.N1 = settingListAdapter;
                            settingTrans2.L1.setAdapter(settingListAdapter);
                            settingTrans2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.Y1 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            MyPopupMenu myPopupMenu = this.Z1;
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.Z1 = null;
            }
            MyPopupMenu myPopupMenu2 = this.a2;
            if (myPopupMenu2 != null) {
                this.Z0 = null;
                myPopupMenu2.a();
                this.a2 = null;
            }
            MyPopupMenu myPopupMenu3 = this.e2;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.e2 = null;
            }
            DialogSeekSimple dialogSeekSimple = this.b2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.b2 = null;
            }
            S0();
            R0();
            DialogEditIcon dialogEditIcon = this.f2;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.f2 = null;
            }
            DialogListBook dialogListBook = this.g2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.g2 = null;
                return;
            }
            return;
        }
        DialogWebView dialogWebView = this.c2;
        if (dialogWebView != null) {
            dialogWebView.V();
        }
        DialogListBook dialogListBook2 = this.g2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (!this.X1) {
            DialogWebView dialogWebView = this.c2;
            if (dialogWebView != null) {
                dialogWebView.X();
            }
            DialogListBook dialogListBook = this.g2;
            if (dialogListBook != null) {
                dialogListBook.s(true);
            }
        }
        this.X1 = false;
    }
}
