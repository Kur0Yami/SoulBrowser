package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefList extends PrefCore {
    public static int A;
    public static boolean A0;
    public static int B;
    public static boolean B0;
    public static boolean C;
    public static boolean C0;
    public static boolean D;
    public static int D0;
    public static boolean E;
    public static boolean E0;
    public static boolean F;
    public static boolean F0;
    public static boolean G;
    public static boolean G0;
    public static int H;
    public static int H0;
    public static boolean I;
    public static int I0;
    public static boolean J;
    public static boolean J0;
    public static boolean K;
    public static boolean K0;
    public static int L;
    public static boolean L0;
    public static int M;
    public static int M0;
    public static boolean N;
    public static int N0;
    public static boolean O;
    public static boolean O0;
    public static boolean P;
    public static boolean P0;
    public static int Q;
    public static boolean Q0;
    public static int R;
    public static int R0;
    public static boolean S;
    public static int S0;
    public static boolean T;
    public static boolean T0;
    public static boolean U;
    public static boolean U0;
    public static int V;
    public static boolean V0;
    public static int W;
    public static int W0;
    public static boolean X;
    public static int X0;
    public static boolean Y;
    public static boolean Y0;
    public static boolean Z;
    public static int Z0;
    public static int a0;
    public static int a1;
    public static int b0;
    public static int b1;
    public static boolean c0;
    public static boolean c1;
    public static boolean d0;
    public static boolean d1;
    public static boolean e0;
    public static boolean e1;
    public static int f0;
    public static boolean f1;
    public static int g0;
    public static boolean g1;
    public static boolean h0;
    public static int h1;
    public static String i;
    public static boolean i0;
    public static boolean i1;
    public static int j;
    public static boolean j0;
    public static boolean j1;
    public static int k;
    public static int k0;
    public static boolean k1;
    public static int l;
    public static int l0;
    public static boolean m;
    public static boolean m0;
    public static boolean n;
    public static boolean n0;
    public static boolean o;
    public static boolean o0;
    public static boolean p;
    public static int p0;
    public static boolean q;
    public static int q0;
    public static int r;
    public static boolean r0;
    public static int s;
    public static boolean s0;
    public static boolean t;
    public static boolean t0;
    public static boolean u;
    public static int u0;
    public static boolean v;
    public static boolean v0;
    public static int w;
    public static boolean w0;
    public static boolean x;
    public static boolean x0;
    public static boolean y;
    public static int y0;
    public static boolean z;
    public static int z0;

    public PrefList(Context context) {
        super(context, "PrefList");
    }

    public static PrefList r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefList(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefList prefList = p2.Q;
        if (prefList == null) {
            synchronized (PrefList.class) {
                try {
                    if (p2.Q == null) {
                        p2.Q = new PrefList(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefList.d)) {
            synchronized (PrefList.class) {
                p2.Q.i(context, "PrefList");
            }
            z2 = false;
        }
        if (z2 || p2.Q.j()) {
            p2.Q.k();
        }
        return p2.Q;
    }

    public static void s(Context context, boolean z2) {
        PrefList r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.f("mViewType", 2);
        k = r2.f("mAlbumFold2", 0);
        l = r2.f("mAlbumItem", 0);
        m = r2.d("mAlbumRvse", false);
        n = r2.d("mAlbumDetail", true);
        o = r2.d("mAlbumSingle", true);
        p = r2.d("mAlbumRecent", true);
        q = r2.d("mAlbumContinue", true);
        r = r2.f("mCastType", 5);
        s = r2.f("mCastItem", 0);
        t = r2.d("mCastRvse", false);
        u = r2.d("mCastDetail", true);
        v = r2.d("mCastSingle", true);
        w = r2.f("mFileItem", 0);
        x = r2.d("mFileRvse", false);
        y = r2.d("mFileDetail", true);
        z = r2.d("mFileSingle", true);
        A = r2.f("mBookAlbumFold2", 0);
        B = r2.f("mBookAlbumItem", 3);
        C = r2.d("mBookAlbumRvse", true);
        D = r2.d("mBookAlbumDetail", true);
        E = r2.d("mBookAlbumSingle", true);
        F = r2.d("mBookWebUser", true);
        G = r2.d("mBookWebFtop", true);
        H = r2.f("mBookWebItem", 3);
        I = r2.d("mBookWebRvse", true);
        J = r2.d("mBookWebDetail", true);
        K = r2.d("mBookWebSingle", true);
        L = r2.f("mBookHistFold2", 0);
        M = r2.f("mBookHistItem", 3);
        N = r2.d("mBookHistRvse", true);
        O = r2.d("mBookHistDetail", true);
        P = r2.d("mBookHistSingle", true);
        Q = r2.f("mBookAdsFold", 0);
        R = r2.f("mBookAdsItem", 3);
        S = r2.d("mBookAdsRvse", true);
        T = r2.d("mBookAdsDetail", true);
        U = r2.d("mBookAdsSingle", true);
        V = r2.f("mBookOverFold", 0);
        W = r2.f("mBookOverItem", 3);
        X = r2.d("mBookOverRvse", true);
        Y = r2.d("mBookOverDetail", true);
        Z = r2.d("mBookOverSingle", true);
        a0 = r2.f("mBookPopFold", 0);
        b0 = r2.f("mBookPopItem", 3);
        c0 = r2.d("mBookPopRvse", true);
        d0 = r2.d("mBookPopDetail", true);
        e0 = r2.d("mBookPopSingle", true);
        f0 = r2.f("mBookLinkFold", 0);
        g0 = r2.f("mBookLinkItem", 3);
        h0 = r2.d("mBookLinkRvse", true);
        i0 = r2.d("mBookLinkDetail", true);
        j0 = r2.d("mBookLinkSingle", true);
        k0 = r2.f("mBookBlockFold", 0);
        l0 = r2.f("mBookBlockItem", 3);
        m0 = r2.d("mBookBlockRvse", true);
        n0 = r2.d("mBookBlockDetail", true);
        o0 = r2.d("mBookBlockSingle", true);
        p0 = r2.f("mBookDcFold", 0);
        q0 = r2.f("mBookDcItem", 3);
        r0 = r2.d("mBookDcRvse", true);
        s0 = r2.d("mBookDcDetail", true);
        t0 = r2.d("mBookDcSingle", true);
        u0 = r2.f("mBookFilterItem", 1);
        v0 = r2.d("mBookFilterRvse", false);
        w0 = r2.d("mBookFilterDetail", true);
        x0 = r2.d("mBookFilterSingle", true);
        y0 = r2.f("mBookJavaFold", 0);
        z0 = r2.f("mBookJavaItem", 3);
        A0 = r2.d("mBookJavaRvse", true);
        B0 = r2.d("mBookJavaDetail", true);
        C0 = r2.d("mBookJavaSingle", true);
        D0 = r2.f("mBookScrItem", 3);
        E0 = r2.d("mBookScrRvse", true);
        F0 = r2.d("mBookScrDetail", true);
        G0 = r2.d("mBookScrSingle", true);
        H0 = r2.f("mBookTmemFold", 0);
        I0 = r2.f("mBookTmemItem", 3);
        J0 = r2.d("mBookTmemRvse", true);
        K0 = r2.d("mBookTmemDetail", true);
        L0 = r2.d("mBookTmemSingle", true);
        M0 = r2.f("mBookTransFold", 0);
        N0 = r2.f("mBookTransItem", 3);
        O0 = r2.d("mBookTransRvse", true);
        P0 = r2.d("mBookTransDetail", true);
        Q0 = r2.d("mBookTransSingle", true);
        R0 = r2.f("mBookPmsFold", 0);
        S0 = r2.f("mBookPmsItem", 3);
        T0 = r2.d("mBookPmsRvse", true);
        U0 = r2.d("mBookPmsDetail", true);
        V0 = r2.d("mBookPmsSingle", true);
        W0 = r2.f("mBookUserFold", 6);
        X0 = r2.f("mBookUserItem", 3);
        Y0 = r2.d("mBookUserRvse", true);
        Z0 = r2.f("mBookDownType", 0);
        a1 = r2.f("mBookDownFold2", 0);
        b1 = r2.f("mBookDownItem", 3);
        c1 = r2.d("mBookDownRvse", true);
        d1 = r2.d("mBookDownDetail", true);
        e1 = r2.d("mBookDownSingle", true);
        f1 = r2.d("mBookMemoDetail", true);
        g1 = r2.d("mBookMemoSingle", true);
        h1 = r2.f("mGdriveItem", 0);
        i1 = r2.d("mGdriveRvse", false);
        j1 = r2.d("mGdriveDetail", true);
        k1 = r2.d("mGdriveSingle", true);
        i = "PrefList";
    }
}
