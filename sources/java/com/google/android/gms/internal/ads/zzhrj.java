package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.spec.ECPrivateKeySpec;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrj implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrj f8700a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        KeyFactory keyFactory;
        zzhrg zzhrgVar = (zzhrg) zzgzxVar;
        Provider a2 = zzhhf.a();
        zzhwl zzhwlVar = (zzhwl) zzhud.i.a(zzhrgVar.f8695a.f8698a.f8693c);
        zzhhs zzhhsVar = zzhud.j;
        zzhri zzhriVar = zzhrgVar.f8695a;
        ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(zzhrgVar.b.f8864a, zzhvw.a((zzhvu) zzhud.k.a(zzhriVar.f8698a.b)));
        if (a2 != null) {
            keyFactory = KeyFactory.getInstance("EC", a2);
        } else {
            keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("EC");
        }
        zzhriVar.f8699c.b();
        Object obj = new Object();
        if (zzhhb.a(2)) {
            zzhxa.b(zzhwlVar);
            zzhwlVar.toString().concat("withECDSA");
            return obj;
        }
        throw new GeneralSecurityException("Can not use ECDSA in FIPS-mode, as BoringCrypto is not available.");
    }
}
