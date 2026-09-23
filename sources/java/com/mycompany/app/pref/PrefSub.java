package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefSub extends PrefCore {
    public static String i;
    public static boolean j;
    public static boolean k;
    public static int l;
    public static int m;
    public static int n;
    public static int o;
    public static int p;
    public static int q;
    public static float r;
    public static int s;
    public static boolean t;
    public static int u;
    public static int v;
    public static float w;
    public static boolean x;

    public PrefSub(Context context) {
        super(context, "PrefSub");
    }

    public static PrefSub r(Context context) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefSub(null);
        }
        boolean isEmpty = TextUtils.isEmpty(i);
        PrefSub prefSub = p2.W;
        if (prefSub == null) {
            synchronized (PrefSub.class) {
                try {
                    if (p2.W == null) {
                        p2.W = new PrefSub(context);
                        isEmpty = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefSub.d)) {
            synchronized (PrefSub.class) {
                p2.W.i(context, "PrefSub");
            }
            isEmpty = false;
        }
        if (isEmpty || p2.W.j()) {
            p2.W.k();
        }
        return p2.W;
    }
}
