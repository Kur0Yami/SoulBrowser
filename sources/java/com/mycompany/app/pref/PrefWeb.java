package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class PrefWeb extends PrefCore {
    public static boolean A;
    public static boolean B;
    public static int C;
    public static int D;
    public static boolean E;
    public static int F;
    public static int G;
    public static boolean H;
    public static boolean I;
    public static boolean J;
    public static int K;
    public static int L;
    public static boolean M;
    public static int N;
    public static int O;
    public static int P;
    public static int Q;
    public static int R;
    public static boolean S;
    public static boolean T;
    public static boolean U;
    public static int V;
    public static int W;
    public static int X;
    public static int Y;
    public static boolean Z;
    /** Bitmask of enabled tab-bar / Tab menu items (ids 0–12). Default: all on. */
    public static int a0;
    /** Default tab folder (group) color ARGB. Default: red (-65536). */
    public static int b0;
    /** Default tab in image-link long-press menu: 0=Link, 1=Image, 2=Last active. Default: 2. */
    public static int c0;
    /** Preview URL bar location: 0=Top, 1=Bottom (above buttons), 2=With buttons. Default: 0. */
    public static int d0;
    /** Slash-separated tab-bar / Tab menu order (ids 0-12). Default: "" (natural order). */
    public static String e0;
    /** Bitmask of enabled URL-bar long-press menu items (ids 0–7). Default: all on. */
    public static int f0;
    /** Slash-separated URL-bar long-press menu order (ids 0-7). Default: "" (natural order). */
    public static String g0;
    /** Bitmask of enabled text-selection ActionMode items (ids 0–4). Default: all on. */
    public static int h0;
    /** Slash-separated text-selection ActionMode order (ids 0-4). Default: "" (natural order). */
    public static String i0;
    public static String i;
    public static boolean j;
    public static String k;
    public static String l;
    public static String m;
    public static int n;
    public static boolean o;
    public static boolean p;
    public static int q;
    public static int r;
    public static int s;
    public static boolean t;
    public static boolean u;
    public static boolean v;
    public static boolean w;
    public static int x;
    public static boolean y;
    public static int z;

    public PrefWeb(Context context) {
        super(context, "PrefWeb");
    }

    public static PrefWeb r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefWeb(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefWeb prefWeb = p2.a0;
        if (prefWeb == null) {
            synchronized (PrefWeb.class) {
                try {
                    if (p2.a0 == null) {
                        p2.a0 = new PrefWeb(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefWeb.d)) {
            synchronized (PrefWeb.class) {
                p2.a0.i(context, "PrefWeb");
            }
            z2 = false;
        }
        if (z2 || p2.a0.j()) {
            p2.a0.k();
        }
        return p2.a0;
    }

    public static void s(Context context, boolean z2) {
        PrefWeb r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mDeskLock", false);
        k = r2.h("mHomePage3", "file:///android_asset/shortcut.html");
        l = r2.h("mStartPage", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        m = r2.h("mTabPage", "..home_link");
        n = r2.f("mHistoryTime", 7);
        o = r2.d("mAdsBlock", true);
        p = r2.d("mAreaBlock", true);
        q = r2.f("mPopBlock2", 1);
        r = r2.f("mDataDelete2", 30);
        s = r2.f("mExitDelete2", 0);
        t = r2.d("mShowStatus", true);
        u = r2.d("mShowNavi", true);
        v = r2.d("mFixTop", false);
        w = r2.d("mFixBot", false);
        x = r2.f("mTabBar2", 0);
        y = r2.d("mTabAccent", true);
        z = r2.f("mTabColor", 5);
        A = r2.d("mTabRestore", true);
        B = r2.d("mTabKeypad", false);
        C = r2.f("mTabSwipeUp3", 30);
        D = r2.f("mTabSwipeDn3", 38);
        E = r2.d("mTabMulti", false);
        int i2 = r2.f("mTabBarMenu", 0x1fff);
        if (i2 == 0x1ff || i2 == 0x3ff || i2 == 0x7ff) {
            i2 = 0x1fff;
        }
        a0 = i2;
        b0 = r2.f("mTabFolderColor", -65536);
        c0 = r2.f("mLinkImageTab", 2);
        d0 = r2.f("mPreviewUrlBar", 0);
        e0 = r2.h("mTabBarOrder", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        f0 = r2.f("mUrlBarMenu", 0xff);
        g0 = r2.h("mUrlBarOrder", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        h0 = r2.f("mTextSelectMenu", 0x7f);
        i0 = r2.h("mTextSelectOrder", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        F = r2.f("mCookieType", 0);
        G = r2.f("mThirdType", 0);
        H = r2.d("mEnableJs", true);
        I = r2.d("mExitNoti", true);
        J = r2.d("mThemeSys", false);
        K = r2.f("mThemeUi", 0);
        L = r2.f("mThemeWeb", 0);
        M = r2.d("mThemeImg", true);
        N = r2.f("mImgBright", 70);
        O = r2.f("mThemeHead", 1);
        P = r2.f("mHeadIndex", 16);
        S = r2.d("mQuickBack", false);
        T = r2.d("mQckBckSec", false);
        U = r2.d("mDarkHome", true);
        V = r2.f("mSugEng", -1);
        W = r2.f("mSugType3", 14);
        X = r2.f("mDownLimit", 2);
        Y = r2.f("mDownBack", 2);
        Z = r2.d("mCheckDown", false);
        if (K == 2) {
            K = 0;
        }
        if (L == 2) {
            L = 0;
        }
        if (O == 2) {
            MainUtil.m7();
        }
        i = "PrefWeb";
    }

    public static void t(Context context, boolean z2) {
        PrefWeb r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        if (PrefSync.k) {
            T = z2;
            r2.l("mQckBckSec", z2);
        } else {
            S = z2;
            r2.l("mQuickBack", z2);
        }
        r2.a();
    }
}
