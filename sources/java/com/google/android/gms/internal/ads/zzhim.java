package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhim extends zzgzx {

    /* renamed from: a, reason: collision with root package name */
    public final zzhjz f8576a;

    public zzhim(zzhjz zzhjzVar) {
        d(zzhjzVar);
        this.f8576a = zzhjzVar;
    }

    public static void d(zzhjz zzhjzVar) {
        int i = zzhik.b[zzhjzVar.d.ordinal()];
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final zzhan a() {
        zzhjz zzhjzVar = this.f8576a;
        return new zzhil(zzhjzVar.f8605a, zzhjzVar.e);
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.f8576a.f;
    }

    public final zzhxc c() {
        zzhjz zzhjzVar = this.f8576a;
        zzhpw zzhpwVar = zzhjzVar.e;
        Integer num = zzhjzVar.f;
        zzhpw zzhpwVar2 = zzhjzVar.e;
        if (zzhpwVar.equals(zzhpw.RAW)) {
            return zzhxc.a(new byte[0]);
        }
        if (zzhpwVar2.equals(zzhpw.TINK)) {
            return zzhjf.b(num.intValue());
        }
        if (!zzhpwVar2.equals(zzhpw.LEGACY) && !zzhpwVar2.equals(zzhpw.CRUNCHY)) {
            throw new GeneralSecurityException("Unknown output prefix type");
        }
        return zzhjf.a(num.intValue());
    }
}
