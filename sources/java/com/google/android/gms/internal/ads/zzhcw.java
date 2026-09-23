package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhcw implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhcw f8405a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhcu zzhcuVar = (zzhcu) zzgzxVar;
        zzhjs zzhjsVar = zzhcx.f8406a;
        try {
            zzhfu.b();
            return new zzhfu(zzhcuVar.b.f8865a.b(), zzhcuVar.f8403c.b(), zzhfu.b().getProvider());
        } catch (GeneralSecurityException unused) {
            return new zzhvq(zzhcuVar.b.f8865a.b(), zzhcuVar.f8403c.b());
        }
    }
}
