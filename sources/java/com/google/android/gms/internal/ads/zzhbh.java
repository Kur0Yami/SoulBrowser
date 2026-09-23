package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhbh implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhbh f8340a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        byte[] b;
        zzhjz zzhjzVar = ((zzhim) zzgzxVar).f8576a;
        zzhim.d(zzhjzVar);
        Integer num = zzhjzVar.f;
        zzgzq zzgzqVar = (zzgzq) zzhia.d.b(zzgzq.class, zzhjzVar.f8605a).a(zzhjzVar.f8606c);
        zzhpw zzhpwVar = zzhjzVar.e;
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type ".concat(String.valueOf(zzhpwVar)));
                    }
                } else {
                    b = zzhjf.f8592a.b();
                }
            }
            b = zzhjf.a(num.intValue()).b();
        } else {
            b = zzhjf.b(num.intValue()).b();
        }
        return new zzhgh(zzgzqVar, b);
    }
}
