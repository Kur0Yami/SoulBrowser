package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefPdf extends PrefCore {
    public static int A;
    public static int B;
    public static int C;
    public static boolean D;
    public static int E;
    public static int F;
    public static boolean G;
    public static int H;
    public static boolean I;
    public static long J;
    public static int K;
    public static boolean L;
    public static long M;
    public static int N;
    public static long O;
    public static boolean P;
    public static boolean Q;
    public static boolean R;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static boolean l;
    public static int m;
    public static boolean n;
    public static int o;
    public static boolean p;
    public static boolean q;
    public static boolean r;
    public static boolean s;
    public static boolean t;
    public static boolean u;
    public static boolean v;
    public static int w;
    public static int x;
    public static int y;
    public static boolean z;

    public PrefPdf(Context context) {
        super(context, "PrefPdf");
    }

    public static PrefPdf r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefPdf(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefPdf prefPdf = p2.T;
        if (prefPdf == null) {
            synchronized (PrefPdf.class) {
                try {
                    if (p2.T == null) {
                        p2.T = new PrefPdf(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefPdf.d)) {
            synchronized (PrefPdf.class) {
                p2.T.i(context, "PrefPdf");
            }
            z2 = false;
        }
        if (z2 || p2.T.j()) {
            p2.T.k();
        }
        return p2.T;
    }

    public static void s(Context context, boolean z2) {
        PrefPdf r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mGuideCrop", true);
        k = r2.d("mCrop", false);
        l = r2.d("mNotiCrop", true);
        m = r2.f("mScreenOff", 0);
        n = r2.d("mUserBright", false);
        o = r2.f("mBright", 90);
        p = r2.d("mOnlyHttps2", false);
        q = r2.d("mSaveData", false);
        r = r2.d("mBlockAmp", true);
        s = r2.d("mBlockSsl", false);
        t = r2.d("mDebugMode", false);
        Q = r2.d("mFreshTabRestore", false);
        R = r2.d("mErudaPreload", false);
        u = r2.d("mVideoIcon2", true);
        v = r2.d("mIconLong", false);
        w = r2.f("mAppBlock2", 2);
        x = r2.f("mMaxTexSize", 0);
        y = r2.f("mMidHeight", MainApp.Y0);
        z = r2.d("mTopToBot", false);
        A = r2.f("mTopHeight", MainApp.Y0);
        B = r2.f("mBotHeight", MainApp.Y0);
        C = r2.f("mTabAdd", 3);
        D = r2.d("mTabClose", true);
        E = r2.f("mTabWidth", MainApp.Z0);
        F = r2.f("mTabHeight", MainApp.a1);
        G = r2.d("mQuickSmall", true);
        H = r2.f("mAddrType2", 0);
        I = r2.d("mFilterInit", true);
        J = r2.g("mFilterTime", 0L);
        K = r2.f("mFilterDay", 0);
        L = r2.d("mUserScript", false);
        M = r2.g("mScriptTime", 0L);
        N = r2.f("mScriptDay", 7);
        O = r2.g("mPayTime", 0L);
        P = r2.d("mPayConfirm", false);
        i = "PrefPdf";
    }
}
