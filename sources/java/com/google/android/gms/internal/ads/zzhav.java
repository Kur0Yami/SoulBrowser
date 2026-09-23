package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhav {
    static {
        int i = zzhpy.zza;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() {
        zzhbj zzhbjVar = zzhbj.f8342a;
        zzhjb zzhjbVar = zzhjb.b;
        zzhjbVar.b(zzhbj.f8342a);
        zzhjbVar.a(zzhbj.b);
        zzhlj.a();
        int i = zzhbp.e;
        if (zzhhb.a(i)) {
            zzhjl zzhjlVar = zzhfa.f8485a;
            zzhje zzhjeVar = zzhje.b;
            zzhjeVar.c(zzhfa.f8485a);
            zzhjeVar.d(zzhfa.b);
            zzhjeVar.a(zzhfa.f8486c);
            zzhjeVar.b(zzhfa.d);
            zzhjbVar.a(zzhbp.f8350a);
            zzhja zzhjaVar = zzhja.b;
            HashMap hashMap = new HashMap();
            hashMap.put("AES128_CTR_HMAC_SHA256", zzhei.e);
            zzhbq zzhbqVar = new zzhbq();
            zzhbqVar.a(16);
            zzhbqVar.b(32);
            zzhbqVar.d(16);
            zzhbqVar.c(16);
            zzhbr zzhbrVar = zzhbr.d;
            zzhbqVar.e = zzhbrVar;
            zzhbs zzhbsVar = zzhbs.d;
            zzhbqVar.f = zzhbsVar;
            hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzhbqVar.e());
            hashMap.put("AES256_CTR_HMAC_SHA256", zzhei.f);
            zzhbq zzhbqVar2 = new zzhbq();
            zzhbqVar2.a(32);
            zzhbqVar2.b(32);
            zzhbqVar2.d(32);
            zzhbqVar2.c(16);
            zzhbqVar2.e = zzhbrVar;
            zzhbqVar2.f = zzhbsVar;
            hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzhbqVar2.e());
            zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap));
            zzhix zzhixVar = zzhix.b;
            zzhixVar.a(zzhbp.f8351c, zzhbt.class);
            zzhiv zzhivVar = zzhiv.f8581c;
            zzhivVar.a(zzhbp.d, zzhbt.class);
            zzhia zzhiaVar = zzhia.d;
            zzhiaVar.c(zzhbp.b, i, true);
            int i2 = zzhch.e;
            if (zzhhb.a(i2)) {
                zzhjeVar.c(zzhfm.f8498a);
                zzhjeVar.d(zzhfm.b);
                zzhjeVar.a(zzhfm.f8499c);
                zzhjeVar.b(zzhfm.d);
                zzhjbVar.a(zzhch.f8382a);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("AES128_GCM", zzhei.f8459a);
                zzhci zzhciVar = new zzhci();
                zzhciVar.b();
                zzhciVar.a(16);
                zzhciVar.c();
                zzhcj zzhcjVar = zzhcj.d;
                zzhciVar.d = zzhcjVar;
                hashMap2.put("AES128_GCM_RAW", zzhciVar.d());
                hashMap2.put("AES256_GCM", zzhei.b);
                zzhci zzhciVar2 = new zzhci();
                zzhciVar2.b();
                zzhciVar2.a(32);
                zzhciVar2.c();
                zzhciVar2.d = zzhcjVar;
                hashMap2.put("AES256_GCM_RAW", zzhciVar2.d());
                zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap2));
                zzhixVar.a(zzhch.f8383c, zzhck.class);
                zzhivVar.a(zzhch.d, zzhck.class);
                zzhiaVar.c(zzhch.b, i2, true);
                if (zzhhc.a()) {
                    return;
                }
                zzhjs zzhjsVar = zzhby.f8366a;
                if (zzhhb.a(1)) {
                    zzhjeVar.c(zzhff.f8491a);
                    zzhjeVar.d(zzhff.b);
                    zzhjeVar.a(zzhff.f8492c);
                    zzhjeVar.b(zzhff.d);
                    zzhjbVar.a(zzhby.f8366a);
                    HashMap hashMap3 = new HashMap();
                    hashMap3.put("AES128_EAX", zzhei.f8460c);
                    zzhbz zzhbzVar = new zzhbz();
                    zzhbzVar.b(16);
                    zzhbzVar.a(16);
                    zzhbzVar.c();
                    zzhca zzhcaVar = zzhca.d;
                    zzhbzVar.d = zzhcaVar;
                    hashMap3.put("AES128_EAX_RAW", zzhbzVar.d());
                    hashMap3.put("AES256_EAX", zzhei.d);
                    zzhbz zzhbzVar2 = new zzhbz();
                    zzhbzVar2.b(16);
                    zzhbzVar2.a(32);
                    zzhbzVar2.c();
                    zzhbzVar2.d = zzhcaVar;
                    hashMap3.put("AES256_EAX_RAW", zzhbzVar2.d());
                    zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap3));
                    zzhivVar.a(zzhby.f8367c, zzhcb.class);
                    zzhiaVar.a(zzhby.b, true);
                    zzhjs zzhjsVar2 = zzhcq.f8396a;
                    if (zzhhb.a(1)) {
                        zzhjeVar.c(zzhft.f8506a);
                        zzhjeVar.d(zzhft.b);
                        zzhjeVar.a(zzhft.f8507c);
                        zzhjeVar.b(zzhft.d);
                        HashMap hashMap4 = new HashMap();
                        zzhcr zzhcrVar = new zzhcr();
                        zzhcrVar.a(16);
                        zzhcs zzhcsVar = zzhcs.b;
                        zzhcrVar.b = zzhcsVar;
                        hashMap4.put("AES128_GCM_SIV", zzhcrVar.b());
                        zzhcr zzhcrVar2 = new zzhcr();
                        zzhcrVar2.a(16);
                        zzhcs zzhcsVar2 = zzhcs.d;
                        zzhcrVar2.b = zzhcsVar2;
                        hashMap4.put("AES128_GCM_SIV_RAW", zzhcrVar2.b());
                        zzhcr zzhcrVar3 = new zzhcr();
                        zzhcrVar3.a(32);
                        zzhcrVar3.b = zzhcsVar;
                        hashMap4.put("AES256_GCM_SIV", zzhcrVar3.b());
                        zzhcr zzhcrVar4 = new zzhcr();
                        zzhcrVar4.a(32);
                        zzhcrVar4.b = zzhcsVar2;
                        hashMap4.put("AES256_GCM_SIV_RAW", zzhcrVar4.b());
                        zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap4));
                        zzhixVar.a(zzhco.f8394a, zzhct.class);
                        zzhivVar.a(zzhcp.f8395a, zzhct.class);
                        zzhjbVar.a(zzhcq.f8396a);
                        zzhiaVar.a(zzhcq.d, true);
                        zzhjs zzhjsVar3 = zzhcx.f8406a;
                        if (zzhhb.a(1)) {
                            zzhjeVar.c(zzhfz.f8514a);
                            zzhjeVar.d(zzhfz.b);
                            zzhjeVar.a(zzhfz.f8515c);
                            zzhjeVar.b(zzhfz.d);
                            zzhjbVar.a(zzhcx.f8406a);
                            zzhivVar.a(zzhcv.f8404a, zzhcz.class);
                            HashMap hashMap5 = new HashMap();
                            hashMap5.put("CHACHA20_POLY1305", new zzhcz(zzhcy.b));
                            hashMap5.put("CHACHA20_POLY1305_RAW", new zzhcz(zzhcy.d));
                            zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap5));
                            zzhiaVar.a(zzhcx.f8407c, true);
                            zzhjs zzhjsVar4 = zzhdc.f8413a;
                            if (zzhhb.a(1)) {
                                zzhjeVar.c(zzhdo.f8430a);
                                zzhjeVar.d(zzhdo.b);
                                zzhjeVar.a(zzhdo.f8431c);
                                zzhjeVar.b(zzhdo.d);
                                zzhjbVar.a(zzhdc.f8413a);
                                zzhivVar.a(zzhdc.f8414c, zzhdj.class);
                                zzhiaVar.a(zzhdc.b, true);
                                zzhij zzhijVar = zzhdg.f8419a;
                                if (zzhhb.a(1)) {
                                    zzhjeVar.c(zzhdy.f8446a);
                                    zzhjeVar.d(zzhdy.b);
                                    zzhjeVar.a(zzhdy.f8447c);
                                    zzhjeVar.b(zzhdy.d);
                                    zzhivVar.a(zzhdg.b, zzhdt.class);
                                    zzhjbVar.a(zzhdg.f8420c);
                                    zzhiaVar.a(zzhdg.f8419a, true);
                                    zzhjs zzhjsVar5 = zzhet.f8474a;
                                    if (zzhhb.a(1)) {
                                        zzhjeVar.c(zzhgu.f8535a);
                                        zzhjeVar.d(zzhgu.b);
                                        zzhjeVar.a(zzhgu.f8536c);
                                        zzhjeVar.b(zzhgu.d);
                                        zzhjbVar.a(zzhet.f8474a);
                                        HashMap hashMap6 = new HashMap();
                                        hashMap6.put("XCHACHA20_POLY1305", new zzhev(zzheu.b));
                                        hashMap6.put("XCHACHA20_POLY1305_RAW", new zzhev(zzheu.d));
                                        zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap6));
                                        zzhivVar.a(zzhet.d, zzhev.class);
                                        zzhixVar.a(zzhet.f8475c, zzhev.class);
                                        zzhiaVar.a(zzhet.b, true);
                                        zzhhz zzhhzVar = zzhem.f8465a;
                                        zzhjeVar.c(zzhgo.f8527a);
                                        zzhjeVar.d(zzhgo.b);
                                        zzhjeVar.a(zzhgo.f8528c);
                                        zzhjeVar.b(zzhgo.d);
                                        HashMap hashMap7 = new HashMap();
                                        hashMap7.put("XAES_256_GCM_192_BIT_NONCE", zzhei.g);
                                        hashMap7.put("XAES_256_GCM_192_BIT_NONCE_NO_PREFIX", zzhei.h);
                                        hashMap7.put("XAES_256_GCM_160_BIT_NONCE_NO_PREFIX", zzhei.i);
                                        hashMap7.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", zzhei.j);
                                        zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap7));
                                        zzhjbVar.a(zzhem.b);
                                        zzhivVar.a(zzhel.f8464a, zzheo.class);
                                        return;
                                    }
                                    throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
                                }
                                throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
                            }
                            throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
                        }
                        throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
                    }
                    throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
                }
                throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
            }
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
