package com.google.android.gms.internal.ads;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrk implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrk f8701a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhre zzhreVar = (zzhre) zzhanVar;
        zzhjs zzhjsVar = zzhrm.f8703a;
        ECParameterSpec eCParameterSpec = zzhreVar.b.b;
        KeyPairGenerator keyPairGenerator = (KeyPairGenerator) zzhwc.f.f8846a.zza("EC");
        keyPairGenerator.initialize(eCParameterSpec);
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        ECPublicKey eCPublicKey = (ECPublicKey) generateKeyPair.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) generateKeyPair.getPrivate();
        zzhrh zzhrhVar = new zzhrh();
        zzhrhVar.f8696a = zzhreVar;
        zzhrhVar.f8697c = num;
        zzhrhVar.b = eCPublicKey.getW();
        zzhri a2 = zzhrhVar.a();
        zzhrf zzhrfVar = new zzhrf();
        zzhrfVar.f8694a = a2;
        zzhrfVar.b = new zzhxd(eCPrivateKey.getS());
        return zzhrfVar.a();
    }
}
