package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;

/* loaded from: classes3.dex */
public class PrefZtwo extends PrefCore {
    public static int A;
    public static boolean B;
    public static int C;
    public static boolean D;
    public static boolean E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static boolean J;
    public static boolean K;
    public static String L;
    public static int M;
    public static int N;
    public static boolean O;
    public static String P;
    public static int Q;
    public static String R;
    public static int S;
    public static boolean T;
    public static boolean U;
    public static boolean V;
    public static float W;
    public static boolean X;
    public static boolean Y;
    public static int Z;
    public static boolean a0;
    public static int b0;
    public static int c0;
    public static int d0;
    public static boolean e0;
    public static String i;
    public static int j;
    public static String k;
    public static boolean l;
    public static int m;
    public static String n;
    public static String o;
    public static int p;
    public static String q;
    public static boolean r;
    public static boolean s;
    public static int t;
    public static int u;
    public static int v;
    public static int w;
    public static int x;
    public static boolean y;
    public static boolean z;

    public PrefZtwo(Context context) {
        super(context, "PrefZtwo");
    }

    public static PrefZtwo r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefZtwo(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefZtwo prefZtwo = p2.d0;
        if (prefZtwo == null) {
            synchronized (PrefZtwo.class) {
                try {
                    if (p2.d0 == null) {
                        p2.d0 = new PrefZtwo(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefZtwo.d)) {
            synchronized (PrefZtwo.class) {
                p2.d0.i(context, "PrefZtwo");
            }
            z2 = false;
        }
        if (z2 || p2.d0.j()) {
            p2.d0.k();
        }
        return p2.d0;
    }

    public static void s(Context context, boolean z2) {
        PrefZtwo r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        boolean z3 = MainConst.b;
        j = r2.f("mSearchType2", 4);
        k = r2.h("mSearchUser", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        l = r2.d("mSearchForm2", false);
        m = r2.f("mSearchColor", 0);
        n = r2.h("mSoulAgent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        o = r2.h("mSoulAgName", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        p = r2.f("mAgentType", 0);
        q = r2.h("mAgentUser", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        r = r2.d("mTabIndi", false);
        s = r2.d("mTabLoop", true);
        t = r2.f("mSenseTop2", 100);
        u = r2.f("mSenseBot2", 100);
        v = r2.f("mSenseLeft2", 100);
        w = r2.f("mSenseRight2", 100);
        x = r2.f("mSenseCenter2", 100);
        y = r2.d("mQuickDown2", false);
        z = r2.d("mTabDown2", false);
        A = r2.f("mWebScale", 1);
        B = r2.d("mAutoComp", true);
        C = r2.f("mTabOpen2", 0);
        D = r2.d("mScrollAnim", false);
        E = r2.d("mAddPage", !z3);
        F = r2.f("mTabLimit", 0);
        G = r2.f("mTabMemory", 5);
        H = r2.f("mPageMemory", 5);
        I = r2.f("mDayMemory", 2);
        J = r2.d("mNewsUse", false);
        K = r2.d("mNewsAllow", true);
        L = r2.h("mNewsUrl", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        M = r2.f("mNewsOpen", 0);
        N = r2.f("mNewsLang2", -1);
        O = r2.d("mNewsTitle", true);
        P = r2.h("mNewsPick", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Q = r2.f("mNewsTopic", 0);
        R = r2.h("mNewsSearch", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        S = r2.f("mReadMode", 0);
        T = r2.d("mAutoPlay", true);
        U = r2.d("mYouUnmute", true);
        V = r2.d("mYouSpdSave", false);
        W = r2.e("mYouSpdRate", 1.0f);
        X = r2.d("mLocNoti", true);
        Y = r2.d("mLocTrans", false);
        Z = r2.f("mRecentLimit", 20);
        a0 = r2.d("mRecentSecret", false);
        b0 = r2.f("mRecentLocal", 5);
        c0 = r2.f("mRecentTitle", 5);
        d0 = r2.f("mRecentTrans", 5);
        e0 = r2.d("mNotiMenu", true);
        if (z3) {
            J = false;
            K = false;
        }
        i = "PrefZtwo";
    }

    public static void t(Context context) {
        PrefZtwo r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(p, "mAgentType");
        r2.p("mAgentUser", q);
        r2.a();
    }

    public static void u(Context context) {
        PrefZtwo r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(Q, "mNewsTopic");
        r2.p("mNewsSearch", R);
        r2.a();
    }

    public static void v(Context context) {
        if (context != null) {
            if (j < 10) {
                l = false;
            } else if (TextUtils.isEmpty(k)) {
                l = false;
            } else {
                l = k.contains("%s");
            }
            PrefZtwo r2 = r(context, false);
            if (r2 == null) {
                return;
            }
            r2.n(j, "mSearchType2");
            r2.p("mSearchUser", k);
            r2.l("mSearchForm2", l);
            r2.n(m, "mSearchColor");
            r2.a();
        }
    }
}
