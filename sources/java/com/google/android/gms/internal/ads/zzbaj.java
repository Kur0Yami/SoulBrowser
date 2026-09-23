package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbaj extends zzbbh {
    public static volatile Long h;
    public static final Object i = new Object();

    public zzbaj(zzazt zzaztVar, zzavs zzavsVar, int i2) {
        super(zzaztVar, "N+SNt584k90MWn4aBLIhSutg85cYgcNyu+q+5WGRUo/oWkmPivq/1xlEIBG+GcFK", "VOVDFi9LxFQe2QWzKEnmStNUha/UwjqmQV12jeIMYds=", zzavsVar, i2, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        if (h == null) {
            synchronized (i) {
                try {
                    if (h == null) {
                        h = (Long) this.e.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            long longValue = h.longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).P(longValue);
        }
    }
}
