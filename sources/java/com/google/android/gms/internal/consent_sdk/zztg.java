package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
public final class zztg implements zztk {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f10123c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile zzth f10124a;
    public volatile Object b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zztg] */
    public static zztg a(zzth zzthVar) {
        if (zzthVar instanceof zztg) {
            return (zztg) zzthVar;
        }
        ?? obj = new Object();
        obj.b = f10123c;
        obj.f10124a = zzthVar;
        return obj;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        Object obj = this.b;
        Object obj2 = f10123c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    Object obj3 = this.b;
                    if (obj3 == obj2) {
                        Object zzb = this.f10124a.zzb();
                        Object obj4 = this.b;
                        if (obj4 != obj2 && obj4 != zzb) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + zzb + ". This is likely due to a circular dependency.");
                        }
                        this.b = zzb;
                        this.f10124a = null;
                        return zzb;
                    }
                    return obj3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return obj;
    }
}
