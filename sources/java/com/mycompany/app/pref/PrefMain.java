package com.mycompany.app.pref;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class PrefMain extends PrefCore {
    public static int A;
    public static String B;
    public static String C;
    public static String D;
    public static String E;
    public static String F;
    public static String G;
    public static String H;
    public static String I;
    public static String i;
    public static boolean j;
    public static boolean k;
    public static int l;
    public static boolean m;
    public static boolean n;
    public static int o;
    public static int p;
    public static int q;
    public static int r;
    public static boolean s;
    public static boolean t;
    public static int u;
    public static boolean v;
    public static int w;
    public static boolean x;
    public static int y;
    public static int z;

    public PrefMain(Context context) {
        super(context, "PrefMain");
    }

    public static PrefMain r(Context context, boolean z2) {
        MainApp p2 = MainApp.p(context);
        if (p2 == null) {
            return new PrefMain(null);
        }
        if (!z2 && TextUtils.isEmpty(i)) {
            z2 = true;
        }
        PrefMain prefMain = p2.R;
        if (prefMain == null) {
            synchronized (PrefMain.class) {
                try {
                    if (p2.R == null) {
                        p2.R = new PrefMain(context);
                        z2 = false;
                    }
                } finally {
                }
            }
        } else if (TextUtils.isEmpty(prefMain.d)) {
            synchronized (PrefMain.class) {
                p2.R.i(context, "PrefMain");
            }
            z2 = false;
        }
        if (z2 || p2.R.j()) {
            p2.R.k();
        }
        return p2.R;
    }

    public static void s(Context context, boolean z2) {
        PrefMain r2;
        if (context == null || (r2 = r(context, z2)) == null) {
            return;
        }
        j = r2.d("mGuideWall", true);
        k = r2.d("mAdsSuccess", false);
        l = r2.f("mAppRotate", 0);
        m = r2.d("mDoubleBack", false);
        n = r2.d("mLastNoti", false);
        o = r2.f("mShowAdsNews", 0);
        p = r2.f("mShowAdsImage", 0);
        q = r2.f("mShowAdsDcLog", 0);
        r = r2.f("mShowAdsDcIp", 0);
        s = r2.d("mCastOn", false);
        t = r2.d("mCastLoop", false);
        u = r2.f("mStatusHeight", 0);
        v = r2.d("mStatusConfirm", false);
        w = r2.f("mNaviHeight2", 0);
        x = r2.d("mNaviConfirm", false);
        y = r2.f("mMenuType", 4);
        z = r2.f("mMenuPort", 5);
        A = r2.f("mMenuPage", 0);
        B = r2.h("mMenuItems", "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40");
        C = r2.h("mMidItems", "21,22,23,24,25");
        D = r2.h("mTopItems", "63,1,31,35");
        E = r2.h("mBotItems", "26,27,28,29,30,2");
        F = r2.h("mBotLongs", "3,3,44,45,70,65");
        G = r2.h("mBotSwipe", "0,0,0,0,0,0");
        H = r2.h("mAddrItems2", "0,1,2");
        I = r2.h("mWidgetBook", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        i = "PrefMain";
    }
}
