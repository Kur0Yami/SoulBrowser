package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbau extends zzbbh {
    public static volatile String h;
    public static final Object i = new Object();

    public zzbau(zzazt zzaztVar, zzavs zzavsVar, int i2) {
        super(zzaztVar, "MMDDWI2IGLmF5pG/RRqJJZVb/JAirVaBalbjWCkub0DwWmFp7b+bfaTjmPK9uiWU", "m1dpreCDNlkoMOYdr+vmzaz+jSmUZiIrETih78jZTqg=", zzavsVar, i2, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.k();
        ((zzawp) zzavsVar.f).H0("E");
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
        zzavs zzavsVar2 = this.d;
        synchronized (zzavsVar2) {
            String str = h;
            zzavsVar2.k();
            ((zzawp) zzavsVar2.f).H0(str);
        }
    }
}
