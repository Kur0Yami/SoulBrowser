package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfj implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfj f8495a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhcd zzhcdVar = (zzhcd) zzgzxVar;
        zzhjl zzhjlVar = zzhfm.f8498a;
        zzhnp G = zzhnq.G();
        byte[] b = zzhcdVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        G.k();
        ((zzhnq) G.f).I(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzhnq) G.m()).b(), zzhoz.SYMMETRIC, zzhfm.a(zzhcdVar.f8377a.b), zzhcdVar.d);
    }
}
