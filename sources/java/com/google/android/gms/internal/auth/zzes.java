package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
final class zzes implements zzfv {

    /* renamed from: a, reason: collision with root package name */
    public static final zzes f9538a = new Object();

    @Override // com.google.android.gms.internal.auth.zzfv
    public final zzfu a(Class cls) {
        if (zzev.class.isAssignableFrom(cls)) {
            try {
                return (zzfu) zzev.a(cls.asSubclass(zzev.class)).h(3);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.auth.zzfv
    public final boolean b(Class cls) {
        return zzev.class.isAssignableFrom(cls);
    }
}
