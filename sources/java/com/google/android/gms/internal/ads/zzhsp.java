package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhsp implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhsp f8735a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        byte[] bArr;
        zzhjz zzhjzVar = ((zzhim) zzgzxVar).f8576a;
        zzhim.d(zzhjzVar);
        zzhaq zzhaqVar = (zzhaq) zzhia.d.b(zzhaq.class, zzhjzVar.f8605a).a(zzhjzVar.f8606c);
        byte[] b = zzhuo.b(zzhjzVar);
        if (zzhjzVar.e.equals(zzhpw.LEGACY)) {
            bArr = new byte[]{0};
        } else {
            bArr = new byte[0];
        }
        return new zzhuo(zzhaqVar, b, bArr);
    }
}
