package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhlm implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhlm f8653a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhjz zzhjzVar = ((zzhim) zzgzxVar).f8576a;
        zzhim.d(zzhjzVar);
        Integer num = zzhjzVar.f;
        int ordinal = zzhjzVar.e.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                } else {
                    zzhjf.f8592a.b();
                }
            }
            zzhjf.a(num.intValue()).b();
        } else {
            zzhjf.b(num.intValue()).b();
        }
        return new Object();
    }
}
