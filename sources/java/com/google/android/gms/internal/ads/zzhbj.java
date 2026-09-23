package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhbj implements zzhjy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhbj f8342a = new Object();
    public static final zzhjs b = new zzhjq(zzhim.class, zzgzq.class, zzhbh.f8340a);

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Object a(zzhih zzhihVar, zzhip zzhipVar, zzhjx zzhjxVar) {
        zzhxc c2;
        zzhjn zzhjnVar = new zzhjn();
        for (int i = 0; i < zzhihVar.zzd(); i++) {
            zzhag d = ((zzhai) zzhihVar).d(i);
            if (d.b.equals(zzgzz.b)) {
                zzgzx a2 = d.a();
                if (a2 instanceof zzhbe) {
                    c2 = ((zzhbe) a2).c();
                } else if (a2 instanceof zzhim) {
                    c2 = ((zzhim) a2).c();
                } else {
                    String name = a2.getClass().getName();
                    String valueOf = String.valueOf(a2.a());
                    throw new GeneralSecurityException(android.support.v4.media.a.r(new StringBuilder(name.length() + 59 + valueOf.length()), "Cannot get output prefix for key of class ", name, " with parameters ", valueOf));
                }
                zzhjnVar.a(c2, new zzhbg((zzgzq) ((zzhjv) zzhjxVar).a(d), d.f8326c));
            }
        }
        if (!zzhipVar.f8578a.isEmpty()) {
            zzhiz.b.a().getClass();
        }
        zzhai zzhaiVar = (zzhai) zzhihVar;
        zzhaiVar.c();
        return new zzhbi(new zzhjp(zzhjnVar.f8596a));
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zza() {
        return zzgzq.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zzb() {
        return zzgzq.class;
    }
}
