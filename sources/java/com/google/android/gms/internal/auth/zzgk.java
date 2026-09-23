package com.google.android.gms.internal.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgk {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f9557a;
    public static final zzgz b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhb f9558c;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.auth.zzhb, java.lang.Object] */
    static {
        Class<?> cls;
        Class<?> cls2;
        zzgz zzgzVar = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f9557a = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                zzgzVar = (zzgz) cls2.getConstructor(null).newInstance(null);
            } catch (Throwable unused3) {
            }
        }
        b = zzgzVar;
        f9558c = new Object();
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }
}
