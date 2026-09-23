package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhkp implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhkp f8623a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhkn zzhknVar = (zzhkn) zzgzxVar;
        zzhhz zzhhzVar = zzhkr.f8625a;
        if (zzhknVar.f8620a.f8631a == 32) {
            return new zzhws(zzhknVar);
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }
}
