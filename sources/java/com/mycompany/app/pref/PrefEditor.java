package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class PrefEditor extends PrefCore {
    public static int A;
    public static int B;
    public static float C;
    public static int D;
    public static int E;
    public static int F;
    public static float G;
    public static int H;
    public static int I;
    public static int J;
    public static int K;
    public static int L;
    public static float M;
    public static int N;
    public static int O;
    public static int P;
    public static float Q;
    public static int R;
    public static int S;
    public static int T;
    public static float U;
    public static int V;
    public static int W;
    public static int X;
    public static float Y;
    public static int Z;
    public static String i;
    public static int j;
    public static int k;
    public static float l;
    public static int m;
    public static int n;
    public static int o;
    public static float p;
    public static int q;
    public static int r;
    public static int s;
    public static float t;
    public static int u;
    public static int v;
    public static int w;
    public static float x;
    public static int y;
    public static int z;

    public PrefEditor(Context context) {
        super(context, "PrefEditor");
    }

    public static int r(int i2, int i3) {
        if (i3 < 0) {
            i3 = 0;
        } else if (i3 > 90) {
            i3 = 90;
        }
        return (i2 & 16777215) | (Math.round(((100 - i3) * KotlinVersion.MAX_COMPONENT_VALUE) / 100.0f) << 24);
    }

    public static PrefEditor s(Context context) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefEditor(null);
        }
        boolean isEmpty = TextUtils.isEmpty(i);
        PrefEditor prefEditor = p2.N;
        if (prefEditor == null) {
            synchronized (PrefEditor.class) {
                try {
                    if (p2.N == null) {
                        p2.N = new PrefEditor(context);
                        isEmpty = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefEditor.d)) {
            synchronized (PrefEditor.class) {
                p2.N.i(context, "PrefEditor");
            }
            isEmpty = false;
        }
        if (isEmpty || p2.N.j()) {
            p2.N.k();
        }
        return p2.N;
    }
}
