package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAKeyGenParameterSpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhto implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhto f8778a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhti zzhtiVar = (zzhti) zzhanVar;
        zzhjs zzhjsVar = zzhtq.f8780a;
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhwc.f.f8846a.zza("RSA");
        keyPairGenerator.initialize(new RSAKeyGenParameterSpec(zzhtiVar.f8767a, new BigInteger(1, zzhtiVar.b.toByteArray())));
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        RSAPublicKey rSAPublicKey = (RSAPublicKey) generateKeyPair.getPublic();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) generateKeyPair.getPrivate();
        zzhtl zzhtlVar = new zzhtl();
        zzhtlVar.f8773a = zzhtiVar;
        zzhtlVar.b = rSAPublicKey.getModulus();
        zzhtlVar.f8774c = num;
        zzhtm a2 = zzhtlVar.a();
        zzhtj zzhtjVar = new zzhtj();
        zzhtjVar.f8769a = a2;
        zzhxd zzhxdVar = new zzhxd(rSAPrivateCrtKey.getPrimeP());
        zzhxd zzhxdVar2 = new zzhxd(rSAPrivateCrtKey.getPrimeQ());
        zzhtjVar.f8770c = zzhxdVar;
        zzhtjVar.d = zzhxdVar2;
        zzhtjVar.b = new zzhxd(rSAPrivateCrtKey.getPrivateExponent());
        zzhxd zzhxdVar3 = new zzhxd(rSAPrivateCrtKey.getPrimeExponentP());
        zzhxd zzhxdVar4 = new zzhxd(rSAPrivateCrtKey.getPrimeExponentQ());
        zzhtjVar.e = zzhxdVar3;
        zzhtjVar.f = zzhxdVar4;
        zzhtjVar.g = new zzhxd(rSAPrivateCrtKey.getCrtCoefficient());
        return zzhtjVar.a();
    }
}
