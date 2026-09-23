package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgqa {
    public static void a(boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void b(String str, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(str);
        }
    }

    public static void c(String str, int i, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(zzgqr.b(str, Integer.valueOf(i)));
        }
    }

    public static void d(String str, long j, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(zzgqr.b(str, Long.valueOf(j)));
        }
    }

    public static void e(String str, Object obj, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(zzgqr.b(str, obj));
        }
    }

    public static void f(boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException();
        }
    }

    public static void g(String str, boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException(str);
        }
    }

    public static void h(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }

    public static void i(int i, int i2) {
        String b;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
            }
            b = zzgqr.b("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            b = zzgqr.b("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(b);
    }

    public static void j(int i, int i2) {
        if (i >= 0 && i <= i2) {
        } else {
            throw new IndexOutOfBoundsException(l(i, i2, "index"));
        }
    }

    public static void k(int i, int i2, int i3) {
        String l;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                l = zzgqr.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                l = l(i2, i3, "end index");
            }
        } else {
            l = l(i, i3, "start index");
        }
        throw new IndexOutOfBoundsException(l);
    }

    public static String l(int i, int i2, String str) {
        if (i < 0) {
            return zzgqr.b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzgqr.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
    }
}
