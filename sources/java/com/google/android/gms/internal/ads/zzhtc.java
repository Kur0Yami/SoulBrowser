package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAKeyGenParameterSpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtc implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtc f8757a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhsw zzhswVar = (zzhsw) zzhanVar;
        zzhjs zzhjsVar = zzhte.f8759a;
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhwc.f.f8846a.zza("RSA");
        keyPairGenerator.initialize(new RSAKeyGenParameterSpec(zzhswVar.f8745a, new BigInteger(1, zzhswVar.b.toByteArray())));
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) generateKeyPair.getPrivate();
        zzhsz zzhszVar = new zzhsz();
        zzhszVar.f8751a = zzhswVar;
        zzhszVar.b = rSAPublicKey.getModulus();
        zzhszVar.f8752c = num;
        zzhta a2 = zzhszVar.a();
        zzhsx zzhsxVar = new zzhsx();
        zzhsxVar.f8747a = a2;
        zzhxd zzhxdVar = new zzhxd(rSAPrivateCrtKey.getPrimeP());
        zzhxd zzhxdVar2 = new zzhxd(rSAPrivateCrtKey.getPrimeQ());
        zzhsxVar.f8748c = zzhxdVar;
        zzhsxVar.d = zzhxdVar2;
        zzhsxVar.b = new zzhxd(rSAPrivateCrtKey.getPrivateExponent());
        zzhxd zzhxdVar3 = new zzhxd(rSAPrivateCrtKey.getPrimeExponentP());
        zzhxd zzhxdVar4 = new zzhxd(rSAPrivateCrtKey.getPrimeExponentQ());
        zzhsxVar.e = zzhxdVar3;
        zzhsxVar.f = zzhxdVar4;
        zzhsxVar.g = new zzhxd(rSAPrivateCrtKey.getCrtCoefficient());
        return zzhsxVar.a();
    }
}
