package com.google.android.gms.internal.p000authapi;

import androidx.work.impl.workers.a;

/* loaded from: classes.dex */
public final class zbbc {
    public static void a(int i, int i2) {
        String a2;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
            }
            a2 = zbbd.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            a2 = zbbd.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(a2);
    }

    public static void b(int i, int i2, int i3) {
        String c2;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                c2 = zbbd.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                c2 = c(i2, i3, "end index");
            }
        } else {
            c2 = c(i, i3, "start index");
        }
        throw new IndexOutOfBoundsException(c2);
    }

    public static String c(int i, int i2, String str) {
        if (i < 0) {
            return zbbd.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zbbd.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(a.r(i2, "negative size: ", new StringBuilder(String.valueOf(i2).length() + 15)));
    }
}
