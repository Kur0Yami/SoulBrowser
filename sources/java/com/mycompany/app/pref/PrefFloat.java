package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefFloat extends PrefCore {
    public static int A;
    public static float B;
    public static float C;
    public static float D;
    public static float E;
    public static float F;
    public static float G;
    public static float H;
    public static float I;
    public static float J;
    public static float K;
    public static float L;
    public static float M;
    public static String i;
    public static int j;
    public static int k;
    public static int l;
    public static boolean m;
    public static boolean n;
    public static boolean o;
    public static int p;
    public static int q;
    public static float r;
    public static int s;
    public static int t;
    public static int u;
    public static float v;
    public static int w;
    public static int x;
    public static int y;
    public static float z;

    public PrefFloat(Context context) {
        super(context, "PrefFloat");
    }

    public static PrefFloat r(Context context) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefFloat(null);
        }
        boolean isEmpty = TextUtils.isEmpty(i);
        PrefFloat prefFloat = p2.O;
        if (prefFloat == null) {
            synchronized (PrefFloat.class) {
                try {
                    if (p2.O == null) {
                        p2.O = new PrefFloat(context);
                        isEmpty = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefFloat.d)) {
            synchronized (PrefFloat.class) {
                p2.O.i(context, "PrefFloat");
            }
            isEmpty = false;
        }
        if (isEmpty || p2.O.j()) {
            p2.O.k();
        }
        return p2.O;
    }
}
