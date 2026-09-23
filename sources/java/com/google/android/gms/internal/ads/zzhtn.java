package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtn implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtn f8777a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhtk zzhtkVar = (zzhtk) zzgzxVar;
        try {
            return zzhvf.a(zzhtkVar);
        } catch (NoSuchProviderException unused) {
            KeyFactory keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("RSA");
            zzhtm zzhtmVar = zzhtkVar.f8771a;
            zzhtm zzhtmVar2 = zzhtkVar.f8771a;
            BigInteger bigInteger = zzhtmVar.b;
            zzhti zzhtiVar = zzhtmVar2.f8775a;
            zzhti zzhtiVar2 = zzhtmVar2.f8775a;
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) keyFactory.generatePrivate(new RSAPrivateCrtKeySpec(bigInteger, zzhtiVar.b, zzhtkVar.b.f8864a, zzhtkVar.f8772c.f8864a, zzhtkVar.d.f8864a, zzhtkVar.e.f8864a, zzhtkVar.f.f8864a, zzhtkVar.g.f8864a));
            zzhhs zzhhsVar = zzhwy.f8860a;
            zzhwl zzhwlVar = (zzhwl) zzhhsVar.a(zzhtiVar2.d);
            zzhwl zzhwlVar2 = (zzhwl) zzhhsVar.a(zzhtiVar2.e);
            zzhtmVar2.f8776c.b();
            zzhtiVar2.f8768c.getClass();
            Object obj = new Object();
            if (!zzhhc.a()) {
                zzhxa.b(zzhwlVar);
                if (zzhwlVar.equals(zzhwlVar2)) {
                    zzhxa.c(rSAPrivateCrtKey.getModulus().bitLength());
                    zzhxa.d(rSAPrivateCrtKey.getPublicExponent());
                    return obj;
                }
                throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
            }
            throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
        }
    }
}
