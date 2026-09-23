package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhes implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhes f8473a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhep zzhepVar = (zzhep) zzgzxVar;
        zzhjs zzhjsVar = zzhet.f8474a;
        try {
            zzhfu.b();
            return new zzhgp(zzhepVar.b.f8865a.b(), zzhepVar.f8470c.b(), zzhfu.b().getProvider());
        } catch (GeneralSecurityException unused) {
            return new zzhxb(zzhepVar.b.f8865a.b(), zzhepVar.f8470c.b());
        }
    }
}
