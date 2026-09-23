package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefAlbum extends PrefCore {
    public static int A;
    public static int B;
    public static int C;
    public static boolean D;
    public static boolean E;
    public static boolean F;
    public static String G;
    public static String H;
    public static String I;
    public static String J;
    public static String K;
    public static String L;
    public static String M;
    public static String N;
    public static boolean O;
    public static boolean P;
    public static String i;
    public static boolean j;
    public static int k;
    public static boolean l;
    public static boolean m;
    public static boolean n;
    public static boolean o;
    public static boolean p;
    public static boolean q;
    public static boolean r;
    public static String s;
    public static String t;
    public static int u;
    public static boolean v;
    public static boolean w;
    public static boolean x;
    public static String y;
    public static String z;

    public PrefAlbum(Context context) {
        super(context, "PrefAlbum");
    }

    public static PrefAlbum r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefAlbum(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefAlbum prefAlbum = p2.M;
        if (prefAlbum == null) {
            synchronized (PrefAlbum.class) {
                try {
                    if (p2.M == null) {
                        p2.M = new PrefAlbum(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefAlbum.d)) {
            synchronized (PrefAlbum.class) {
                p2.M.i(context, "PrefAlbum");
            }
            z2 = false;
        }
        if (z2 || p2.M.j()) {
            p2.M.k();
        }
        return p2.M;
    }

    public static void s(Context context, boolean z2) {
        PrefAlbum r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mGuideDown", true);
        k = r2.f("mImageType2", 126);
        l = r2.d("mNotiIcon", true);
        m = r2.d("mNotiQuick", true);
        r2.d("mNotiBackup", true);
        n = r2.d("mGuideTab", true);
        o = r2.d("mNotiClean", true);
        p = r2.d("mNotiClea2", true);
        q = r2.d("mNotiBook", true);
        r = r2.d("mFilterNoti2", true);
        s = r2.h("mFilterAdd4", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        t = r2.h("mAdguardAdd2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        u = r2.f("mTransMode2", 0);
        v = r2.d("mTransIcon", false);
        w = r2.d("mTransPage", false);
        x = r2.d("mTransNoti", true);
        y = r2.h("mTransPick", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        z = r2.h("mTransCode", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        A = r2.f("mOcrLang", 0);
        B = r2.f("mOcrZoom", 1);
        C = r2.f("mOcrBack", 2);
        D = r2.d("mOcrNoti", true);
        E = r2.d("mOcrAuto", true);
        F = r2.d("mOcrReload", true);
        G = r2.h("mDappName2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        H = r2.h("mDappPkg2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        I = r2.h("mDappCls2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        J = r2.h("mPlayName2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        K = r2.h("mPlayPkg2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        L = r2.h("mPlayCls2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        M = r2.h("mWebBookDir", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        N = r2.h("mWebBookSec", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        O = r2.d("mTabAnim", true);
        P = r2.d("mLinkApp", false);
        i = "PrefAlbum";
    }

    public static void t(Context context) {
        PrefAlbum r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.p("mDappName2", G);
        r2.p("mDappPkg2", H);
        r2.p("mDappCls2", I);
        r2.a();
    }

    public static void u(Context context) {
        PrefAlbum r2;
        if (context == null || (r2 = r(context, false)) == null) {
            return;
        }
        r2.p("mTransPick", y);
        r2.p("mTransCode", z);
        r2.a();
    }
}
