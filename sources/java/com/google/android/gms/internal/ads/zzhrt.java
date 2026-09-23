package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrt implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrt f8712a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        byte[] bArr;
        zzhrv zzhrvVar = (zzhrv) zzgzxVar;
        if (zzhhb.a(1)) {
            try {
                return zzhum.b(zzhrvVar);
            } catch (GeneralSecurityException unused) {
                byte[] b = zzhrvVar.b.b();
                byte[] b2 = zzhrvVar.f8716c.b();
                if (zzhrvVar.f8715a.f8707a.equals(zzhrn.d)) {
                    bArr = new byte[]{0};
                } else {
                    bArr = new byte[0];
                }
                return new zzhvt(b, b2, bArr);
            }
        }
        throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
    }
}
