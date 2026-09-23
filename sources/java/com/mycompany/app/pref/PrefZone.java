package com.mycompany.app.pref;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefZone extends PrefCore {
    public static boolean A;
    public static boolean B;
    public static int C;
    public static boolean D;
    public static boolean E;
    public static boolean F;
    public static boolean G;
    public static int H;
    public static int I;
    public static boolean J;
    public static int K;
    public static int L;
    public static int M;
    public static int N;
    public static int O;
    public static int P;
    public static int Q;
    public static int R;
    public static int S;
    public static int T;
    public static int U;
    public static int V;
    public static int W;
    public static int X;
    public static int Y;
    public static int Z;
    public static int a0;
    public static boolean b0;
    public static boolean c0;
    public static boolean d0;
    public static int e0;
    public static int f0;
    public static String g0;
    public static String h0;
    public static String i;
    public static String i0;
    public static boolean j;
    public static int j0;
    public static boolean k;
    public static int k0;
    public static String l;
    public static boolean l0;
    public static boolean m;
    public static boolean m0;
    public static int n;
    public static boolean n0;
    public static boolean o;
    public static boolean o0;
    public static boolean p;
    public static boolean p0;
    public static boolean q;
    public static boolean q0;
    public static int r;
    public static boolean r0;
    public static boolean s;
    public static boolean s0;
    public static boolean t;
    public static boolean t0;
    public static boolean u;
    public static int u0;
    public static boolean v;
    public static int w;
    public static int x;
    public static int y;
    public static boolean z;

    public PrefZone(Context context) {
        super(context, "PrefZone");
    }

    public static PrefZone r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefZone(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefZone prefZone = p2.b0;
        if (prefZone == null) {
            synchronized (PrefZone.class) {
                try {
                    if (p2.b0 == null) {
                        p2.b0 = new PrefZone(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefZone.d)) {
            synchronized (PrefZone.class) {
                p2.b0.i(context, "PrefZone");
            }
            z2 = false;
        }
        if (z2 || p2.b0.j()) {
            p2.b0.k();
        }
        return p2.b0;
    }

    public static void s(Context context, Resources resources, boolean z2) {
        PrefZone r2;
        int i2;
        int i3;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        if (resources != null && resources.getConfiguration().getLayoutDirection() == 1) {
            i2 = 1;
        } else {
            i2 = 3;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            i3 = 2;
        } else {
            i3 = 0;
        }
        int i4 = MainApp.D1;
        j = r2.d("mHomeClose", false);
        k = r2.d("mUserFont", false);
        l = r2.h("mFontPath", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        m = r2.d("mFontBold", false);
        n = r2.f("mDownPos", 3);
        o = r2.d("mShowPip", true);
        p = r2.d("mShowFull", true);
        q = r2.d("mShowDown", true);
        r = r2.f("mYouPos", 3);
        s = r2.d("mYouPip", true);
        t = r2.d("mYouRate", true);
        u = r2.d("mHideImage", false);
        v = r2.d("mPreRaster", false);
        w = r2.f("mTextSize", 100);
        x = r2.f("mScrollPos", i2);
        y = r2.f("mShowUpPos", 2);
        z = r2.d("mPullRefresh", true);
        A = r2.d("mNotiShort", true);
        B = r2.d("mVolScroll", false);
        C = r2.f("mTabListType", 0);
        D = r2.d("mTabMiniMode", false);
        E = r2.d("mSwipeDelete", true);
        F = r2.d("mTabUndelete", true);
        G = r2.d("mBackPlay", true);
        H = r2.f("mOpenLink4", 0);
        I = r2.f("mOpenImage3", 0);
        J = r2.d("mLinkImage", false);
        K = r2.f("mGesTop", 1);
        L = r2.f("mGesBot", 1);
        M = r2.f("mGesLeft", i3);
        N = r2.f("mGesRight", i3);
        O = r2.f("mGesCenter", 2);
        P = r2.f("mPortAreaTop", MainApp.Y0);
        Q = r2.f("mPortAreaBot", MainApp.Y0);
        R = r2.f("mPortAreaLeft", i4);
        S = r2.f("mPortAreaRight", i4);
        T = r2.f("mLandAreaTop", MainApp.Y0);
        U = r2.f("mLandAreaBot", MainApp.Y0);
        V = r2.f("mLandAreaLeft", MainApp.f1);
        W = r2.f("mLandAreaRight", MainApp.f1);
        X = r2.f("mGesUpLt3", 0);
        Y = r2.f("mGesUpRt3", 0);
        Z = r2.f("mGesDnLt3", 0);
        a0 = r2.f("mGesDnRt3", 0);
        b0 = r2.d("mGuideZoom", true);
        c0 = r2.d("mPopNoti", true);
        d0 = r2.d("mSnkGuide", true);
        e0 = LinkMenuPrefs.mask(r2);
        f0 = r2.f("mUseImg5", 8190);
        g0 = LinkMenuPrefs.order(r2);
        h0 = r2.h("mImgOrder4", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        i0 = r2.h("mSearchUse2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        j0 = r2.f("mMultiDown", 10);
        k0 = r2.f("mRetryDown", 10);
        l0 = r2.d("mNotiDown", true);
        m0 = r2.d("mNotiAddr", true);
        n0 = r2.d("mOcrUseIcon", false);
        o0 = r2.d("mOcrUsePack", true);
        p0 = r2.d("mOcrUseLoad", true);
        q0 = r2.d("mOcrUseTrns", true);
        r0 = r2.d("mOcrUseBack", true);
        s0 = r2.d("mOcrUseZoom", true);
        t0 = r2.d("mOcrGuide", true);
        u0 = r2.f("mTailIp", 2);
        i = "PrefZone";
    }
}
