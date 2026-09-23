package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefZtri extends PrefCore {
    public static float A;
    public static float B;
    public static boolean C;
    public static float D;
    public static float E;
    public static float F;
    public static float G;
    public static boolean H;
    public static float I;
    public static float J;
    public static float K;
    public static float L;
    public static boolean M;
    public static float N;
    public static float O;
    public static float P;
    public static float Q;
    public static float R;
    public static float S;
    public static float T;
    public static float U;
    public static float V;
    public static float W;
    public static float X;
    public static float Y;
    public static float Z;
    public static float a0;
    public static float b0;
    public static float c0;
    public static float d0;
    public static float e0;
    public static float f0;
    public static float g0;
    public static boolean h0;
    public static String i;
    public static boolean i0;
    public static boolean j;
    public static int j0;
    public static boolean k;
    public static boolean k0;
    public static float l;
    public static int l0;
    public static float m;
    public static int m0;
    public static float n;
    public static boolean n0;
    public static float o;
    public static boolean o0;
    public static int p;
    public static boolean p0;
    public static float q;
    public static boolean q0;
    public static float r;
    public static boolean r0;
    public static float s;
    public static boolean s0;
    public static float t;
    public static boolean t0;
    public static float u;
    public static float v;
    public static float w;
    public static float x;
    public static float y;
    public static float z;

    public PrefZtri(Context context) {
        super(context, "PrefZtri");
    }

    public static PrefZtri r(Context context) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefZtri(null);
        }
        boolean isEmpty = TextUtils.isEmpty(i);
        PrefZtri prefZtri = p2.c0;
        if (prefZtri == null) {
            synchronized (PrefZtri.class) {
                try {
                    if (p2.c0 == null) {
                        p2.c0 = new PrefZtri(context);
                        isEmpty = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefZtri.d)) {
            synchronized (PrefZtri.class) {
                p2.c0.i(context, "PrefZtri");
            }
            isEmpty = false;
        }
        if (isEmpty || p2.c0.j()) {
            p2.c0.k();
        }
        return p2.c0;
    }

    public static void s(Context context) {
        PrefZtri r2;
        if (context == null || (r2 = r(context)) == null) {
            return;
        }
        r2.m("mCastLtX", R);
        r2.m("mCastRtX", S);
        r2.m("mCastUpY", T);
        r2.m("mCastDnY", U);
        r2.a();
    }

    public static void t(Context context) {
        PrefZtri r2;
        if (context == null || (r2 = r(context)) == null) {
            return;
        }
        r2.m("mDownLtX", y);
        r2.m("mDownRtX", z);
        r2.m("mDownUpY", A);
        r2.m("mDownDnY", B);
        r2.a();
    }

    public static void u(Context context) {
        PrefZtri r2;
        if (context == null || (r2 = r(context)) == null) {
            return;
        }
        r2.m("mYpipLtX", u);
        r2.m("mYpipRtX", v);
        r2.m("mYpipUpY", w);
        r2.m("mYpipDnY", x);
        r2.a();
    }
}
