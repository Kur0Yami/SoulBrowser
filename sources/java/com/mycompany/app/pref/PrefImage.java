package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;

/* loaded from: classes3.dex */
public class PrefImage extends PrefCore {
    public static int A;
    public static int B;
    public static float C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static int H;
    public static int I;
    public static int J;
    public static String i;
    public static boolean j;
    public static int k;
    public static int l;
    public static boolean m;
    public static boolean n;
    public static boolean o;
    public static int p;
    public static boolean q;
    public static int r;
    public static boolean s;
    public static int t;
    public static int u;
    public static boolean v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static int z;

    public PrefImage(Context context) {
        super(context, "PrefImage");
    }

    public static PrefImage r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefImage(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefImage prefImage = p2.P;
        if (prefImage == null) {
            synchronized (PrefImage.class) {
                try {
                    if (p2.P == null) {
                        p2.P = new PrefImage(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefImage.d)) {
            synchronized (PrefImage.class) {
                p2.P.i(context, "PrefImage");
            }
            z2 = false;
        }
        if (z2 || p2.P.j()) {
            p2.P.k();
        }
        return p2.P;
    }

    public static void s(Context context, boolean z2) {
        PrefImage r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mGuideTap", true);
        k = r2.f("mIndex", 0);
        r2.f("mPage", 0);
        l = r2.f("mRotate", 0);
        m = r2.d("mShowThumb", true);
        n = r2.d("mShowGuide", true);
        o = r2.d("mVolTurn", false);
        p = r2.f("mScreenOff", 1);
        q = r2.d("mUserBright3", false);
        r = r2.f("mBright3", 90);
        s = r2.d("mReverse", false);
        t = r2.f("mViewPort", 0);
        u = r2.f("mViewLand", 3);
        v = r2.d("mFitPort", false);
        w = r2.d("mFitLand", false);
        x = r2.d("mSplitPort", false);
        y = r2.d("mSplitLand", false);
        z = r2.f("mMarginPort", -1);
        A = r2.f("mMarginLand", -1);
        B = r2.f("mBackColor", MainConst.v[5]);
        C = r2.e("mBackPos", MainConst.w[5]);
        D = r2.f("mTapLeft", 0);
        E = r2.f("mTapRight", 0);
        F = r2.f("mPortAreaLeft", MainApp.i1);
        G = r2.f("mPortAreaRight", MainApp.i1);
        H = r2.f("mLandAreaLeft", MainApp.i1 * 2);
        I = r2.f("mLandAreaRight", MainApp.i1 * 2);
        J = r2.f("mPdfControlTimeout", 3);
        if (z == -1) {
            z = MainApp.u1;
        }
        if (A == -1) {
            A = MainApp.u1;
        }
        i = "PrefImage";
    }
}
