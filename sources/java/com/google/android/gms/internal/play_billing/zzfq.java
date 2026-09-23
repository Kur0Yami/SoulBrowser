package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
final class zzfq implements zzha {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfq f11503a = new Object();

    @Override // com.google.android.gms.internal.play_billing.zzha
    public final zzgz a(Class cls) {
        if (zzfv.class.isAssignableFrom(cls)) {
            try {
                return (zzgz) zzfv.l(cls.asSubclass(zzfv.class)).i(3);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.zzha
    public final boolean b(Class cls) {
        return zzfv.class.isAssignableFrom(cls);
    }
}
