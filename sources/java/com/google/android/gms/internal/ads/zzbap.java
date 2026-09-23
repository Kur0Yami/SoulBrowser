package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbap extends zzbbh {
    public static volatile Long h;
    public static final Object i = new Object();

    public zzbap(zzazt zzaztVar, zzavs zzavsVar, int i2) {
        super(zzaztVar, "b8WdxwEW5LYMXGC6g6q07uNIFUV3fs77AEo1YVb/4q/M8KyV69so1cxJ+MsKyWwh", "kazSW9iygMpHEkKh5zVqXBXYRU+noi3Tzu4hpFfxZG4=", zzavsVar, i2, 22);
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
            ((zzawp) zzavsVar.f).T0(longValue);
        }
    }
}
