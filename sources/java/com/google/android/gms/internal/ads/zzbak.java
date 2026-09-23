package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbak extends zzbbh {
    public final long h;

    public zzbak(zzazt zzaztVar, zzavs zzavsVar, long j, int i) {
        super(zzaztVar, "6Tbgi6IQESKZikJOpZcClcVJxza1rhAf3nfasZu/vDcTd3loITpTNbH23xjyLA5L", "g107GCb4k6+PXON8scRHoxvRnyAK9ZOpFHjKTWKkbXc=", zzavsVar, i, 25);
        this.h = j;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        long longValue = ((Long) this.e.invoke(null, null)).longValue();
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            zzavsVar.k();
            ((zzawp) zzavsVar.f).q0(longValue);
            long j = this.h;
            if (j != 0) {
                zzavsVar.k();
                ((zzawp) zzavsVar.f).R0(longValue - j);
                zzavsVar.k();
                ((zzawp) zzavsVar.f).U0(j);
            }
        }
    }
}
