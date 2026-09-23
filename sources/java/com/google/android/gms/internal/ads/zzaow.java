package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaow {
    public static void a(zzeq zzeqVar) {
        int i;
        int h;
        int h2 = zzeqVar.h(2);
        int i2 = 6;
        if (h2 == 0) {
            zzeqVar.f(6);
            return;
        }
        int i3 = 5;
        int c2 = c(zzeqVar, 5, 8, 16) + 1;
        if (h2 == 1) {
            zzeqVar.f(c2 * 7);
            return;
        }
        if (h2 == 2) {
            boolean g = zzeqVar.g();
            if (true != g) {
                i = 5;
            } else {
                i = 1;
            }
            if (true == g) {
                i3 = 7;
            }
            if (true == g) {
                i2 = 8;
            }
            int i4 = 0;
            while (i4 < c2) {
                if (zzeqVar.g()) {
                    zzeqVar.f(7);
                    h = 0;
                } else {
                    if (zzeqVar.h(2) == 3 && zzeqVar.h(i3) * i != 0) {
                        zzeqVar.e();
                    }
                    h = zzeqVar.h(i2) * i;
                    if (h != 0 && h != 180) {
                        zzeqVar.e();
                    }
                    zzeqVar.e();
                }
                if (h != 0 && h != 180 && zzeqVar.g()) {
                    i4++;
                }
                i4++;
            }
        }
    }

    public static void b(zzeq zzeqVar) {
        zzeqVar.f(3);
        zzeqVar.f(8);
        boolean g = zzeqVar.g();
        boolean g2 = zzeqVar.g();
        if (g) {
            zzeqVar.f(5);
        }
        if (g2) {
            zzeqVar.f(6);
        }
    }

    public static int c(zzeq zzeqVar, int i, int i2, int i3) {
        boolean z;
        if (Math.max(Math.max(i, i2), i3) <= 31) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        long j = i4 + i5;
        long j2 = (int) j;
        if (j == j2) {
            if (j2 + (1 << i3) == ((int) r6)) {
                if (zzeqVar.b() >= i) {
                    int h = zzeqVar.h(i);
                    if (h == i4) {
                        if (zzeqVar.b() >= i2) {
                            int h2 = zzeqVar.h(i2);
                            h += h2;
                            if (h2 == i5) {
                                if (zzeqVar.b() >= i3) {
                                    return zzeqVar.h(i3) + h;
                                }
                            }
                        }
                    }
                    return h;
                }
                return -1;
            }
            throw new ArithmeticException();
        }
        throw new ArithmeticException();
    }
}
