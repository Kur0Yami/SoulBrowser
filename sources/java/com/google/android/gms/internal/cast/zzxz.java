package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzxz implements zzzg {

    /* renamed from: a, reason: collision with root package name */
    public static final zzxz f9878a = new Object();

    @Override // com.google.android.gms.internal.cast.zzzg
    public final boolean a(Class cls) {
        return zzyd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final zzzf b(Class cls) {
        if (zzyd.class.isAssignableFrom(cls)) {
            try {
                return (zzzf) zzyd.g(cls.asSubclass(zzyd.class)).j(3, null);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }
}
