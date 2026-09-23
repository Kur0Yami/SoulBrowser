package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
final class zzjx implements zzlh {

    /* renamed from: a, reason: collision with root package name */
    public static final zzjx f10384a = new Object();

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg a(Class cls) {
        if (zzkc.class.isAssignableFrom(cls)) {
            try {
                return (zzlg) zzkc.c(cls.asSubclass(zzkc.class)).e();
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean b(Class cls) {
        return zzkc.class.isAssignableFrom(cls);
    }
}
