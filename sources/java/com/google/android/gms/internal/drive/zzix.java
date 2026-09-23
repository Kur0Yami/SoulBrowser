package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzix {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f10200a;
    public static final boolean b;

    static {
        Class<?> cls;
        boolean z;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f10200a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        if (cls2 != null) {
            z = true;
        } else {
            z = false;
        }
        b = z;
    }

    public static boolean a() {
        if (f10200a != null && !b) {
            return true;
        }
        return false;
    }
}
