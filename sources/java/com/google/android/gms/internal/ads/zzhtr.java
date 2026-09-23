package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzhtr {
    static {
        int i = zzhpy.zza;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() {
        zzhso zzhsoVar = zzhso.f8734a;
        zzhjb zzhjbVar = zzhjb.b;
        zzhjbVar.b(zzhso.f8734a);
        zzhjbVar.a(zzhso.b);
        zzhjbVar.b(zzhss.f8738a);
        zzhjbVar.a(zzhss.b);
        int i = zzhrm.f;
        if (zzhhb.a(i)) {
            zzhjl zzhjlVar = zzhub.f8788a;
            zzhje zzhjeVar = zzhje.b;
            zzhjeVar.c(zzhub.f8788a);
            zzhjeVar.d(zzhub.b);
            zzhjeVar.a(zzhub.f8789c);
            zzhjeVar.b(zzhub.d);
            zzhjeVar.a(zzhub.e);
            zzhjeVar.b(zzhub.f);
            zzhja zzhjaVar = zzhja.b;
            HashMap hashMap = new HashMap();
            hashMap.put("ECDSA_P256", zzhsk.f8731a);
            hashMap.put("ECDSA_P256_IEEE_P1363", zzhsk.d);
            zzhqz zzhqzVar = new zzhqz();
            zzhqzVar.f8683c = zzhrb.b;
            zzhqzVar.b = zzhra.f8684c;
            zzhqzVar.f8682a = zzhrc.b;
            zzhqzVar.d = zzhrd.e;
            hashMap.put("ECDSA_P256_RAW", zzhqzVar.a());
            hashMap.put("ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX", zzhsk.f);
            hashMap.put("ECDSA_P384", zzhsk.b);
            hashMap.put("ECDSA_P384_IEEE_P1363", zzhsk.e);
            zzhqz zzhqzVar2 = new zzhqz();
            zzhqzVar2.f8683c = zzhrb.d;
            zzhra zzhraVar = zzhra.d;
            zzhqzVar2.b = zzhraVar;
            zzhrc zzhrcVar = zzhrc.f8688c;
            zzhqzVar2.f8682a = zzhrcVar;
            zzhrd zzhrdVar = zzhrd.b;
            zzhqzVar2.d = zzhrdVar;
            hashMap.put("ECDSA_P384_SHA512", zzhqzVar2.a());
            zzhqz zzhqzVar3 = new zzhqz();
            zzhqzVar3.f8683c = zzhrb.f8686c;
            zzhqzVar3.b = zzhraVar;
            zzhqzVar3.f8682a = zzhrcVar;
            zzhqzVar3.d = zzhrdVar;
            hashMap.put("ECDSA_P384_SHA384", zzhqzVar3.a());
            hashMap.put("ECDSA_P521", zzhsk.f8732c);
            hashMap.put("ECDSA_P521_IEEE_P1363", zzhsk.g);
            zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap));
            zzhjbVar.a(zzhrm.f8703a);
            zzhjbVar.a(zzhrm.b);
            zzhiv zzhivVar = zzhiv.f8581c;
            zzhivVar.a(zzhrm.e, zzhre.class);
            zzhia zzhiaVar = zzhia.d;
            zzhiaVar.c(zzhrm.f8704c, i, true);
            zzhiaVar.c(zzhrm.d, i, false);
            int i2 = zzhte.f;
            if (zzhhb.a(i2)) {
                zzhjeVar.c(zzhuv.f8811a);
                zzhjeVar.d(zzhuv.b);
                zzhjeVar.a(zzhuv.f8812c);
                zzhjeVar.b(zzhuv.d);
                zzhjeVar.a(zzhuv.e);
                zzhjeVar.b(zzhuv.f);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("RSA_SSA_PKCS1_3072_SHA256_F4", zzhsk.h);
                BigInteger bigInteger = zzhsw.e;
                zzhst zzhstVar = new zzhst();
                zzhstVar.f8740c = zzhsu.b;
                zzhstVar.a(3072);
                BigInteger bigInteger2 = zzhsw.e;
                zzhstVar.b = bigInteger2;
                zzhsv zzhsvVar = zzhsv.e;
                zzhstVar.d = zzhsvVar;
                hashMap2.put("RSA_SSA_PKCS1_3072_SHA256_F4_RAW", zzhstVar.b());
                hashMap2.put("RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX", zzhsk.i);
                hashMap2.put("RSA_SSA_PKCS1_4096_SHA512_F4", zzhsk.j);
                zzhst zzhstVar2 = new zzhst();
                zzhstVar2.f8740c = zzhsu.d;
                zzhstVar2.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
                zzhstVar2.b = bigInteger2;
                zzhstVar2.d = zzhsvVar;
                hashMap2.put("RSA_SSA_PKCS1_4096_SHA512_F4_RAW", zzhstVar2.b());
                zzhjaVar.b(hashMap2);
                zzhjbVar.a(zzhte.f8759a);
                zzhjbVar.a(zzhte.b);
                zzhivVar.a(zzhte.e, zzhsw.class);
                zzhiaVar.c(zzhte.f8760c, i2, true);
                zzhiaVar.c(zzhte.d, i2, false);
                int i3 = zzhtq.f;
                if (zzhhb.a(i3)) {
                    zzhjeVar.c(zzhve.f8824a);
                    zzhjeVar.d(zzhve.b);
                    zzhjeVar.a(zzhve.f8825c);
                    zzhjeVar.b(zzhve.d);
                    zzhjeVar.a(zzhve.e);
                    zzhjeVar.b(zzhve.f);
                    HashMap hashMap3 = new HashMap();
                    BigInteger bigInteger3 = zzhti.g;
                    zzhtf zzhtfVar = new zzhtf();
                    zzhtg zzhtgVar = zzhtg.b;
                    zzhtfVar.f8762c = zzhtgVar;
                    zzhtfVar.d = zzhtgVar;
                    zzhtfVar.b(32);
                    zzhtfVar.a(3072);
                    BigInteger bigInteger4 = zzhti.g;
                    zzhtfVar.b = bigInteger4;
                    zzhth zzhthVar = zzhth.b;
                    zzhtfVar.f = zzhthVar;
                    hashMap3.put("RSA_SSA_PSS_3072_SHA256_F4", zzhtfVar.c());
                    zzhtf zzhtfVar2 = new zzhtf();
                    zzhtfVar2.f8762c = zzhtgVar;
                    zzhtfVar2.d = zzhtgVar;
                    zzhtfVar2.b(32);
                    zzhtfVar2.a(3072);
                    zzhtfVar2.b = bigInteger4;
                    zzhth zzhthVar2 = zzhth.e;
                    zzhtfVar2.f = zzhthVar2;
                    hashMap3.put("RSA_SSA_PSS_3072_SHA256_F4_RAW", zzhtfVar2.c());
                    hashMap3.put("RSA_SSA_PSS_3072_SHA256_SHA256_32_F4", zzhsk.k);
                    zzhtf zzhtfVar3 = new zzhtf();
                    zzhtg zzhtgVar2 = zzhtg.d;
                    zzhtfVar3.f8762c = zzhtgVar2;
                    zzhtfVar3.d = zzhtgVar2;
                    zzhtfVar3.b(64);
                    zzhtfVar3.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
                    zzhtfVar3.b = bigInteger4;
                    zzhtfVar3.f = zzhthVar;
                    hashMap3.put("RSA_SSA_PSS_4096_SHA512_F4", zzhtfVar3.c());
                    zzhtf zzhtfVar4 = new zzhtf();
                    zzhtfVar4.f8762c = zzhtgVar2;
                    zzhtfVar4.d = zzhtgVar2;
                    zzhtfVar4.b(64);
                    zzhtfVar4.a(ConstantsKt.DEFAULT_BLOCK_SIZE);
                    zzhtfVar4.b = bigInteger4;
                    zzhtfVar4.f = zzhthVar2;
                    hashMap3.put("RSA_SSA_PSS_4096_SHA512_F4_RAW", zzhtfVar4.c());
                    hashMap3.put("RSA_SSA_PSS_4096_SHA512_SHA512_64_F4", zzhsk.l);
                    zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap3));
                    zzhjbVar.a(zzhtq.f8780a);
                    zzhjbVar.a(zzhtq.b);
                    zzhivVar.a(zzhtq.e, zzhti.class);
                    zzhiaVar.c(zzhtq.f8781c, i3, true);
                    zzhiaVar.c(zzhtq.d, i3, false);
                    if (zzhhc.a()) {
                        return;
                    }
                    zzhjs zzhjsVar = zzhru.f8713a;
                    if (zzhhb.a(1)) {
                        zzhjeVar.c(zzhuk.f8798a);
                        zzhjeVar.d(zzhuk.b);
                        zzhjeVar.a(zzhuk.f8799c);
                        zzhjeVar.b(zzhuk.d);
                        zzhjeVar.a(zzhuk.e);
                        zzhjeVar.b(zzhuk.f);
                        HashMap hashMap4 = new HashMap();
                        hashMap4.put("ED25519", new zzhro(zzhrn.b));
                        zzhrn zzhrnVar = zzhrn.e;
                        hashMap4.put("ED25519_RAW", new zzhro(zzhrnVar));
                        hashMap4.put("ED25519WithRawOutput", new zzhro(zzhrnVar));
                        zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap4));
                        zzhivVar.a(zzhru.f, zzhro.class);
                        zzhix.b.a(zzhru.e, zzhro.class);
                        zzhjbVar.a(zzhru.f8713a);
                        zzhjbVar.a(zzhru.b);
                        zzhiaVar.a(zzhru.f8714c, true);
                        zzhiaVar.a(zzhru.d, false);
                        return;
                    }
                    throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
                }
                throw new GeneralSecurityException("Can not use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            }
            throw new GeneralSecurityException("Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available.");
        }
        throw new GeneralSecurityException("Can not use ECDSA in FIPS-mode, as BoringCrypto module is not available.");
    }
}
