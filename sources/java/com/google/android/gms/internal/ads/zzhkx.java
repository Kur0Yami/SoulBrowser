package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhkx implements zzhjy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhkx f8633a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Object a(zzhih zzhihVar, zzhip zzhipVar, zzhjx zzhjxVar) {
        zzhxc c2;
        zzhag c3 = ((zzhai) zzhihVar).c();
        zzhjn zzhjnVar = new zzhjn();
        for (int i = 0; i < zzhihVar.zzd(); i++) {
            zzhag d = ((zzhai) zzhihVar).d(i);
            if (d.b.equals(zzgzz.b)) {
                zzhkv zzhkvVar = (zzhkv) ((zzhjv) zzhjxVar).a(d);
                zzgzx a2 = d.a();
                if (a2 instanceof zzhlk) {
                    c2 = ((zzhlk) a2).c();
                } else if (a2 instanceof zzhim) {
                    c2 = ((zzhim) a2).c();
                } else {
                    String name = a2.getClass().getName();
                    String valueOf = String.valueOf(a2.a());
                    throw new GeneralSecurityException(android.support.v4.media.a.r(new StringBuilder(name.length() + 59 + valueOf.length()), "Cannot get output prefix for key of class ", name, " with parameters ", valueOf));
                }
                zzhjnVar.a(c2, zzhkvVar);
            }
        }
        return new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zza() {
        return zzhkv.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zzb() {
        return zzhkv.class;
    }
}
