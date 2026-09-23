package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhaw implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhaw f8331a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhep zzhepVar = (zzhep) zzgzxVar;
        zzhhv zzhhvVar = zzhbd.f8338a;
        try {
            zzhfu.b();
            return new zzhgp(zzhepVar.b.f8865a.b(), zzhepVar.f8470c.b(), zzhfu.b().getProvider());
        } catch (GeneralSecurityException unused) {
            return new zzhxb(zzhepVar.b.f8865a.b(), zzhepVar.f8470c.b());
        }
    }
}
