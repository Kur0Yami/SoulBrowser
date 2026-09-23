package com.google.android.gms.internal.ads;

import android.os.Build;
import j$.util.Objects;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtb implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtb f8756a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        KeyFactory keyFactory;
        zzhaq b;
        byte[] bArr;
        Signature signature;
        Integer valueOf;
        zzhsy zzhsyVar = (zzhsy) zzgzxVar;
        int i = zzhkl.f8617a;
        if (Objects.equals(System.getProperty("java.vendor"), "The Android Project")) {
            if (!Objects.equals(System.getProperty("java.vendor"), "The Android Project")) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(Build.VERSION.SDK_INT);
            }
            valueOf.getClass();
        }
        Provider a2 = zzhhf.a();
        if (a2 != null) {
            keyFactory = KeyFactory.getInstance("RSA", a2);
        } else {
            keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("RSA");
        }
        zzhta zzhtaVar = zzhsyVar.f8749a;
        BigInteger bigInteger = zzhtaVar.b;
        zzhsw zzhswVar = zzhtaVar.f8754a;
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) keyFactory.generatePrivate(new RSAPrivateCrtKeySpec(bigInteger, zzhswVar.b, zzhsyVar.b.f8864a, zzhsyVar.f8750c.f8864a, zzhsyVar.d.f8864a, zzhsyVar.e.f8864a, zzhsyVar.f.f8864a, zzhsyVar.g.f8864a));
        if (a2 != null) {
            b = zzhux.c(zzhtaVar, a2);
        } else {
            b = zzhwu.b(zzhtaVar);
        }
        zzhaq zzhaqVar = b;
        zzhsu zzhsuVar = zzhswVar.d;
        byte[] b2 = zzhtaVar.f8755c.b();
        if (zzhswVar.f8746c.equals(zzhsv.d)) {
            bArr = zzhuw.h;
        } else {
            bArr = zzhuw.g;
        }
        zzhuw zzhuwVar = new zzhuw(rSAPrivateCrtKey, zzhsuVar, b2, bArr, zzhaqVar, a2);
        String str = zzhuwVar.b;
        Provider provider = zzhuwVar.f;
        if (provider != null) {
            signature = Signature.getInstance(str, provider);
        } else {
            signature = (Signature) zzhwc.d.f8846a.zza(str);
        }
        signature.initSign(zzhuwVar.f8813a);
        byte[] bArr2 = zzhuw.i;
        signature.update(bArr2);
        byte[] bArr3 = zzhuwVar.d;
        if (bArr3.length > 0) {
            signature.update(bArr3);
        }
        byte[] sign = signature.sign();
        byte[] bArr4 = zzhuwVar.f8814c;
        if (bArr4.length > 0) {
            sign = zzhvp.a(bArr4, sign);
        }
        try {
            zzhuwVar.e.a(sign, bArr2);
            return zzhuwVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("RSA signature computation error", e);
        }
    }
}
