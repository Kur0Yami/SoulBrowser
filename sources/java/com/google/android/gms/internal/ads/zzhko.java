package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;

/* loaded from: classes.dex */
final /* synthetic */ class zzhko implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhko f8622a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhkn zzhknVar = (zzhkn) zzgzxVar;
        zzhhz zzhhzVar = zzhkr.f8625a;
        if (zzhknVar.f8620a.f8631a == 32) {
            if (zzhhb.a(1)) {
                Provider a2 = zzhhf.a();
                if (a2 != null) {
                    try {
                        return zzhmc.a(zzhknVar, a2);
                    } catch (GeneralSecurityException unused) {
                    }
                }
                return new Object();
            }
            throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }
}
