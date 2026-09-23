package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgqv implements zzgqs {
    public static final zzgqs h = null;

    /* renamed from: c, reason: collision with root package name */
    public final zzgqz f8216c = new Object();
    public volatile zzgqs f;
    public Object g;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgqz, java.lang.Object] */
    public zzgqv(zzgqs zzgqsVar) {
        this.f = zzgqsVar;
    }

    public final String toString() {
        Object obj = this.f;
        if (obj == zzgqu.f8215c) {
            String valueOf = String.valueOf(this.g);
            obj = android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        }
        String valueOf2 = String.valueOf(obj);
        return android.support.v4.media.a.q(new StringBuilder(valueOf2.length() + 19), "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final Object zza() {
        zzgqs zzgqsVar = this.f;
        zzgqu zzgquVar = zzgqu.f8215c;
        if (zzgqsVar != zzgquVar) {
            synchronized (this.f8216c) {
                try {
                    if (this.f != zzgquVar) {
                        Object zza = this.f.zza();
                        this.g = zza;
                        this.f = zzgquVar;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.g;
    }
}
