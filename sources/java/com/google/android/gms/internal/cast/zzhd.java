package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzhd {
    public static void a(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }

    public static void b(int i, int i2) {
        String a2;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
            }
            a2 = zzhf.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            a2 = zzhf.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(a2);
    }

    public static void c(int i, int i2) {
        if (i >= 0 && i <= i2) {
        } else {
            throw new IndexOutOfBoundsException(e(i, i2, "index"));
        }
    }

    public static void d(int i, int i2, int i3) {
        String e;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                e = zzhf.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                e = e(i2, i3, "end index");
            }
        } else {
            e = e(i, i3, "start index");
        }
        throw new IndexOutOfBoundsException(e);
    }

    public static String e(int i, int i2, String str) {
        if (i < 0) {
            return zzhf.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzhf.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(androidx.work.impl.workers.a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
    }
}
