package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtp implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtp f8779a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        byte[] bArr;
        zzhtm zzhtmVar = (zzhtm) zzgzxVar;
        zzhhs zzhhsVar = zzhwy.f8860a;
        try {
            return zzhvg.d(zzhtmVar);
        } catch (NoSuchProviderException unused) {
            KeyFactory keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("RSA");
            BigInteger bigInteger = zzhtmVar.b;
            zzhti zzhtiVar = zzhtmVar.f8775a;
            RSAPublicKey rSAPublicKey = (RSAPublicKey) keyFactory.generatePublic(new RSAPublicKeySpec(bigInteger, zzhtiVar.b));
            zzhhs zzhhsVar2 = zzhwy.f8860a;
            zzhwl zzhwlVar = (zzhwl) zzhhsVar2.a(zzhtiVar.d);
            zzhwl zzhwlVar2 = (zzhwl) zzhhsVar2.a(zzhtiVar.e);
            int i = zzhtiVar.f;
            byte[] b = zzhtmVar.f8776c.b();
            if (zzhtiVar.f8768c.equals(zzhth.d)) {
                bArr = zzhwy.f8861c;
            } else {
                bArr = zzhwy.b;
            }
            return new zzhwx(rSAPublicKey, zzhwlVar, zzhwlVar2, i, b, bArr);
        }
    }
}
