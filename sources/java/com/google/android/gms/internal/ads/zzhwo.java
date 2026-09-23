package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzhwo implements zzhmn {

    /* renamed from: a, reason: collision with root package name */
    public final zzhmr f8848a;
    public final zzhms b;

    public /* synthetic */ zzhwo(zzhmr zzhmrVar, zzhms zzhmsVar) {
        this.f8848a = zzhmrVar;
        this.b = zzhmsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhmn
    public final byte[] a(byte[] bArr, int i) {
        if (bArr.length <= 64) {
            return this.f8848a.a(bArr, i);
        }
        return this.b.a(bArr, i);
    }
}
