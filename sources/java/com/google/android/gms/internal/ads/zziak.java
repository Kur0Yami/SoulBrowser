package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zziak implements zzica {

    /* renamed from: a, reason: collision with root package name */
    public static final zziak f8911a = new Object();

    @Override // com.google.android.gms.internal.ads.zzica
    public final boolean a(Class cls) {
        return zziar.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzica
    public final zzibz b(Class cls) {
        if (zziar.class.isAssignableFrom(cls)) {
            try {
                return (zzibz) zziar.w(cls.asSubclass(zziar.class)).y(zziaq.g, null);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }
}
