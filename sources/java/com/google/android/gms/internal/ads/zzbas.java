package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbas extends zzbbh {
    public final zzayw h;
    public final long i;
    public final long j;

    public zzbas(zzazt zzaztVar, zzavs zzavsVar, int i, zzayw zzaywVar, long j, long j2) {
        super(zzaztVar, "1MiCMWad12oLn5alnMxHwTvbBZm7RpaUcGFZ/LjrpVbPksWcBk53Qc+euKdOo/dG", "/cnUVQvNHFqi3ggOmiA4o/IdQSFHoegJ/H9a2xERT14=", zzavsVar, i, 11);
        this.h = zzaywVar;
        this.i = j;
        this.j = j2;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzayu] */
    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzayw zzaywVar = this.h;
        if (zzaywVar != null) {
            String str = (String) this.e.invoke(null, zzaywVar.f4487a, Long.valueOf(this.i), Long.valueOf(this.j));
            ?? obj = new Object();
            HashMap b = zzaxi.b(str);
            if (b != null) {
                obj.f4484a = (Long) b.get(0);
                obj.b = (Long) b.get(1);
                obj.f4485c = (Long) b.get(2);
            }
            zzavs zzavsVar = this.d;
            synchronized (zzavsVar) {
                try {
                    long longValue = obj.f4484a.longValue();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).M0(longValue);
                    if (obj.b.longValue() >= 0) {
                        long longValue2 = obj.b.longValue();
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).k0(longValue2);
                    }
                    if (obj.f4485c.longValue() >= 0) {
                        long longValue3 = obj.f4485c.longValue();
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).l0(longValue3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
