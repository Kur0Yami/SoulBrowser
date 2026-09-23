package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfk implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfk f8496a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhfm.f8498a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnq F = zzhnq.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    zzhci zzhciVar = new zzhci();
                    zzhciVar.a(F.E().k());
                    zzhciVar.b();
                    zzhciVar.c();
                    zzhciVar.d = zzhfm.b(zzhjzVar.e);
                    zzhck d = zzhciVar.d();
                    zzhcc zzhccVar = new zzhcc();
                    zzhccVar.f8375a = d;
                    zzhccVar.b = zzhxe.a(F.E().E());
                    zzhccVar.f8376c = zzhjzVar.f;
                    return zzhccVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing AesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
    }
}
