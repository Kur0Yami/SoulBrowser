package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhss implements zzhjy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhss f8738a = new Object();
    public static final zzhjs b = new zzhjq(zzhim.class, zzhaq.class, zzhsp.f8735a);

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Object a(zzhih zzhihVar, zzhip zzhipVar, zzhjx zzhjxVar) {
        zzhxc c2;
        zzhjn zzhjnVar = new zzhjn();
        for (int i = 0; i < zzhihVar.zzd(); i++) {
            zzhag d = ((zzhai) zzhihVar).d(i);
            if (d.b.equals(zzgzz.b)) {
                zzhaq zzhaqVar = (zzhaq) ((zzhjv) zzhjxVar).a(d);
                zzgzx a2 = d.a();
                if (a2 instanceof zzhtu) {
                    c2 = ((zzhtu) a2).c();
                } else if (a2 instanceof zzhim) {
                    c2 = ((zzhim) a2).c();
                } else {
                    String name = a2.getClass().getName();
                    String valueOf = String.valueOf(a2.a());
                    throw new GeneralSecurityException(android.support.v4.media.a.r(new StringBuilder(name.length() + 59 + valueOf.length()), "Cannot get output prefix for key of class ", name, " with parameters ", valueOf));
                }
                zzhjnVar.a(c2, new zzhsq(zzhaqVar, d.f8326c));
            }
        }
        if (!zzhipVar.f8578a.isEmpty()) {
            zzhiz.b.a().getClass();
        }
        return new zzhsr(new zzhjp(zzhjnVar.f8596a));
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zza() {
        return zzhaq.class;
    }

    @Override // com.google.android.gms.internal.ads.zzhjy
    public final Class zzb() {
        return zzhaq.class;
    }
}
