package com.google.android.gms.internal.cast;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhi implements zzhg {
    public static final zzhg d = null;

    /* renamed from: a, reason: collision with root package name */
    public final zzhk f9716a;
    public volatile zzhg b;

    /* renamed from: c, reason: collision with root package name */
    public Object f9717c;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.android.gms.internal.cast.zzhk] */
    public zzhi() {
        zzz zzzVar = zzz.f9889a;
        this.f9716a = new Object();
        this.b = zzzVar;
    }

    public final String toString() {
        Object obj = this.b;
        if (obj == zzhh.f9715a) {
            String valueOf = String.valueOf(this.f9717c);
            obj = android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        }
        String valueOf2 = String.valueOf(obj);
        return android.support.v4.media.a.q(new StringBuilder(valueOf2.length() + 19), "Suppliers.memoize(", valueOf2, ")");
    }

    @Override // com.google.android.gms.internal.cast.zzhg
    public final Object zza() {
        zzhg zzhgVar = this.b;
        zzhh zzhhVar = zzhh.f9715a;
        if (zzhgVar != zzhhVar) {
            synchronized (this.f9716a) {
                try {
                    if (this.b != zzhhVar) {
                        Object zza = this.b.zza();
                        this.f9717c = zza;
                        this.b = zzhhVar;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f9717c;
    }
}
