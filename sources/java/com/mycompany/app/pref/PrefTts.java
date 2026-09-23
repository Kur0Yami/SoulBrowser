package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefTts extends PrefCore {
    public static String A;
    public static String B;
    public static boolean C;
    public static boolean D;
    public static boolean E;
    public static int F;
    public static int G;
    public static boolean H;
    public static boolean I;
    public static int J;
    public static String i;
    public static boolean j;
    public static String k;
    public static float l;
    public static float m;
    public static boolean n;
    public static float o;
    public static float p;
    public static float q;
    public static float r;
    public static boolean s;
    public static boolean t;
    public static int u;
    public static boolean v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static int z;

    public PrefTts(Context context) {
        super(context, "PrefTts");
    }

    public static PrefTts r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefTts(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefTts prefTts = p2.Y;
        if (prefTts == null) {
            synchronized (PrefTts.class) {
                try {
                    if (p2.Y == null) {
                        p2.Y = new PrefTts(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefTts.d)) {
            synchronized (PrefTts.class) {
                p2.Y.i(context, "PrefTts");
            }
            z2 = false;
        }
        if (z2 || p2.Y.j()) {
            p2.Y.k();
        }
        return p2.Y;
    }

    public static void s(Context context, boolean z2) {
        PrefTts r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mTtsMode", false);
        k = r2.h("mTtsLang", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        l = r2.e("mTtsRate", 1.0f);
        m = r2.e("mTtsPitch", 1.0f);
        n = r2.d("mTtsIcon", true);
        o = r2.e("mTtsLtX", -1.0f);
        p = r2.e("mTtsRtX", -1.0f);
        q = r2.e("mTtsUpY", -1.0f);
        r = r2.e("mTtsDnY", -1.0f);
        s = r2.d("mCheckBack", false);
        t = r2.d("mCheckEle3", false);
        u = r2.f("mCheckOver2", 0);
        v = r2.d("mAutoGroup", false);
        w = r2.d("mAppKeypad", false);
        x = r2.d("mSkipKeypad", false);
        y = r2.d("mVpnMode", false);
        z = r2.f("mVpnServer", 0);
        A = r2.h("mVpnUrl", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        B = r2.h("mVpnIps", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        C = r2.d("mVpnGuide", true);
        D = r2.d("mTabLast", false);
        E = r2.d("mLastExit", false);
        F = r2.f("mWebLand1", 0);
        G = r2.f("mWebLand2", 0);
        H = r2.d("mHandMode", false);
        I = r2.d("mHandNoti", true);
        J = r2.f("mHandTop2", 60);
        i = "PrefTts";
    }

    public static void t(Context context) {
        PrefTts r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.m("mTtsLtX", o);
        r2.m("mTtsRtX", p);
        r2.m("mTtsUpY", q);
        r2.m("mTtsDnY", r);
        r2.a();
    }
}
