package com.mycompany.app.dialog;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookFilter;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public class DialogSetFilter extends MyDialogBottom {
    public static final String[][] p0 = {new String[]{"EasyList", "https://easylist-downloads.adblockplus.org/easylist.txt", "abp", null}, new String[]{"EasyPrivacy", "https://easylist-downloads.adblockplus.org/easyprivacy.txt", "abp", null}, new String[]{"EasyList Cookie List", "https://easylist-downloads.adblockplus.org/fanboy-cookiemonster.txt", "abp", null}, new String[]{"Fanboy's Annoyance List", "https://easylist-downloads.adblockplus.org/fanboy-annoyance.txt", "abp", null}, new String[]{"Fanboy's Notifications Blocking List", "https://easylist-downloads.adblockplus.org/fanboy-notifications.txt", "abp", null}, new String[]{"Fanboy's Social Blocking List", "https://easylist-downloads.adblockplus.org/fanboy-social.txt", "abp", null}, new String[]{"ABP filters", "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt", "https://github.com/abp-filters/abp-filters-anti-cv", null}, new String[]{"CPBL Filters for Adblock Plus", "https://raw.githubusercontent.com/bongochong/CombinedPrivacyBlockLists/master/cpbl-abp-list.txt", "https://git.io/JTTLB", null}, new String[]{"NoCoin", "https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/nocoin.txt", "https://github.com/hoshsadiq/adblock-nocoin-list", null}, new String[]{"Spam404", "https://raw.githubusercontent.com/Spam404/lists/master/adblock-list.txt", "https://www.spam404.com", null}, new String[]{"ABPindo", "https://easylist-downloads.adblockplus.org/abpindo.txt", "https://github.com/ABPindo/indonesianadblockrules", "Bahasa Indonesia, Melayu"}, new String[]{"EasyList Czech and Slovak", "https://raw.github.com/tomasko126/easylistczechandslovak/master/filters.txt", "https://adblock.sk", "Čeština, Slovenčina"}, new String[]{"EasyList Germany", "https://easylist-downloads.adblockplus.org/easylistgermany.txt", "abp", "Deutsch"}, new String[]{"Raajje Adlist", "https://raw.githubusercontent.com/evenxzero/Raajje-AdList/master/filter.txt", "https://github.com/evenxzero/Raajje-AdList", "Dhivehi"}, new String[]{"Eesti saitidele kohandatud filter", "https://adblock.ee/list.php", "https://adblock.ee", "Eesti keel"}, new String[]{"Estonian filters by Gurud.ee", "https://gurud.ee/ab.txt", "https://gurud.ee", "Eesti keel"}, new String[]{"Peter Lowe's list", "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus&mimetype=plaintext", "https://pgl.yoyo.org/adservers", "English"}, new String[]{"Colombian filters by yecarrillo", "https://raw.githubusercontent.com/yecarrillo/adblock-colombia/master/adblock_co.txt", "https://github.com/yecarrillo/adblock-colombia", "Español"}, new String[]{"EasyList Spanish", "https://easylist-downloads.adblockplus.org/easylistspanish.txt", "abp", "Español"}, new String[]{"Tiswagos Liri AdBlockList", "https://raw.githubusercontent.com/Xaival/AdBlockList/main/Adblock_list.txt", "https://github.com/Xaival/AdBlockList", "Español"}, new String[]{"Liste FR", "https://easylist-downloads.adblockplus.org/liste_fr.txt", "https://forums.lanik.us/viewforum.php?f=91", "Français"}, new String[]{"EasyList Italy", "https://easylist-downloads.adblockplus.org/easylistitaly.txt", "abp", "Italiano"}, new String[]{"Xfiles", "https://raw.githubusercontent.com/gioxx/xfiles/master/filtri.txt", "https://xfiles.noads.it", "Italiano"}, new String[]{"Latvian List", "https://raw.githubusercontent.com/Latvian-List/adblock-latvian/master/lists/latvian-list.txt", "https://github.com/Latvian-List/adblock-latvian", "Latviešu valoda"}, new String[]{"EasyList Lithuania", "https://easylist-downloads.adblockplus.org/easylistlithuania.txt", "https://github.com/EasyList-Lithuania/easylist_lithuania", "Lietuvių kalba"}, new String[]{"hufilter", "https://raw.githubusercontent.com/hufilter/hufilter/refs/heads/gh-pages/hufilter-abp.txt", "https://github.com/hufilter/hufilter/wiki", "Magyar"}, new String[]{"EasyList Dutch", "https://easylist-downloads.adblockplus.org/easylistdutch.txt", "abp", "Nederlands"}, new String[]{"Dandelion Sprout's Nordic Filters", "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianExperimentalList%20alternate%20versions/NordicFiltersABP-Inclusion.txt", "https://github.com/DandelionSprout/adfilt", "Norsk, Norsk, Norsk, Dansk, Íslenska, Føroyskt, Kalaallisut"}, new String[]{"EasyList Polish", "https://easylist-downloads.adblockplus.org/easylistpolish.txt", "abp", "Polski"}, new String[]{"EasyList Portuguese", "https://easylist-downloads.adblockplus.org/easylistportuguese.txt", "abp", "Português"}, new String[]{"RU AdList", "https://easylist-downloads.adblockplus.org/advblock.txt", "https://forums.lanik.us/viewforum.php?f=102", "Русский, Українська"}, new String[]{"ROList", "https://easylist-downloads.adblockplus.org/rolist.txt", "https://zoso.ro/rolist", "Românesc"}, new String[]{"ABPVN List", "https://easylist-downloads.adblockplus.org/abpvn.txt", "https://abpvn.com", "Tiếng Việt"}, new String[]{"void.gr", "https://www.void.gr/kargig/void-gr-filters.txt", "https://github.com/kargig/greek-adblockplus-filter", "ελληνικά"}, new String[]{"Bulgarian list", "https://stanev.org/abp/adblock_bg.txt", "https://stanev.org/abp", "български"}, new String[]{"EasyList Hebrew", "https://raw.githubusercontent.com/easylist/EasyListHebrew/master/EasyListHebrew.txt", "https://github.com/easylist/EasyListHebrew", "עברית"}, new String[]{"Liste AR", "https://easylist-downloads.adblockplus.org/Liste_AR.txt", "https://code.google.com/p/liste-ar-adblock", "العربية"}, new String[]{"AdBlockFarsi", "https://raw.githubusercontent.com/SlashArash/adblockfa/master/adblockfa.txt", "https://github.com/SlashArash/adblockfa", "فارسی"}, new String[]{"IndianList", "https://easylist-downloads.adblockplus.org/indianlist.txt", "abp", "বাংলা (ভারত), ગુજરાતી (ભારત), भारतीय, ਪੰਜਾਬੀ (ਭਾਰਤ), অসমীয়া, मराठी, മലയാളം, తెలుగు, ಕನ್ನಡ, ଓଡ଼ିଆ, नेपाली, සිංහල"}, new String[]{"EasyList China", "https://easylist-downloads.adblockplus.org/easylistchina.txt", "https://github.com/easylist/easylistchina", "中文"}, new String[]{"CJX's Annoyance List", "https://easylist-downloads.adblockplus.org/cjx-annoyance.txt", "https://github.com/cjx82630/cjxlist", "Removes self-promotion and privacy protection, 中文"}, new String[]{"ABP Japanese Filters", "https://raw.githubusercontent.com/k2jp/abp-japanese-filters/master/abpjf.txt", "https://github.com/k2jp/abp-japanese-filters", "日本語"}, new String[]{"KoreanList", "https://easylist-downloads.adblockplus.org/koreanlist.txt", "https://forums.lanik.us/viewforum.php?f=111", "한국어"}, new String[]{"YousList", "https://raw.githubusercontent.com/yous/YousList/master/youslist.txt", "https://github.com/yous/YousList", "한국어"}};
    public static final String[][] q0 = {new String[]{"Base filter", "filter_2_Base"}, new String[]{"Mobile ads filter", "filter_11_Mobile"}, new String[]{"Annoyances filter", "filter_14_Annoyances"}, new String[]{"DNS filter", "filter_15_DnsFilter"}, new String[]{"Filter unblocking search ads and self-promotions", "filter_10_Useful"}, new String[]{"Social media filter", "filter_4_Social"}, new String[]{"Tracking Protection filter", "filter_3_Spyware"}, new String[]{"URL Tracking filter", "filter_17_TrackParam"}, new String[]{"Experimental filter", "filter_5_Experimental"}, new String[]{"Chinese filter", "filter_224_Chinese"}, new String[]{"Dutch filter", "filter_8_Dutch"}, new String[]{"French filter", "filter_16_French"}, new String[]{"German filter", "filter_6_German"}, new String[]{"Japanese filter", "filter_7_Japanese"}, new String[]{"Russian filter", "filter_1_Russian"}, new String[]{"Spanish/Portuguese filter", "filter_9_Spanish"}, new String[]{"Turkish filter", "filter_13_Turkish"}, new String[]{"Ukrainian filter", "filter_23_Ukrainian"}};
    public static final String[][] r0 = {new String[]{"https://easylist.to/easylist/easylist.txt", "https://easylist-downloads.adblockplus.org/easylist.txt"}, new String[]{"https://easylist.to/easylist/easyprivacy.txt", "https://easylist-downloads.adblockplus.org/easyprivacy.txt"}, new String[]{"https://secure.fanboy.co.nz/fanboy-cookiemonster.txt", "https://easylist-downloads.adblockplus.org/fanboy-cookiemonster.txt"}, new String[]{"https://secure.fanboy.co.nz/fanboy-annoyance.txt", "https://easylist-downloads.adblockplus.org/fanboy-annoyance.txt"}, new String[]{"https://easylist.to/easylist/fanboy-social.txt", "https://easylist-downloads.adblockplus.org/fanboy-social.txt"}, new String[]{"https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/abpindo.txt", "https://easylist-downloads.adblockplus.org/abpindo.txt"}, new String[]{"https://notabug.org/latvian-list/adblock-latvian/raw/master/lists/latvian-list.txt", "https://raw.githubusercontent.com/Latvian-List/adblock-latvian/master/lists/latvian-list.txt"}, new String[]{"https://raw.githubusercontent.com/EasyList-Lithuania/easylist_lithuania/master/easylistlithuania.txt", "https://easylist-downloads.adblockplus.org/easylistlithuania.txt"}, new String[]{"https://www.zoso.ro/pages/rolist.txt", "https://easylist-downloads.adblockplus.org/rolist.txt"}, new String[]{"https://raw.githubusercontent.com/abpvn/abpvn/master/filter/abpvn.txt", "https://easylist-downloads.adblockplus.org/abpvn.txt"}, new String[]{"https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt", "https://easylist-downloads.adblockplus.org/cjx-annoyance.txt"}, new String[]{"https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_English/filter.txt", "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_Base/filter.txt"}};
    public MainActivity a0;
    public Context b0;
    public SetFilterListener c0;
    public final boolean d0;
    public boolean[] e0;
    public MyDialogLinear f0;
    public ImageView g0;
    public AppCompatTextView h0;
    public AppCompatTextView i0;
    public MyButtonCheck j0;
    public MyRecyclerView k0;
    public MyLineText l0;
    public SettingListAdapter m0;
    public DialogConfirm n0;
    public DialogWebView o0;

    /* loaded from: classes3.dex */
    public interface SetFilterListener {
        void a(ArrayList arrayList);
    }

    public DialogSetFilter(MainActivity mainActivity, boolean z, SetFilterListener setFilterListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = setFilterListener;
        this.d0 = z;
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFilter.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetFilter dialogSetFilter = DialogSetFilter.this;
                Context context = dialogSetFilter.b0;
                if (context != null) {
                    int i = R.id.item_count_view;
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    RelativeLayout relativeLayout = new RelativeLayout(context);
                    q.addView(relativeLayout, -1, MainApp.g1);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setId(i);
                    int i2 = MainApp.F1;
                    appCompatTextView.setPadding(i2, 0, i2, 0);
                    appCompatTextView.setGravity(16);
                    appCompatTextView.setTextDirection(3);
                    appCompatTextView.setTextSize(1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.g1);
                    layoutParams.addRule(21);
                    layoutParams.setMarginEnd((int) MainUtil.G(context, 60.0f));
                    relativeLayout.addView(appCompatTextView, layoutParams);
                    ImageView imageView = new ImageView(context);
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    int i3 = MainApp.f1;
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i3, i3);
                    layoutParams2.topMargin = MainApp.G1;
                    layoutParams2.setMarginStart(MainApp.F1);
                    relativeLayout.addView(imageView, layoutParams2);
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    appCompatTextView2.setGravity(16);
                    appCompatTextView2.setSingleLine(true);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
                    layoutParams3.addRule(16, i);
                    layoutParams3.setMarginStart((int) MainUtil.G(context, 52.0f));
                    relativeLayout.addView(appCompatTextView2, layoutParams3);
                    MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                    int i4 = MainApp.g1;
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i4, i4);
                    layoutParams4.addRule(21);
                    layoutParams4.setMarginEnd(MainApp.F1);
                    relativeLayout.addView(myButtonCheck, layoutParams4);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    MainUtil.r7(myRecyclerView);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams5.weight = 1.0f;
                    q.addView(myRecyclerView, layoutParams5);
                    MyLineText myLineText = new MyLineText(context);
                    myLineText.setGravity(17);
                    myLineText.setTextSize(1, 16.0f);
                    myLineText.setText(R.string.add);
                    myLineText.t(MainApp.E1);
                    q.addView(myLineText, -1, MainApp.g1);
                    dialogSetFilter.f0 = q;
                    dialogSetFilter.g0 = imageView;
                    dialogSetFilter.h0 = appCompatTextView2;
                    dialogSetFilter.i0 = appCompatTextView;
                    dialogSetFilter.j0 = myButtonCheck;
                    dialogSetFilter.k0 = myRecyclerView;
                    dialogSetFilter.l0 = myLineText;
                    Handler handler2 = dialogSetFilter.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetFilter.2
                        /* JADX WARN: Removed duplicated region for block: B:112:0x014a  */
                        /* JADX WARN: Removed duplicated region for block: B:115:0x0130 A[LOOP:5: B:114:0x012e->B:115:0x0130, LOOP_END] */
                        /* JADX WARN: Removed duplicated region for block: B:23:0x00e0  */
                        /* JADX WARN: Removed duplicated region for block: B:56:0x013e  */
                        /* JADX WARN: Removed duplicated region for block: B:60:0x015b  */
                        /* JADX WARN: Removed duplicated region for block: B:86:0x019d  */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                Method dump skipped, instructions count: 601
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogSetFilter.AnonymousClass2.run():void");
                        }
                    });
                }
            }
        });
    }

    public static void B(Context context, HashMap hashMap) {
        if (!hashMap.isEmpty()) {
            try {
                Set<String> keySet = hashMap.keySet();
                if (keySet != null) {
                    for (String str : keySet) {
                        if (!TextUtils.isEmpty(str)) {
                            String str2 = (String) hashMap.get(str);
                            if (!TextUtils.isEmpty(str2)) {
                                DbBookFilter dbBookFilter = DbBookFilter.f12931c;
                                if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("_path", str2);
                                    DbUtil.h(DbBookFilter.f(context).getWritableDatabase(), "DbBookFilter_table", contentValues, "_path=?", new String[]{str});
                                }
                                MainUtil.w6(context, MainUtil.a4(context, str), MainUtil.a4(context, str2));
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static String C(int i) {
        if (i >= 0 && i < 18) {
            return android.support.v4.media.a.p(new StringBuilder("https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/"), q0[i][1], "/filter.txt");
        }
        return null;
    }

    public static String D(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.endsWith("filter-AdGuard.txt") && !str.endsWith("filter-uBlockOrigin.txt")) {
            return null;
        }
        if (str.startsWith("https://raw.githubusercontent.com/")) {
            i = 34;
            if (!str.startsWith("List-KR/List-KR/", 34)) {
                return null;
            }
        } else {
            if (str.startsWith("https://cdn.jsdelivr.net/gh/")) {
                i = 28;
                if (!str.startsWith("List-KR/List-KR@", 28)) {
                    return null;
                }
            }
            return null;
        }
        int i2 = i + 16;
        if (str.startsWith("master/", i2)) {
            return "master/";
        }
        if (!str.startsWith("latest/", i2)) {
            return null;
        }
        return "latest/";
    }

    public static String E(String str) {
        String[][] strArr;
        boolean startsWith;
        if (!TextUtils.isEmpty(str)) {
            String c2 = MainUtil.c2(str);
            if (!TextUtils.isEmpty(c2)) {
                if (TextUtils.isEmpty(c2)) {
                    startsWith = false;
                } else {
                    startsWith = c2.startsWith("https://raw.githubusercontent.com/AdguardTeam/");
                }
                if (startsWith) {
                    for (int i = 0; i < 18; i++) {
                        if (c2.equals(C(i))) {
                            return c2;
                        }
                    }
                } else {
                    for (int i2 = 0; i2 < 44; i2++) {
                        if (c2.equals(p0[i2][1])) {
                            return c2;
                        }
                    }
                }
            }
            int i3 = 0;
            while (true) {
                strArr = r0;
                if (i3 < 12) {
                    if (strArr[i3][0].equals(str)) {
                        break;
                    }
                    i3++;
                } else {
                    i3 = -1;
                    break;
                }
            }
            if (i3 >= 0 && i3 < 12) {
                return strArr[i3][1];
            }
            return null;
        }
        return null;
    }

    public final void F() {
        DialogConfirm dialogConfirm = this.n0;
        if (dialogConfirm != null) {
            dialogConfirm.dismiss();
            this.n0 = null;
        }
    }

    public final void G(boolean z) {
        boolean[] zArr;
        int i;
        int i2;
        if (this.l0 != null && (zArr = this.e0) != null) {
            boolean z2 = true;
            int i3 = 0;
            boolean z3 = false;
            for (boolean z4 : zArr) {
                if (z4) {
                    i3++;
                    z3 = true;
                } else {
                    z2 = false;
                }
            }
            this.i0.setText(MainUtil.h3(i3, this.e0.length));
            this.j0.q(z2, z);
            if (z3) {
                MyLineText myLineText = this.l0;
                if (MainApp.K1) {
                    i2 = -328966;
                } else {
                    i2 = -14784824;
                }
                myLineText.setTextColor(i2);
                this.l0.setEnabled(true);
                return;
            }
            MyLineText myLineText2 = this.l0;
            if (MainApp.K1) {
                i = -8355712;
            } else {
                i = -2434342;
            }
            myLineText2.setTextColor(i);
            this.l0.setEnabled(false);
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        F();
        DialogWebView dialogWebView = this.o0;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.o0 = null;
        }
        MyDialogLinear myDialogLinear = this.f0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.f0 = null;
        }
        MyButtonCheck myButtonCheck = this.j0;
        if (myButtonCheck != null) {
            myButtonCheck.l();
            this.j0 = null;
        }
        MyRecyclerView myRecyclerView = this.k0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        SettingListAdapter settingListAdapter = this.m0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.m0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        super.dismiss();
    }
}
