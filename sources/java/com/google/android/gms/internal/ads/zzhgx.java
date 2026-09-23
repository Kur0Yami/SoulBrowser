package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhgx implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f8538a = new ThreadLocal();

    public static zzhfo b(zzhcm zzhcmVar) {
        byte[] bArr = zzhfo.d;
        if (zzhfo.b(zzhgw.f8537a.a())) {
            return new zzhfo(zzhcmVar.b.f8865a.b(), zzhcmVar.f8392c.b());
        }
        throw new IllegalStateException("Cipher does not implement AES GCM SIV.");
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
