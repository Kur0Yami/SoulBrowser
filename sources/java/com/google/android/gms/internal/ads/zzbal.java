package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbal extends zzbbh {
    public static volatile String h;
    public static final Object i = new Object();

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        if (h == null) {
            synchronized (i) {
                try {
                    if (h == null) {
                        h = (String) this.e.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            String str = h;
            zzavsVar.k();
            ((zzawp) zzavsVar.f).j0(str);
        }
    }
}
