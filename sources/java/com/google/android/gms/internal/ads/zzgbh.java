package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgbh implements zzgbb {

    /* renamed from: a, reason: collision with root package name */
    public final int f7796a;
    public final byte[] b;

    public zzgbh(byte[] bArr, int i) {
        this.f7796a = i;
        this.b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgbb
    public final int zza() {
        return this.f7796a;
    }

    @Override // com.google.android.gms.internal.ads.zzgbb
    public final String zzb() {
        return new String(this.b);
    }
}
