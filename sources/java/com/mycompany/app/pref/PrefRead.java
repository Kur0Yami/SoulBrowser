package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;

/* loaded from: classes3.dex */
public class PrefRead extends PrefCore {
    public static boolean A;
    public static boolean B;
    public static boolean C;
    public static boolean D;
    public static boolean E;
    public static boolean F;
    public static boolean G;
    public static boolean H;
    public static boolean I;
    public static boolean J;
    public static boolean K;
    public static boolean L;
    public static boolean M;
    public static boolean N;
    public static boolean O;
    public static int P;
    public static int Q;
    public static int R;
    public static float S;
    public static int T;
    public static int U;
    public static float V;
    public static int W;
    public static int X;
    public static float Y;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static boolean l;
    public static int m;
    public static boolean n;
    public static String o;
    public static boolean p;
    public static boolean q;
    public static boolean r;
    public static boolean s;
    public static boolean t;
    public static boolean u;
    public static boolean v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static boolean z;

    public PrefRead(Context context) {
        super(context, "PrefRead");
    }

    public static PrefRead r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefRead(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefRead prefRead = p2.U;
        if (prefRead == null) {
            synchronized (PrefRead.class) {
                try {
                    if (p2.U == null) {
                        p2.U = new PrefRead(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefRead.d)) {
            synchronized (PrefRead.class) {
                p2.U.i(context, "PrefRead");
            }
            z2 = false;
        }
        if (z2 || p2.U.j()) {
            p2.U.k();
        }
        return p2.U;
    }

    public static void s(Context context, boolean z2) {
        PrefRead r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mGuideRead", true);
        k = r2.d("mGuideTxt", true);
        l = r2.d("mGuideSrc", true);
        m = r2.f("mTextSize", 100);
        n = r2.d("mUserFont", false);
        o = r2.h("mFontPath", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        p = r2.d("mFontBold", false);
        q = r2.d("mGuideDown", true);
        r = r2.d("mGuidePrev", true);
        s = r2.d("mGuideSort", true);
        t = r2.d("mGuideMemo", true);
        u = r2.d("mGuideEdIc3", true);
        v = r2.d("mGuideLayout", true);
        w = r2.d("mGuideSpace", true);
        x = r2.d("mGuideSwipe", true);
        y = r2.d("mGuideGesture", true);
        z = r2.d("mGuideSense", true);
        A = r2.d("mGuideHand", true);
        B = r2.d("mGuideCap2", true);
        C = r2.d("mGuideFilter", true);
        D = r2.d("mGuideLicense", true);
        E = r2.d("mGuideTts", true);
        r2.d("mNotiEdit", true);
        F = r2.d("mNotiPath", true);
        G = r2.d("mNotiRead", true);
        H = r2.d("mNotiArea", true);
        I = r2.d("mNotiAre2", true);
        J = r2.d("mNotiAre3", true);
        K = r2.d("mNotiAre4", true);
        L = r2.d("mAutoSpeak", false);
        M = r2.d("mAutoTrans", false);
        N = r2.d("mViewTrans", false);
        O = r2.d("mAreaMulti", true);
        P = r2.f("mPenSize", 10);
        Q = r2.f("mPenAlpha", 0);
        int[] iArr = MainConst.o;
        R = r2.f("mPenColor", iArr[1]);
        float[] fArr = MainConst.p;
        S = r2.e("mPenPos", fArr[1]);
        T = r2.f("mEraseSize", 10);
        U = r2.f("mTextColor", iArr[0]);
        V = r2.e("mTextPos", fArr[0]);
        W = r2.f("mReadAlpha", 0);
        X = r2.f("mReadColor", MainConst.r[3]);
        Y = r2.e("mReadPos", fArr[3]);
        PrefEditor.r(X, W);
        i = "PrefRead";
    }
}
