package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.DataNews;
import com.mycompany.app.db.book.DbRecentLang;
import com.mycompany.app.dialog.DialogEditIcon;
import com.mycompany.app.dialog.DialogEditText;
import com.mycompany.app.dialog.DialogEditorText;
import com.mycompany.app.dialog.DialogNewsLocale;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekSimple;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.DialogTransLang;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefZtri;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickView;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingNews extends SettingActivity {
    public static final int[] n2 = {R.string.reader_mode, R.string.preview, R.string.open_url, R.string.new_url, R.string.group_url, R.string.back_url, R.string.secret_tab};
    public static final int[] o2 = {0, 1, 2, 3, 4, 5, 6};
    public String[] X1;
    public String[] Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogSeekSimple b2;
    public MyPopupMenu c2;
    public MyPopupMenu d2;
    public DialogEditText e2;
    public DialogEditIcon f2;
    public DialogNewsLocale g2;
    public DialogTransLang h2;
    public boolean i2;
    public String j2;
    public int k2;
    public boolean l2;
    public int m2;

    public static void O0(SettingNews settingNews, int i) {
        if (settingNews.l2) {
            if (PrefZtwo.c0 != i) {
                PrefZtwo.c0 = i;
                PrefSet.f(settingNews.f1, 16, i, "mRecentTitle");
                SettingListAdapter settingListAdapter = settingNews.N1;
                if (settingListAdapter != null) {
                    settingListAdapter.G(9, settingNews.Q0(i));
                }
                int i2 = PrefZtwo.c0;
                if (i2 == -1 || i2 >= settingNews.m2) {
                    return;
                }
            } else {
                return;
            }
        } else if (PrefZtwo.b0 != i) {
            PrefZtwo.b0 = i;
            PrefSet.f(settingNews.f1, 16, i, "mRecentLocal");
            SettingListAdapter settingListAdapter2 = settingNews.N1;
            if (settingListAdapter2 != null) {
                settingListAdapter2.G(6, settingNews.Q0(i));
            }
            int i3 = PrefZtwo.b0;
            if (i3 == -1 || i3 >= settingNews.m2) {
                return;
            }
        } else {
            return;
        }
        settingNews.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingNews.10
            @Override // java.lang.Runnable
            public final void run() {
                SettingNews settingNews2 = SettingNews.this;
                if (settingNews2.l2) {
                    if (PrefZtwo.c0 == 0) {
                        DbRecentLang.f(settingNews2.f1, 1);
                        return;
                    } else {
                        DbRecentLang.a(settingNews2.f1, 1);
                        return;
                    }
                }
                if (PrefZtwo.b0 == 0) {
                    DbRecentLang.f(settingNews2.f1, 0);
                } else {
                    DbRecentLang.a(settingNews2.f1, 0);
                }
            }
        });
    }

    public static boolean P0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        int i = MainConst.q[5];
        float f = MainConst.p[5];
        if (PrefZtwo.J) {
            PrefZtwo.J = false;
            PrefSet.j(context, 16, "mNewsUse");
            z = true;
        } else {
            z = false;
        }
        if (!TextUtils.isEmpty(PrefZtwo.L)) {
            PrefZtwo.L = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefSet.j(context, 16, "mNewsUrl");
            z = true;
        }
        if (PrefZtwo.b0 != 5) {
            PrefZtwo.b0 = 5;
            PrefSet.j(context, 16, "mRecentLocal");
            z = true;
        }
        if (PrefZtwo.c0 != 5) {
            PrefZtwo.c0 = 5;
            PrefSet.j(context, 16, "mRecentTitle");
            z = true;
        }
        if (!PrefZtwo.O) {
            PrefZtwo.O = true;
            PrefSet.j(context, 16, "mNewsTitle");
            z = true;
        }
        if (PrefZtwo.M != 0) {
            PrefZtwo.M = 0;
            PrefSet.j(context, 16, "mNewsOpen");
            z = true;
        }
        if (!PrefZtri.C) {
            PrefZtri.C = true;
            PrefSet.j(context, 17, "mNewsIcon");
            z = true;
        }
        if (PrefEditor.K == 0 && PrefEditor.L == i && Float.compare(PrefEditor.M, f) == 0) {
            return z;
        }
        PrefEditor.K = 0;
        PrefEditor.L = i;
        PrefEditor.M = f;
        PrefEditor.N = PrefEditor.r(i, 0);
        PrefEditor s = PrefEditor.s(context);
        s.q("mNewsAlpha");
        s.q("mNewsColor");
        s.q("mNewsPos");
        s.c();
        return true;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        boolean s = QuickView.s();
        int[] iArr = n2;
        if (s) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new SettingListAdapter.SettingItem(0, true));
            arrayList.add(new SettingListAdapter.SettingItem(1, R.string.news_show, R.string.not_support_locale, 1, PrefZtwo.J, true));
            arrayList.add(new SettingListAdapter.SettingItem(2, R.string.news_info_1, PrefZtwo.L, 0, 0));
            a.u(arrayList, new SettingListAdapter.SettingItem(3, R.string.open_with, iArr[PrefZtwo.M], 0, 2), 4, false);
            return arrayList;
        }
        int r = PrefEditor.r(PrefEditor.L, PrefEditor.K);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new SettingListAdapter.SettingItem(0, true));
        arrayList2.add(new SettingListAdapter.SettingItem(1, R.string.news_show, R.string.not_support_locale, 1, PrefZtwo.J, true));
        arrayList2.add(new SettingListAdapter.SettingItem(2, R.string.news_info_1, R.string.news_info_2, "https://news.google.com", 0));
        arrayList2.add(new SettingListAdapter.SettingItem(3, R.string.open_with, iArr[PrefZtwo.M], 0, 2));
        arrayList2.add(new SettingListAdapter.SettingItem(4, false));
        arrayList2.add(new SettingListAdapter.SettingItem(5, R.string.news_locale, R0(), 0, 1));
        arrayList2.add(new SettingListAdapter.SettingItem(6, R.string.recent_lang, Q0(PrefZtwo.b0), 0, 2));
        arrayList2.add(new SettingListAdapter.SettingItem(7, false));
        arrayList2.add(new SettingListAdapter.SettingItem(8, R.string.news_trans, S0(), 0, 1));
        arrayList2.add(new SettingListAdapter.SettingItem(9, R.string.recent_lang, Q0(PrefZtwo.c0), 0, 2));
        arrayList2.add(new SettingListAdapter.SettingItem(10, false));
        arrayList2.add(new SettingListAdapter.SettingItem(11, R.string.search_icon, R.string.drag_move_guide, 1, PrefZtri.C, true));
        a.u(arrayList2, new SettingListAdapter.SettingItem(12, R.string.icon_color, r, 2, (a) null), 13, false);
        return arrayList2;
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

    public final String R0() {
        int i;
        String[] strArr = this.X1;
        if (strArr == null || (i = PrefZtwo.N) < 0 || i >= strArr.length) {
            return null;
        }
        return strArr[i];
    }

    public final String S0() {
        if (PrefZtwo.O) {
            return PrefZtwo.P;
        }
        return getString(R.string.not_used);
    }

    public final void T0() {
        DialogEditText dialogEditText = this.e2;
        if (dialogEditText != null) {
            dialogEditText.dismiss();
            this.e2 = null;
        }
    }

    public final void U0() {
        DialogNewsLocale dialogNewsLocale = this.g2;
        if (dialogNewsLocale != null) {
            dialogNewsLocale.dismiss();
            this.g2 = null;
        }
    }

    public final void V0() {
        DialogTransLang dialogTransLang = this.h2;
        if (dialogTransLang != null) {
            dialogTransLang.dismiss();
            this.h2 = null;
        }
    }

    public final boolean W0() {
        if (this.b2 != null || this.e2 != null || this.f2 != null || this.g2 != null || this.h2 != null) {
            return true;
        }
        return false;
    }

    public final void X0(SettingListAdapter.ViewHolder viewHolder, boolean z) {
        MyPopupMenu myPopupMenu = this.a2;
        if (myPopupMenu == null) {
            if (myPopupMenu != null) {
                this.Z0 = null;
                myPopupMenu.a();
                this.a2 = null;
            }
            if (viewHolder != null && viewHolder.D != null) {
                this.l2 = z;
                if (z) {
                    this.m2 = PrefZtwo.c0;
                } else {
                    this.m2 = PrefZtwo.b0;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.history_zero));
                arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.history_none));
                arrayList.add(new MyPopupAdapter.PopMenuItem(2, R.string.setting));
                MyPopupMenu myPopupMenu2 = new MyPopupMenu(this, this.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingNews.7
                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final void a() {
                        int[] iArr = SettingNews.n2;
                        SettingNews settingNews = SettingNews.this;
                        MyPopupMenu myPopupMenu3 = settingNews.a2;
                        if (myPopupMenu3 != null) {
                            settingNews.Z0 = null;
                            myPopupMenu3.a();
                            settingNews.a2 = null;
                        }
                    }

                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                    public final boolean b(View view, int i) {
                        final SettingNews settingNews = SettingNews.this;
                        if (i == 2) {
                            int[] iArr = SettingNews.n2;
                            if (settingNews.W0()) {
                                return true;
                            }
                            DialogSeekSimple dialogSeekSimple = settingNews.b2;
                            if (dialogSeekSimple != null) {
                                dialogSeekSimple.dismiss();
                                settingNews.b2 = null;
                            }
                            int i2 = settingNews.m2;
                            if (i2 <= 0) {
                                i2 = 5;
                            }
                            DialogSeekSimple dialogSeekSimple2 = new DialogSeekSimple(settingNews, 8, i2, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.setting.SettingNews.8
                                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                public final void a(int i3) {
                                    SettingNews.O0(SettingNews.this, i3);
                                }
                            });
                            settingNews.b2 = dialogSeekSimple2;
                            dialogSeekSimple2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingNews.9
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int[] iArr2 = SettingNews.n2;
                                    SettingNews settingNews2 = SettingNews.this;
                                    DialogSeekSimple dialogSeekSimple3 = settingNews2.b2;
                                    if (dialogSeekSimple3 != null) {
                                        dialogSeekSimple3.dismiss();
                                        settingNews2.b2 = null;
                                    }
                                }
                            });
                            return true;
                        }
                        if (i == 1) {
                            i = -1;
                        }
                        SettingNews.O0(settingNews, i);
                        return true;
                    }
                });
                this.a2 = myPopupMenu2;
                this.Z0 = myPopupMenu2;
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getResources().getStringArray(R.array.news_lang);
        this.Y1 = getResources().getStringArray(R.array.news_code);
        this.i2 = PrefZtwo.J;
        this.j2 = PrefZtwo.L;
        this.k2 = PrefZtwo.N;
        F0(R.string.news_title, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingNews.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = SettingNews.n2;
                final SettingNews settingNews = SettingNews.this;
                if (settingNews.O0 != null) {
                    settingNews.L0(2, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingNews.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingNews settingNews2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingNews2 = SettingNews.this).N1) != null) {
                                settingListAdapter.E(settingNews2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingNews.P0(SettingNews.this.f1);
                        }
                    });
                    Handler handler2 = settingNews.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingNews.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i;
                            int[] iArr2 = SettingNews.n2;
                            final SettingNews settingNews2 = SettingNews.this;
                            if (settingNews2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingNews2.D0(), false, settingNews2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingNews.4
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i2, boolean z, int i3) {
                                    boolean z2;
                                    int[] iArr3 = SettingNews.n2;
                                    final SettingNews settingNews3 = SettingNews.this;
                                    switch (i2) {
                                        case 1:
                                            PrefZtwo.J = z;
                                            PrefSet.d(16, settingNews3.f1, "mNewsUse", z);
                                            return;
                                        case 2:
                                            MyPopupMenu myPopupMenu = settingNews3.Z1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingNews3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingNews3.Z1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    boolean isEmpty = TextUtils.isEmpty(PrefZtwo.L);
                                                    ArrayList arrayList = new ArrayList();
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.news_info_2, isEmpty));
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, R.string.direct_input, !isEmpty));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingNews3, settingNews3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingNews.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews settingNews4 = SettingNews.this;
                                                            MyPopupMenu myPopupMenu3 = settingNews4.Z1;
                                                            if (myPopupMenu3 != null) {
                                                                settingNews4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingNews4.Z1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i4) {
                                                            final SettingNews settingNews4 = SettingNews.this;
                                                            if (i4 == 1) {
                                                                int[] iArr4 = SettingNews.n2;
                                                                if (!settingNews4.W0()) {
                                                                    settingNews4.T0();
                                                                    DialogEditText dialogEditText = new DialogEditText(settingNews4, R.string.news_info_1, PrefZtwo.L, null, false, new DialogEditText.EditTextListener() { // from class: com.mycompany.app.setting.SettingNews.13
                                                                        @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                                                                        public final void a(String str) {
                                                                            int[] iArr5 = SettingNews.n2;
                                                                            SettingNews settingNews5 = SettingNews.this;
                                                                            settingNews5.T0();
                                                                            if (!MainUtil.q5(PrefZtwo.L, str)) {
                                                                                PrefZtwo.L = str;
                                                                                PrefSet.c(16, settingNews5.f1, "mNewsUrl", str);
                                                                                SettingListAdapter settingListAdapter2 = settingNews5.N1;
                                                                                if (settingListAdapter2 != null) {
                                                                                    settingListAdapter2.E(settingNews5.D0());
                                                                                }
                                                                            }
                                                                        }

                                                                        @Override // com.mycompany.app.dialog.DialogEditText.EditTextListener
                                                                        public final void b() {
                                                                        }
                                                                    });
                                                                    settingNews4.e2 = dialogEditText;
                                                                    dialogEditText.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingNews.14
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int[] iArr5 = SettingNews.n2;
                                                                            SettingNews.this.T0();
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                            } else if (!TextUtils.isEmpty(PrefZtwo.L)) {
                                                                PrefZtwo.L = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                PrefSet.c(16, settingNews4.f1, "mNewsUrl", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                                SettingListAdapter settingListAdapter2 = settingNews4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.E(settingNews4.D0());
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingNews3.Z1 = myPopupMenu2;
                                                    settingNews3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 3:
                                            MyPopupMenu myPopupMenu3 = settingNews3.d2;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingNews3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingNews3.d2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    for (int i4 = 0; i4 < 7; i4++) {
                                                        int i5 = SettingNews.o2[i4];
                                                        int i6 = SettingNews.n2[i5];
                                                        if (PrefZtwo.M == i5) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(i4, i6, z2));
                                                    }
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingNews3, settingNews3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingNews.12
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews settingNews4 = SettingNews.this;
                                                            MyPopupMenu myPopupMenu5 = settingNews4.d2;
                                                            if (myPopupMenu5 != null) {
                                                                settingNews4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingNews4.d2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            int i8 = SettingNews.o2[i7 % 7];
                                                            if (PrefZtwo.M != i8) {
                                                                PrefZtwo.M = i8;
                                                                SettingNews settingNews4 = SettingNews.this;
                                                                PrefSet.f(settingNews4.f1, 16, i8, "mNewsOpen");
                                                                SettingListAdapter settingListAdapter2 = settingNews4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(3, SettingNews.n2[i8]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingNews3.d2 = myPopupMenu4;
                                                    settingNews3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 4:
                                        case 7:
                                        case 10:
                                        default:
                                            return;
                                        case 5:
                                            if (!settingNews3.W0()) {
                                                settingNews3.U0();
                                                if (settingNews3.X1 != null) {
                                                    DialogNewsLocale dialogNewsLocale = new DialogNewsLocale(settingNews3, settingNews3.X1, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.setting.SettingNews.17
                                                        @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                                                        public final void a(int i7) {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews settingNews4 = SettingNews.this;
                                                            settingNews4.U0();
                                                            if (PrefZtwo.N != i7) {
                                                                PrefZtwo.N = i7;
                                                                PrefSet.f(settingNews4.f1, 16, i7, "mNewsLang2");
                                                                SettingListAdapter settingListAdapter2 = settingNews4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.D(new SettingListAdapter.SettingItem(5, R.string.news_locale, settingNews4.R0(), 0, 1));
                                                                }
                                                            }
                                                        }
                                                    });
                                                    settingNews3.g2 = dialogNewsLocale;
                                                    dialogNewsLocale.d0 = new DialogTransLang.TransNotiListener() { // from class: com.mycompany.app.setting.SettingNews.18
                                                        @Override // com.mycompany.app.dialog.DialogTransLang.TransNotiListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews settingNews4 = SettingNews.this;
                                                            settingNews4.U0();
                                                            settingNews4.N0(6);
                                                        }
                                                    };
                                                    dialogNewsLocale.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingNews.19
                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews.this.U0();
                                                        }
                                                    });
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 6:
                                            settingNews3.X0(viewHolder, false);
                                            return;
                                        case 8:
                                            MyPopupMenu myPopupMenu5 = settingNews3.c2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingNews3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingNews3.c2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(0, R.string.locale));
                                                    arrayList3.add(new MyPopupAdapter.PopMenuItem(1, R.string.not_used));
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingNews3, settingNews3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingNews.11
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int[] iArr4 = SettingNews.n2;
                                                            SettingNews settingNews4 = SettingNews.this;
                                                            MyPopupMenu myPopupMenu7 = settingNews4.c2;
                                                            if (myPopupMenu7 != null) {
                                                                settingNews4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingNews4.c2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i7) {
                                                            PrefZtwo r;
                                                            final SettingNews settingNews4 = SettingNews.this;
                                                            if (i7 == 0) {
                                                                int[] iArr4 = SettingNews.n2;
                                                                if (!settingNews4.W0()) {
                                                                    settingNews4.V0();
                                                                    DialogTransLang dialogTransLang = new DialogTransLang(settingNews4, true, new DialogTransLang.TransLangListener() { // from class: com.mycompany.app.setting.SettingNews.20
                                                                        @Override // com.mycompany.app.dialog.DialogTransLang.TransLangListener
                                                                        public final void a(String str) {
                                                                            int[] iArr5 = SettingNews.n2;
                                                                            SettingNews settingNews5 = SettingNews.this;
                                                                            settingNews5.V0();
                                                                            SettingListAdapter settingListAdapter2 = settingNews5.N1;
                                                                            if (settingListAdapter2 != null) {
                                                                                settingListAdapter2.G(8, settingNews5.S0());
                                                                            }
                                                                        }
                                                                    });
                                                                    settingNews4.h2 = dialogTransLang;
                                                                    dialogTransLang.d0 = new DialogTransLang.TransNotiListener() { // from class: com.mycompany.app.setting.SettingNews.21
                                                                        @Override // com.mycompany.app.dialog.DialogTransLang.TransNotiListener
                                                                        public final void a() {
                                                                            int[] iArr5 = SettingNews.n2;
                                                                            SettingNews settingNews5 = SettingNews.this;
                                                                            settingNews5.V0();
                                                                            settingNews5.N0(9);
                                                                        }
                                                                    };
                                                                    dialogTransLang.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingNews.22
                                                                        @Override // android.content.DialogInterface.OnDismissListener
                                                                        public final void onDismiss(DialogInterface dialogInterface) {
                                                                            int[] iArr5 = SettingNews.n2;
                                                                            SettingNews.this.V0();
                                                                        }
                                                                    });
                                                                    return true;
                                                                }
                                                            } else if (PrefZtwo.O || !TextUtils.isEmpty(PrefZtwo.P)) {
                                                                PrefZtwo.O = false;
                                                                PrefZtwo.P = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                Context context = settingNews4.f1;
                                                                if (context != null && (r = PrefZtwo.r(context, false)) != null) {
                                                                    r.l("mNewsTitle", PrefZtwo.O);
                                                                    r.p("mNewsPick", PrefZtwo.P);
                                                                    r.a();
                                                                }
                                                                SettingListAdapter settingListAdapter2 = settingNews4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    int[] iArr5 = SettingNews.n2;
                                                                    settingListAdapter2.G(8, settingNews4.S0());
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingNews3.c2 = myPopupMenu6;
                                                    settingNews3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 9:
                                            settingNews3.X0(viewHolder, true);
                                            return;
                                        case 11:
                                            PrefZtri.C = z;
                                            PrefSet.d(17, settingNews3.f1, "mNewsIcon", z);
                                            return;
                                        case 12:
                                            if (!settingNews3.W0()) {
                                                DialogEditIcon dialogEditIcon = settingNews3.f2;
                                                if (dialogEditIcon != null) {
                                                    dialogEditIcon.dismiss();
                                                    settingNews3.f2 = null;
                                                }
                                                DialogEditIcon dialogEditIcon2 = new DialogEditIcon(settingNews3, 7, new DialogEditorText.EditorSetListener() { // from class: com.mycompany.app.setting.SettingNews.15
                                                    @Override // com.mycompany.app.dialog.DialogEditorText.EditorSetListener
                                                    public final void a(int i7, String str) {
                                                        SettingNews settingNews4 = SettingNews.this;
                                                        if (settingNews4.N1 == null) {
                                                            return;
                                                        }
                                                        settingNews4.N1.D(new SettingListAdapter.SettingItem(12, R.string.icon_color, PrefEditor.r(PrefEditor.L, PrefEditor.K), 2, (a) null));
                                                    }
                                                });
                                                settingNews3.f2 = dialogEditIcon2;
                                                dialogEditIcon2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingNews.16
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int[] iArr4 = SettingNews.n2;
                                                        SettingNews settingNews4 = SettingNews.this;
                                                        DialogEditIcon dialogEditIcon3 = settingNews4.f2;
                                                        if (dialogEditIcon3 != null) {
                                                            dialogEditIcon3.dismiss();
                                                            settingNews4.f2 = null;
                                                        }
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                    }
                                }
                            });
                            settingNews2.N1 = settingListAdapter;
                            settingNews2.L1.setAdapter(settingListAdapter);
                            String[] strArr = settingNews2.X1;
                            if (strArr != null && ((i = PrefZtwo.N) < 0 || i >= strArr.length)) {
                                settingNews2.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingNews.5
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        int i2;
                                        MyRecyclerView myRecyclerView;
                                        SettingNews settingNews3 = SettingNews.this;
                                        QuickView.l(settingNews3.f1, settingNews3.Y1);
                                        String[] strArr2 = settingNews3.X1;
                                        if (strArr2 != null && (i2 = PrefZtwo.N) >= 0 && i2 < strArr2.length && (myRecyclerView = settingNews3.L1) != null) {
                                            myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.setting.SettingNews.5.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SettingNews settingNews4;
                                                    SettingListAdapter settingListAdapter2;
                                                    if (!QuickView.s() && (settingListAdapter2 = (settingNews4 = SettingNews.this).N1) != null) {
                                                        int i3 = R.string.news_locale;
                                                        int[] iArr3 = SettingNews.n2;
                                                        settingListAdapter2.D(new SettingListAdapter.SettingItem(5, i3, settingNews4.R0(), 0, 1));
                                                    }
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                            settingNews2.M0();
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
        this.Y1 = null;
        this.j2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            DialogSeekSimple dialogSeekSimple = this.b2;
            if (dialogSeekSimple != null) {
                dialogSeekSimple.dismiss();
                this.b2 = null;
            }
            T0();
            DialogEditIcon dialogEditIcon = this.f2;
            if (dialogEditIcon != null) {
                dialogEditIcon.dismiss();
                this.f2 = null;
            }
            U0();
            V0();
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
            MyPopupMenu myPopupMenu3 = this.c2;
            if (myPopupMenu3 != null) {
                this.Z0 = null;
                myPopupMenu3.a();
                this.c2 = null;
            }
            MyPopupMenu myPopupMenu4 = this.d2;
            if (myPopupMenu4 != null) {
                this.Z0 = null;
                myPopupMenu4.a();
                this.d2 = null;
            }
            if (this.i2 != PrefZtwo.J || this.k2 != PrefZtwo.N || !MainUtil.q5(this.j2, PrefZtwo.L)) {
                if (PrefZtwo.Q == 9) {
                    PrefZtwo.Q = 0;
                    PrefZtwo.R = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    PrefZtwo.u(this.f1);
                }
                if (!PrefZtwo.J) {
                    DataNews.a(this.f1).b(null);
                }
            }
        }
    }
}
