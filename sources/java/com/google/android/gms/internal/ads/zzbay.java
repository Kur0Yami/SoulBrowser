package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbay extends zzbbh {
    public final boolean h;

    public zzbay(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "i1MP+hbN0GtKV+UrtunReVDE3xh08srd5laBoZPswSp8P1i6BkpyGoiKZr6P+aBQ", "NQ1lo07HyX6R6o9xhF+JysjB/gJoli3QRzxLpFE7RH8=", zzavsVar, i, 61);
        this.h = zzaztVar.o.f4502a;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        long longValue = ((Long) this.e.invoke(null, this.f4531a.f4510a, Boolean.valueOf(this.h))).longValue();
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            zzavsVar.k();
            ((zzawp) zzavsVar.f).e0(longValue);
        }
    }
}
