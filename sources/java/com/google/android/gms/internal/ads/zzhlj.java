package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhlj {
    static {
        int i = zzhpy.zza;
        try {
            a();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void a() {
        zzhlp zzhlpVar = zzhlp.f8654a;
        zzhjb zzhjbVar = zzhjb.b;
        zzhjbVar.b(zzhlp.f8654a);
        zzhjbVar.a(zzhlp.b);
        zzhjbVar.b(zzhkx.f8633a);
        int i = zzhle.f;
        if (zzhhb.a(i)) {
            zzhhs zzhhsVar = zzhmj.f8672a;
            zzhje zzhjeVar = zzhje.b;
            zzhjeVar.c(zzhmj.f8673c);
            zzhjeVar.d(zzhmj.d);
            zzhjeVar.a(zzhmj.e);
            zzhjeVar.b(zzhmj.f);
            zzhjbVar.a(zzhle.f8643a);
            zzhjbVar.a(zzhle.b);
            zzhja zzhjaVar = zzhja.b;
            HashMap hashMap = new HashMap();
            hashMap.put("HMAC_SHA256_128BITTAG", zzhlv.f8660a);
            zzhlf zzhlfVar = new zzhlf();
            zzhlfVar.a(32);
            zzhlfVar.b(16);
            zzhlh zzhlhVar = zzhlh.e;
            zzhlfVar.d = zzhlhVar;
            zzhlg zzhlgVar = zzhlg.d;
            zzhlfVar.f8646c = zzhlgVar;
            hashMap.put("HMAC_SHA256_128BITTAG_RAW", zzhlfVar.c());
            zzhlf zzhlfVar2 = new zzhlf();
            zzhlfVar2.a(32);
            zzhlfVar2.b(32);
            zzhlh zzhlhVar2 = zzhlh.b;
            zzhlfVar2.d = zzhlhVar2;
            zzhlfVar2.f8646c = zzhlgVar;
            hashMap.put("HMAC_SHA256_256BITTAG", zzhlfVar2.c());
            zzhlf zzhlfVar3 = new zzhlf();
            zzhlfVar3.a(32);
            zzhlfVar3.b(32);
            zzhlfVar3.d = zzhlhVar;
            zzhlfVar3.f8646c = zzhlgVar;
            hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzhlfVar3.c());
            zzhlf zzhlfVar4 = new zzhlf();
            zzhlfVar4.a(64);
            zzhlfVar4.b(16);
            zzhlfVar4.d = zzhlhVar2;
            zzhlg zzhlgVar2 = zzhlg.f;
            zzhlfVar4.f8646c = zzhlgVar2;
            hashMap.put("HMAC_SHA512_128BITTAG", zzhlfVar4.c());
            zzhlf zzhlfVar5 = new zzhlf();
            zzhlfVar5.a(64);
            zzhlfVar5.b(16);
            zzhlfVar5.d = zzhlhVar;
            zzhlfVar5.f8646c = zzhlgVar2;
            hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzhlfVar5.c());
            zzhlf zzhlfVar6 = new zzhlf();
            zzhlfVar6.a(64);
            zzhlfVar6.b(32);
            zzhlfVar6.d = zzhlhVar2;
            zzhlfVar6.f8646c = zzhlgVar2;
            hashMap.put("HMAC_SHA512_256BITTAG", zzhlfVar6.c());
            zzhlf zzhlfVar7 = new zzhlf();
            zzhlfVar7.a(64);
            zzhlfVar7.b(32);
            zzhlfVar7.d = zzhlhVar;
            zzhlfVar7.f8646c = zzhlgVar2;
            hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzhlfVar7.c());
            hashMap.put("HMAC_SHA512_512BITTAG", zzhlv.b);
            zzhlf zzhlfVar8 = new zzhlf();
            zzhlfVar8.a(64);
            zzhlfVar8.b(64);
            zzhlfVar8.d = zzhlhVar;
            zzhlfVar8.f8646c = zzhlgVar2;
            hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzhlfVar8.c());
            zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap));
            zzhiv zzhivVar = zzhiv.f8581c;
            zzhivVar.a(zzhle.e, zzhli.class);
            zzhix.b.a(zzhle.d, zzhli.class);
            zzhia zzhiaVar = zzhia.d;
            zzhiaVar.c(zzhle.f8644c, i, true);
            if (zzhhc.a()) {
                return;
            }
            zzhhz zzhhzVar = zzhkr.f8625a;
            if (zzhhb.a(1)) {
                zzhjeVar.c(zzhma.f8666a);
                zzhjeVar.d(zzhma.b);
                zzhjeVar.a(zzhma.f8667c);
                zzhjeVar.b(zzhma.d);
                zzhivVar.a(zzhkq.f8624a, zzhku.class);
                zzhjbVar.a(zzhkr.b);
                zzhjbVar.a(zzhkr.f8626c);
                HashMap hashMap2 = new HashMap();
                zzhku zzhkuVar = zzhlv.f8661c;
                hashMap2.put("AES_CMAC", zzhkuVar);
                hashMap2.put("AES256_CMAC", zzhkuVar);
                zzhks zzhksVar = new zzhks();
                zzhksVar.a(32);
                zzhksVar.b(16);
                zzhksVar.f8628c = zzhkt.e;
                hashMap2.put("AES256_CMAC_RAW", zzhksVar.c());
                zzhjaVar.b(DesugarCollections.unmodifiableMap(hashMap2));
                zzhiaVar.a(zzhkr.d, true);
                return;
            }
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
