package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefVideo extends PrefCore {
    public static int A;
    public static int B;
    public static int C;
    public static int D;
    public static int E;
    public static int F;
    public static int G;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static boolean l;
    public static boolean m;
    public static boolean n;
    public static int o;
    public static boolean p;
    public static boolean q;
    public static boolean r;
    public static boolean s;
    public static int t;
    public static boolean u;
    public static int v;
    public static int w;
    public static boolean x;
    public static boolean y;
    public static boolean z;

    public PrefVideo(Context context) {
        super(context, "PrefVideo");
    }

    public static PrefVideo r(Context context) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefVideo(null);
        }
        boolean isEmpty = TextUtils.isEmpty(i);
        PrefVideo prefVideo = p2.Z;
        if (prefVideo == null) {
            synchronized (PrefVideo.class) {
                try {
                    if (p2.Z == null) {
                        p2.Z = new PrefVideo(context);
                        isEmpty = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefVideo.d)) {
            synchronized (PrefVideo.class) {
                p2.Z.i(context, "PrefVideo");
            }
            isEmpty = false;
        }
        if (isEmpty || p2.Z.j()) {
            p2.Z.k();
        }
        return p2.Z;
    }
}
