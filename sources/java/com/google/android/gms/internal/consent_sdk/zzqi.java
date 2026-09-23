package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
final class zzqi implements zzro {

    /* renamed from: a, reason: collision with root package name */
    public static final zzqi f10083a = new Object();

    @Override // com.google.android.gms.internal.consent_sdk.zzro
    public final zzrn a(Class cls) {
        if (zzqm.class.isAssignableFrom(cls)) {
            try {
                return (zzrn) zzqm.h(cls.asSubclass(zzqm.class)).f(3);
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzro
    public final boolean b(Class cls) {
        return zzqm.class.isAssignableFrom(cls);
    }
}
