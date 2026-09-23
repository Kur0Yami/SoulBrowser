package com.mycompany.app.pref;

import android.content.Context;

/* loaded from: classes3.dex */
public class PrefSet {
    public static PrefCore a(Context context, int i) {
        if (i == 0) {
            return PrefAlbum.r(context, false);
        }
        if (i == 1) {
            return PrefEditor.s(context);
        }
        if (i == 2) {
            return PrefFloat.r(context);
        }
        if (i == 3) {
            return PrefImage.r(context, false);
        }
        if (i == 4) {
            return PrefList.r(context, false);
        }
        if (i == 5) {
            return PrefMain.r(context, false);
        }
        if (i == 6) {
            return PrefPath.r(context, false);
        }
        if (i == 7) {
            return PrefPdf.r(context, false);
        }
        if (i == 8) {
            return PrefRead.r(context, false);
        }
        if (i == 9) {
            return PrefSecret.r(context, false);
        }
        if (i == 10) {
            return PrefSub.r(context);
        }
        if (i == 11) {
            return PrefSync.r(context, false);
        }
        if (i == 12) {
            return PrefTts.r(context, false);
        }
        if (i == 13) {
            return PrefVideo.r(context);
        }
        if (i == 14) {
            return PrefWeb.r(context, false);
        }
        if (i == 15) {
            return PrefZone.r(context, false);
        }
        if (i == 16) {
            return PrefZtwo.r(context, false);
        }
        if (i == 17) {
            return PrefZtri.r(context);
        }
        return null;
    }

    public static void b(int i, long j, Context context, String str) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.o(j, str);
        a2.a();
    }

    public static void c(int i, Context context, String str, String str2) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.p(str, str2);
        a2.a();
    }

    public static void d(int i, Context context, String str, boolean z) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.l(str, z);
        a2.a();
    }

    public static void e(Context context, float f) {
        PrefCore a2 = a(context, 16);
        if (a2 == null) {
            return;
        }
        a2.m("mYouSpdRate", f);
        a2.a();
    }

    public static void f(Context context, int i, int i2, String str) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.n(i2, str);
        a2.a();
    }

    public static void g(int i, Context context, String str, boolean z) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.l(str, z);
        a2.c();
    }

    public static void h(Context context, String str) {
        PrefCore a2 = a(context, 6);
        if (a2 == null) {
            return;
        }
        a2.p("mUriDown", str);
        a2.c();
    }

    public static void i(Context context, int i, String str) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.q(str);
        a2.a();
    }

    public static void j(Context context, int i, String str) {
        PrefCore a2 = a(context, i);
        if (a2 == null) {
            return;
        }
        a2.q(str);
        a2.c();
    }
}
