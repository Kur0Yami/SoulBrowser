package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPublicKeySpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrl implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrl f8702a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        KeyFactory keyFactory;
        byte[] bArr;
        zzhri zzhriVar = (zzhri) zzgzxVar;
        byte[] bArr2 = zzhud.g;
        Provider a2 = zzhhf.a();
        zzhhs zzhhsVar = zzhud.k;
        zzhre zzhreVar = zzhriVar.f8698a;
        ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(zzhriVar.b, zzhvw.a((zzhvu) zzhhsVar.a(zzhreVar.b)));
        if (a2 != null) {
            keyFactory = KeyFactory.getInstance("EC", a2);
        } else {
            keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("EC");
        }
        ECPublicKey eCPublicKey = (ECPublicKey) keyFactory.generatePublic(eCPublicKeySpec);
        zzhwl zzhwlVar = (zzhwl) zzhud.i.a(zzhreVar.f8693c);
        zzhvv zzhvvVar = (zzhvv) zzhud.j.a(zzhreVar.f8692a);
        byte[] b = zzhriVar.f8699c.b();
        if (zzhreVar.d.equals(zzhrd.d)) {
            bArr = zzhud.h;
        } else {
            bArr = zzhud.g;
        }
        return new zzhud(eCPublicKey, zzhwlVar, zzhvvVar, b, bArr, a2);
    }
}
