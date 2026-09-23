package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrs implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrs f8711a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhrp zzhrpVar = (zzhrp) zzgzxVar;
        if (zzhhb.a(1)) {
            try {
                return zzhul.a(zzhrpVar);
            } catch (GeneralSecurityException unused) {
                zzhxe zzhxeVar = zzhrpVar.b;
                zzhrv zzhrvVar = zzhrpVar.f8708a;
                byte[] b = zzhxeVar.f8865a.b();
                zzhrvVar.f8716c.b();
                Object obj = new Object();
                if (zzhhb.a(1)) {
                    if (b.length == 32) {
                        zzhhm.a(zzhhm.b(b));
                        return obj;
                    }
                    throw new IllegalArgumentException("Given private key's length is not 32");
                }
                throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
            }
        }
        throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
    }
}
