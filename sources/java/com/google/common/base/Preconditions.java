package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Preconditions {
    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return Strings.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return Strings.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(android.support.v4.media.a.e(i2, "negative size: "));
    }

    public static void b(String str, int i, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(Strings.a(str, Integer.valueOf(i)));
        }
    }

    public static void c(String str, Object obj, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(Strings.a(str, obj));
        }
    }

    public static void d(boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z, Object obj) {
        if (z) {
        } else {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z, String str, Object obj, Object obj2) {
        if (z) {
        } else {
            throw new IllegalArgumentException(Strings.a(str, obj, obj2));
        }
    }

    public static void g(int i, int i2) {
        String a2;
        if (i >= 0 && i < i2) {
            return;
        }
        if (i >= 0) {
            if (i2 >= 0) {
                a2 = Strings.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            } else {
                throw new IllegalArgumentException(android.support.v4.media.a.e(i2, "negative size: "));
            }
        } else {
            a2 = Strings.a("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(a2);
    }

    public static void h(Object obj, Object obj2) {
        if (obj != null) {
        } else {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static void i(int i, int i2) {
        if (i >= 0 && i <= i2) {
        } else {
            throw new IndexOutOfBoundsException(a(i, i2, "index"));
        }
    }

    public static void j(int i, int i2, int i3) {
        String a2;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                a2 = Strings.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                a2 = a(i2, i3, "end index");
            }
        } else {
            a2 = a(i, i3, "start index");
        }
        throw new IndexOutOfBoundsException(a2);
    }

    public static void k(String str, Object obj, boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException(Strings.a(str, obj));
        }
    }

    public static void l(boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException();
        }
    }

    public static void m(boolean z, Object obj) {
        if (z) {
        } else {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
