package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzlw {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f10398a;
    public static final zzml b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzmn f10399c;

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.measurement.zzmn, java.lang.Object] */
    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f10398a = cls;
        b = a(false);
        a(true);
        f10399c = new Object();
    }

    public static zzml a(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (zzml) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }
}
