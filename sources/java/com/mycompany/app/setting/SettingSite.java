package com.mycompany.app.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.book.DbBookAgent;
import com.mycompany.app.db.book.DbBookSearch;
import com.mycompany.app.dialog.DialogListBook;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.list.MainListAgent;
import com.mycompany.app.main.list.MainListSearch;
import com.mycompany.app.pref.PrefAlbum;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.web.WebSearch;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingSite extends SettingActivity {
    public static final /* synthetic */ int e2 = 0;
    public boolean X1;
    public String Y1;
    public MyPopupMenu Z1;
    public MyPopupMenu a2;
    public DialogListBook b2;
    public MyPopupMenu c2;
    public MyPopupMenu d2;

    public static boolean O0(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        if (!"file:///android_asset/shortcut.html".equals(PrefWeb.k)) {
            PrefWeb.k = "file:///android_asset/shortcut.html";
            PrefSet.j(context, 14, "mHomePage3");
            z = true;
        } else {
            z = false;
        }
        if (!TextUtils.isEmpty(PrefWeb.l)) {
            PrefWeb.l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefSet.j(context, 14, "mStartPage");
            z = true;
        }
        if (!"..home_link".equals(PrefWeb.m)) {
            PrefWeb.m = "..home_link";
            PrefSet.j(context, 14, "mTabPage");
            z = true;
        }
        if (PrefZtwo.j != 4 || PrefZtwo.m != 0 || !TextUtils.isEmpty(PrefZtwo.k)) {
            PrefZtwo.j = 4;
            PrefZtwo.k = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefZtwo.m = 0;
            PrefZtwo.l = false;
            PrefZtwo r = PrefZtwo.r(context, false);
            r.q("mSearchType2");
            r.q("mSearchUser");
            r.q("mSearchForm2");
            r.q("mSearchColor");
            r.c();
            z = true;
        }
        if (!TextUtils.isEmpty(PrefZone.i0)) {
            PrefZone.i0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefSet.j(context, 15, "mSearchUse2");
            z = true;
        }
        if (PrefZtwo.p != 0 || !TextUtils.isEmpty(PrefZtwo.q)) {
            PrefZtwo.p = 0;
            PrefZtwo.q = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            PrefZtwo r2 = PrefZtwo.r(context, false);
            r2.q("mAgentType");
            r2.q("mAgentUser");
            r2.c();
            z = true;
        }
        if (PrefAlbum.P) {
            PrefAlbum.P = false;
            PrefSet.j(context, 0, "mLinkApp");
            z = true;
        }
        if (PrefZone.H != 0) {
            PrefZone.H = 0;
            PrefSet.j(context, 15, "mOpenLink4");
            z = true;
        }
        if (PrefZone.I != 0) {
            PrefZone.I = 0;
            PrefSet.j(context, 15, "mOpenImage3");
            return true;
        }
        return z;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        String str;
        String b;
        if (PrefZtwo.j < 10) {
            str = getString(MainConst.D[PrefZtwo.j]);
        } else {
            WebSearch.WebSchItem b2 = WebSearch.a().b(PrefZtwo.j - 100);
            if (b2 != null) {
                str = b2.b;
            } else {
                m0(new Runnable() { // from class: com.mycompany.app.setting.SettingSite.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingSite settingSite = SettingSite.this;
                        if (settingSite.L1 == null) {
                            return;
                        }
                        DbBookSearch.i(settingSite.f1);
                        settingSite.L1.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSite.5.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebSearch.WebSchItem b3;
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                if (SettingSite.this.N1 != null && PrefZtwo.j >= 10 && (b3 = WebSearch.a().b(PrefZtwo.j - 100)) != null) {
                                    SettingSite.this.N1.D(new SettingListAdapter.SettingItem(7, R.string.search_engine, b3.b, 0, 1));
                                }
                            }
                        });
                    }
                });
                str = null;
            }
        }
        String str2 = str;
        if (PrefZtwo.p < 4) {
            b = MainConst.G[PrefZtwo.p];
        } else {
            b = DbBookAgent.b(this.f1, r1 - 100);
        }
        String str3 = b;
        String str4 = " (" + getString(R.string.long_press) + ")";
        String str5 = getString(R.string.link) + str4;
        String str6 = getString(R.string.image) + str4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.home_page, P0(1), R.string.page_home_info, 1));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.start_page, P0(2), R.string.page_start_info, 0));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.new_url, P0(3), R.string.page_tab_info, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        arrayList.add(new SettingListAdapter.SettingItem(5, R.string.permission, 0, 0, 3));
        arrayList.add(new SettingListAdapter.SettingItem(6, false));
        arrayList.add(new SettingListAdapter.SettingItem(7, R.string.search_engine, str2, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(8, R.string.user_agent, str3, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(9, false));
        arrayList.add(new SettingListAdapter.SettingItem(10, R.string.link_app, 0, 1, PrefAlbum.P, true));
        arrayList.add(new SettingListAdapter.SettingItem(11, str5, MainConst.h[PrefZone.H], 0, 0));
        a.u(arrayList, new SettingListAdapter.SettingItem(12, str6, MainConst.l[PrefZone.I], 0, 2), 13, false);
        return arrayList;
    }

    public final String P0(int i) {
        String str;
        if (i == 1) {
            str = PrefWeb.k;
        } else if (i == 2) {
            str = PrefWeb.l;
        } else {
            str = PrefWeb.m;
        }
        if (TextUtils.isEmpty(str)) {
            if (i == 2) {
                return getString(R.string.last_page);
            }
            return getString(R.string.soul_home);
        }
        if ("..home_link".equals(str)) {
            return getString(R.string.home_page);
        }
        if ("file:///android_asset/shortcut.html".equals(str)) {
            return getString(R.string.soul_home);
        }
        if ("about:blank".equals(str)) {
            return getString(R.string.blank_page);
        }
        return str;
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        String b;
        String str;
        SettingListAdapter settingListAdapter;
        if (i == 13) {
            if (i2 == -1 && intent != null) {
                int intExtra = intent.getIntExtra("EXTRA_TYPE", 0);
                if ((intExtra == 1 || intExtra == 2 || intExtra == 3) && (settingListAdapter = this.N1) != null) {
                    settingListAdapter.G(intExtra, P0(intExtra));
                    return;
                }
                return;
            }
            return;
        }
        if (i == 15) {
            if (this.N1 != null) {
                if (PrefZtwo.j < 10) {
                    str = getString(MainConst.D[PrefZtwo.j]);
                } else {
                    WebSearch.WebSchItem b2 = WebSearch.a().b(PrefZtwo.j - 100);
                    if (b2 != null) {
                        str = b2.b;
                    } else {
                        str = null;
                    }
                }
                this.N1.D(new SettingListAdapter.SettingItem(7, R.string.search_engine, str, 0, 1));
                return;
            }
            return;
        }
        if (i == 16 && this.N1 != null) {
            if (PrefZtwo.p < 4) {
                b = MainConst.G[PrefZtwo.p];
            } else {
                b = DbBookAgent.b(this.f1, r7 - 100);
            }
            this.N1.D(new SettingListAdapter.SettingItem(8, R.string.user_agent, b, 0, 2));
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListBook dialogListBook = this.b2;
        if (dialogListBook != null) {
            dialogListBook.q(configuration);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = true;
        this.Y1 = getIntent().getStringExtra("EXTRA_PATH");
        o0(null, 13);
        o0(null, 15);
        o0(null, 16);
        F0(R.string.site, true, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSite.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingSite.e2;
                final SettingSite settingSite = SettingSite.this;
                if (settingSite.O0 != null) {
                    settingSite.L0(0, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingSite.2
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            SettingSite settingSite2;
                            SettingListAdapter settingListAdapter;
                            if (z && (settingListAdapter = (settingSite2 = SettingSite.this).N1) != null) {
                                settingListAdapter.E(settingSite2.D0());
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            return SettingSite.O0(SettingSite.this.f1);
                        }
                    });
                    Handler handler2 = settingSite.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingSite.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingSite.e2;
                            final SettingSite settingSite2 = SettingSite.this;
                            if (settingSite2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingSite2.D0(), false, settingSite2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingSite.4
                                /* JADX WARN: Type inference failed for: r8v3, types: [com.mycompany.app.main.MainListView$ListViewConfig, java.lang.Object] */
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    char c2;
                                    boolean z2;
                                    boolean z3;
                                    boolean z4;
                                    boolean z5;
                                    int i5 = SettingSite.e2;
                                    final SettingSite settingSite3 = SettingSite.this;
                                    boolean z6 = false;
                                    switch (i3) {
                                        case 1:
                                            Intent intent = new Intent(settingSite3.f1, (Class<?>) SettingHome.class);
                                            intent.putExtra("EXTRA_TYPE", 1);
                                            intent.putExtra("EXTRA_PATH", settingSite3.Y1);
                                            settingSite3.o0(intent, 13);
                                            return;
                                        case 2:
                                            MyPopupMenu myPopupMenu = settingSite3.Z1;
                                            if (myPopupMenu == null) {
                                                if (myPopupMenu != null) {
                                                    settingSite3.Z0 = null;
                                                    myPopupMenu.a();
                                                    settingSite3.Z1 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    if (TextUtils.isEmpty(PrefWeb.l)) {
                                                        c2 = 0;
                                                    } else if ("..home_link".equals(PrefWeb.l)) {
                                                        c2 = 1;
                                                    } else {
                                                        c2 = 2;
                                                    }
                                                    ArrayList arrayList = new ArrayList();
                                                    int i6 = R.string.last_page;
                                                    if (c2 == 0) {
                                                        z2 = true;
                                                    } else {
                                                        z2 = false;
                                                    }
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(0, i6, z2));
                                                    int i7 = R.string.home_page;
                                                    if (c2 == 1) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(1, i7, z3));
                                                    int i8 = R.string.user_defined;
                                                    if (c2 == 2) {
                                                        z6 = true;
                                                    }
                                                    arrayList.add(new MyPopupAdapter.PopMenuItem(2, i8, z6));
                                                    MyPopupMenu myPopupMenu2 = new MyPopupMenu(settingSite3, settingSite3.E1, viewHolder.D, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSite.6
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i9 = SettingSite.e2;
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            MyPopupMenu myPopupMenu3 = settingSite4.Z1;
                                                            if (myPopupMenu3 != null) {
                                                                settingSite4.Z0 = null;
                                                                myPopupMenu3.a();
                                                                settingSite4.Z1 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i9) {
                                                            int i10;
                                                            String str;
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            if (i9 == 2) {
                                                                Intent intent2 = new Intent(settingSite4.f1, (Class<?>) SettingHome.class);
                                                                intent2.putExtra("EXTRA_TYPE", 2);
                                                                intent2.putExtra("EXTRA_PATH", settingSite4.Y1);
                                                                settingSite4.o0(intent2, 13);
                                                                return true;
                                                            }
                                                            if (settingSite4.N1 != null) {
                                                                if (i9 == 1) {
                                                                    str = "..home_link";
                                                                    if (!"..home_link".equals(PrefWeb.l)) {
                                                                        i10 = R.string.home_page;
                                                                        PrefWeb.l = str;
                                                                        PrefSet.c(14, settingSite4.f1, "mStartPage", str);
                                                                        settingSite4.N1.F(2, i10);
                                                                        return true;
                                                                    }
                                                                } else if (!TextUtils.isEmpty(PrefWeb.l)) {
                                                                    i10 = R.string.last_page;
                                                                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                                    PrefWeb.l = str;
                                                                    PrefSet.c(14, settingSite4.f1, "mStartPage", str);
                                                                    settingSite4.N1.F(2, i10);
                                                                    return true;
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingSite3.Z1 = myPopupMenu2;
                                                    settingSite3.Z0 = myPopupMenu2;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 3:
                                            MyPopupMenu myPopupMenu3 = settingSite3.a2;
                                            if (myPopupMenu3 == null) {
                                                if (myPopupMenu3 != null) {
                                                    settingSite3.Z0 = null;
                                                    myPopupMenu3.a();
                                                    settingSite3.a2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    boolean equals = "..home_link".equals(PrefWeb.m);
                                                    boolean z7 = !equals;
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.home_page, equals));
                                                    int i9 = R.string.user_defined;
                                                    if (z7) {
                                                        z6 = true;
                                                    }
                                                    arrayList2.add(new MyPopupAdapter.PopMenuItem(1, i9, z6));
                                                    MyPopupMenu myPopupMenu4 = new MyPopupMenu(settingSite3, settingSite3.E1, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSite.7
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i10 = SettingSite.e2;
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            MyPopupMenu myPopupMenu5 = settingSite4.a2;
                                                            if (myPopupMenu5 != null) {
                                                                settingSite4.Z0 = null;
                                                                myPopupMenu5.a();
                                                                settingSite4.a2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i10) {
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            if (i10 == 1) {
                                                                Intent intent2 = new Intent(settingSite4.f1, (Class<?>) SettingHome.class);
                                                                intent2.putExtra("EXTRA_TYPE", 3);
                                                                intent2.putExtra("EXTRA_PATH", settingSite4.Y1);
                                                                settingSite4.o0(intent2, 13);
                                                                return true;
                                                            }
                                                            if (settingSite4.N1 == null || "..home_link".equals(PrefWeb.m)) {
                                                                return true;
                                                            }
                                                            PrefWeb.m = "..home_link";
                                                            PrefSet.c(14, settingSite4.f1, "mTabPage", "..home_link");
                                                            settingSite4.N1.F(3, R.string.home_page);
                                                            return true;
                                                        }
                                                    });
                                                    settingSite3.a2 = myPopupMenu4;
                                                    settingSite3.Z0 = myPopupMenu4;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 4:
                                        case 6:
                                        case 9:
                                        default:
                                            return;
                                        case 5:
                                            DialogListBook dialogListBook = settingSite3.b2;
                                            if (dialogListBook == null) {
                                                if (dialogListBook != null) {
                                                    dialogListBook.dismiss();
                                                    settingSite3.b2 = null;
                                                }
                                                ?? obj = new Object();
                                                obj.f16734a = 31;
                                                obj.f = R.string.permission;
                                                DialogListBook dialogListBook2 = new DialogListBook(settingSite3, obj, settingSite3.Y1, null);
                                                settingSite3.b2 = dialogListBook2;
                                                dialogListBook2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingSite.8
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i10 = SettingSite.e2;
                                                        SettingSite settingSite4 = SettingSite.this;
                                                        DialogListBook dialogListBook3 = settingSite4.b2;
                                                        if (dialogListBook3 != null) {
                                                            dialogListBook3.dismiss();
                                                            settingSite4.b2 = null;
                                                        }
                                                        settingSite4.C0(null);
                                                    }
                                                });
                                                settingSite3.b2.o = new MyDialogBottom.UserShowListener() { // from class: com.mycompany.app.setting.SettingSite.9
                                                    @Override // com.mycompany.app.view.MyDialogBottom.UserShowListener
                                                    public final void a() {
                                                        SettingSite settingSite4 = SettingSite.this;
                                                        settingSite4.C0(settingSite4.b2);
                                                    }
                                                };
                                                return;
                                            }
                                            return;
                                        case 7:
                                            settingSite3.o0(new Intent(settingSite3.f1, (Class<?>) MainListSearch.class), 15);
                                            return;
                                        case 8:
                                            settingSite3.o0(new Intent(settingSite3.f1, (Class<?>) MainListAgent.class), 16);
                                            return;
                                        case 10:
                                            PrefAlbum.P = z;
                                            PrefSet.d(0, settingSite3.f1, "mLinkApp", z);
                                            return;
                                        case 11:
                                            MyPopupMenu myPopupMenu5 = settingSite3.c2;
                                            if (myPopupMenu5 == null) {
                                                if (myPopupMenu5 != null) {
                                                    settingSite3.Z0 = null;
                                                    myPopupMenu5.a();
                                                    settingSite3.c2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    final int length = MainConst.g.length;
                                                    for (int i10 = 0; i10 < length; i10++) {
                                                        int i11 = MainConst.g[i10];
                                                        int i12 = MainConst.h[i11];
                                                        if (PrefZone.H == i11) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        arrayList3.add(new MyPopupAdapter.PopMenuItem(i11, i12, z4));
                                                    }
                                                    MyPopupMenu myPopupMenu6 = new MyPopupMenu(settingSite3, settingSite3.E1, viewHolder.D, arrayList3, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSite.10
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i13 = SettingSite.e2;
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            MyPopupMenu myPopupMenu7 = settingSite4.c2;
                                                            if (myPopupMenu7 != null) {
                                                                settingSite4.Z0 = null;
                                                                myPopupMenu7.a();
                                                                settingSite4.c2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i13) {
                                                            int i14 = i13 % length;
                                                            if (PrefZone.H != i14) {
                                                                PrefZone.H = i14;
                                                                SettingSite settingSite4 = SettingSite.this;
                                                                PrefSet.f(settingSite4.f1, 15, i14, "mOpenLink4");
                                                                SettingListAdapter settingListAdapter2 = settingSite4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(11, MainConst.h[i14]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingSite3.c2 = myPopupMenu6;
                                                    settingSite3.Z0 = myPopupMenu6;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        case 12:
                                            MyPopupMenu myPopupMenu7 = settingSite3.d2;
                                            if (myPopupMenu7 == null) {
                                                if (myPopupMenu7 != null) {
                                                    settingSite3.Z0 = null;
                                                    myPopupMenu7.a();
                                                    settingSite3.d2 = null;
                                                }
                                                if (viewHolder != null && viewHolder.D != null) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    final int length2 = MainConst.k.length;
                                                    for (int i13 = 0; i13 < length2; i13++) {
                                                        int i14 = MainConst.k[i13];
                                                        int i15 = MainConst.l[i14];
                                                        if (PrefZone.I == i14) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        arrayList4.add(new MyPopupAdapter.PopMenuItem(i14, i15, z5));
                                                    }
                                                    MyPopupMenu myPopupMenu8 = new MyPopupMenu(settingSite3, settingSite3.E1, viewHolder.D, arrayList4, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.setting.SettingSite.11
                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final void a() {
                                                            int i16 = SettingSite.e2;
                                                            SettingSite settingSite4 = SettingSite.this;
                                                            MyPopupMenu myPopupMenu9 = settingSite4.d2;
                                                            if (myPopupMenu9 != null) {
                                                                settingSite4.Z0 = null;
                                                                myPopupMenu9.a();
                                                                settingSite4.d2 = null;
                                                            }
                                                        }

                                                        @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                        public final boolean b(View view, int i16) {
                                                            int i17 = i16 % length2;
                                                            if (PrefZone.I != i17) {
                                                                PrefZone.I = i17;
                                                                SettingSite settingSite4 = SettingSite.this;
                                                                PrefSet.f(settingSite4.f1, 15, i17, "mOpenImage3");
                                                                SettingListAdapter settingListAdapter2 = settingSite4.N1;
                                                                if (settingListAdapter2 != null) {
                                                                    settingListAdapter2.F(12, MainConst.l[i17]);
                                                                }
                                                            }
                                                            return true;
                                                        }
                                                    });
                                                    settingSite3.d2 = myPopupMenu8;
                                                    settingSite3.Z0 = myPopupMenu8;
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                    }
                                }
                            });
                            settingSite2.N1 = settingListAdapter;
                            settingSite2.L1.setAdapter(settingListAdapter);
                            settingSite2.M0();
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
            DialogListBook dialogListBook = this.b2;
            if (dialogListBook != null) {
                dialogListBook.dismiss();
                this.b2 = null;
                return;
            }
            return;
        }
        DialogListBook dialogListBook2 = this.b2;
        if (dialogListBook2 != null) {
            dialogListBook2.r(false);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        DialogListBook dialogListBook;
        super.onResume();
        if (!this.X1 && (dialogListBook = this.b2) != null) {
            dialogListBook.s(true);
        }
        this.X1 = false;
    }
}
