package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefSync extends PrefCore {
    public static String i;
    public static boolean j;
    public static boolean k;
    public static int l;
    public static int m;
    public static int n;
    public static int o;

    public PrefSync(Context context) {
        super(context, "PrefSync");
    }

    public static PrefSync r(Context context, boolean z) {
        MainApp p = MainApp.p(context);
        if (p == null) {
            return new PrefSync(null);
        }
        if (!z && TextUtils.isEmpty(i)) {
            z = true;
        }
        PrefSync prefSync = p.X;
        if (prefSync == null) {
            synchronized (PrefSync.class) {
                try {
                    if (p.X == null) {
                        p.X = new PrefSync(context);
                        z = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefSync.d)) {
            synchronized (PrefSync.class) {
                p.X.i(context, "PrefSync");
            }
            z = false;
        }
        if (z || p.X.j()) {
            p.X.k();
        }
        return p.X;
    }

    public static void s(Context context, boolean z) {
        PrefSync r;
        if (context == null || (r = r(context, z)) == null) {
            return;
        }
        j = r.d("mSplash", true);
        k = r.d("mSecretMode", false);
        l = r.f("mNormalIndex", 0);
        int f = r.f("mSecretIndex", 0);
        m = f;
        n = l;
        o = f;
        i = "PrefSync";
    }

    public static void t(Context context) {
        PrefSync r;
        if (o == m || context == null || (r = r(context, false)) == null) {
            return;
        }
        int i2 = m;
        o = i2;
        r.n(i2, "mSecretIndex");
        r.a();
    }

    public static void u(Context context) {
        PrefSync r;
        if (context == null || (r = r(context, false)) == null) {
            return;
        }
        int i2 = n;
        int i3 = l;
        if (i2 != i3) {
            n = i3;
            r.n(i3, "mNormalIndex");
        }
        int i4 = o;
        int i5 = m;
        if (i4 != i5) {
            o = i5;
            r.n(i5, "mSecretIndex");
        }
        r.l("mSecretMode", k);
        r.c();
    }

    public static void v(Context context) {
        PrefSync r;
        if ((n == l && o == m) || context == null || (r = r(context, false)) == null) {
            return;
        }
        int i2 = n;
        int i3 = l;
        if (i2 != i3) {
            n = i3;
            r.n(i3, "mNormalIndex");
        }
        int i4 = o;
        int i5 = m;
        if (i4 != i5) {
            o = i5;
            r.n(i5, "mSecretIndex");
        }
        r.c();
    }
}
