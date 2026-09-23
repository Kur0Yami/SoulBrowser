package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class PrefPath extends PrefCore {
    public static String i;
    public static String j;
    public static String k;
    public static String l;
    public static int m;
    public static boolean n;
    public static String o;
    public static String p;
    public static String q;
    public static String r;
    public static String s;
    public static String t;
    public static String u;
    public static String v;
    public static String w;
    public static String x;
    public static String y;

    public PrefPath(Context context) {
        super(context, "PrefPath");
    }

    public static PrefPath r(Context context, boolean z) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefPath(null);
        }
        if (!z && TextUtils.isEmpty(i)) {
            z = true;
        }
        PrefPath prefPath = p2.S;
        if (prefPath == null) {
            synchronized (PrefPath.class) {
                try {
                    if (p2.S == null) {
                        p2.S = new PrefPath(context);
                        z = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefPath.d)) {
            synchronized (PrefPath.class) {
                p2.S.i(context, "PrefPath");
            }
            z = false;
        }
        if (z || p2.S.j()) {
            p2.S.k();
        }
        return p2.S;
    }

    public static void s(Context context, boolean z) {
        PrefPath r2;
        if (context == null || (r2 = r(context, z)) == null) {
            return;
        }
        j = r2.h("mAlbumPath", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        k = r2.h("mCmpPath", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        l = r2.h("mPdfPath", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        m = r2.f("mSdkVer2", 0);
        n = r2.d("mCheckPath", true);
        o = r2.h("mPathDown", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        p = r2.h("mPathAlbum", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        q = r2.h("mDocUri", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        r = r2.h("mUriDown", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        s = r2.h("mScanAlbum", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        t = r2.h("mScanPdf", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        u = r2.h("mScanZip", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        v = r2.h("mScanFont", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        w = r2.h("mScanImage", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        x = r2.h("mScanVideo", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        y = r2.h("mScanMusic", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        r = MainUri.e();
        i = "PrefPath";
    }

    public static String t(Context context) {
        if (context == null) {
            return r;
        }
        PrefPath r2 = r(context, true);
        if (r2 == null) {
            return r;
        }
        return MainUri.m(context, r2.h("mUriDown", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), MainUri.n(context));
    }

    public static void u(Context context) {
        PrefPath r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.n(m, "mSdkVer2");
        r2.l("mCheckPath", n);
        r2.p("mPathDown", o);
        r2.p("mPathAlbum", p);
        r2.p("mDocUri", q);
        r2.a();
    }
}
