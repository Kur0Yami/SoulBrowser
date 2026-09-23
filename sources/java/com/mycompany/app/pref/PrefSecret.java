package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefSecret extends PrefCore {
    public static String A;
    public static int B;
    public static String C;
    public static int D;
    public static String E;
    public static int F;
    public static int G;
    public static int H;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static long l;
    public static long m;
    public static boolean n;
    public static boolean o;
    public static boolean p;
    public static int q;
    public static boolean r;
    public static int s;
    public static String t;
    public static boolean u;
    public static int v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static int z;

    public PrefSecret(Context context) {
        super(context, "PrefSecret");
    }

    public static PrefSecret r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefSecret(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefSecret prefSecret = p2.V;
        if (prefSecret == null) {
            synchronized (PrefSecret.class) {
                try {
                    if (p2.V == null) {
                        p2.V = new PrefSecret(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefSecret.d)) {
            synchronized (PrefSecret.class) {
                p2.V.i(context, "PrefSecret");
            }
            z2 = false;
        }
        if (z2 || p2.V.j()) {
            p2.V.k();
        }
        return p2.V;
    }

    public static void s(Context context, boolean z2) {
        PrefSecret r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mInitQuick", true);
        k = r2.d("mCheckTab", true);
        l = r2.g("mSecretHist", 0L);
        m = r2.g("mSecretDown", 1L);
        n = r2.d("mKeepTab", true);
        o = r2.d("mKeepLogin", true);
        p = r2.d("mSecretNoti", true);
        q = r2.f("mShotType", 0);
        r = r2.d("mShotSecret", false);
        s = r2.f("mLockType2", 0);
        t = r2.h("mLockCode2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        u = r2.d("mLockSecret2", false);
        v = r2.f("mLockReset3", 112);
        w = r2.d("mLockSkip", false);
        x = r2.d("mSavePass2", false);
        y = r2.d("mLoginLock", false);
        z = r2.f("mPassLockType2", 0);
        A = r2.h("mPassLockCode2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        B = r2.f("mLinkLockType", 0);
        C = r2.h("mLinkLockCode", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        D = r2.f("mTouchLockType", 0);
        E = r2.h("mTouchLockCode", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        F = r2.f("mSecureDnt", 0);
        G = r2.f("mSecureGpc", 0);
        H = r2.f("mSecureKey", 2);
        i = "PrefSecret";
    }

    public static void t(Context context) {
        PrefSecret r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(B, "mLinkLockType");
        r2.p("mLinkLockCode", C);
        r2.a();
    }

    public static void u(Context context) {
        PrefSecret r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(s, "mLockType2");
        r2.p("mLockCode2", t);
        r2.a();
    }

    public static void v(Context context) {
        PrefSecret r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.l("mSavePass2", x);
        r2.l("mLoginLock", y);
        r2.n(z, "mPassLockType2");
        r2.p("mPassLockCode2", A);
        r2.a();
    }

    public static void w(Context context) {
        PrefSecret r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(D, "mTouchLockType");
        r2.p("mTouchLockCode", E);
        r2.a();
    }
}
