package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbbc extends zzbbh {
    public static volatile Long h;
    public static final Object i = new Object();

    public zzbbc(zzazt zzaztVar, zzavs zzavsVar, int i2) {
        super(zzaztVar, "VYNLVwJcUVwKHNYqtTAMU2Cbdf8xQvz3Fr3MGMTI+Feinwv11ysZpnAq/2AMk2I1", "XCAdtiyR5t8AMQ7u4CMXLD5NJ9dD+Tw+KRPDn9OS+vQ=", zzavsVar, i2, 33);
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
            ((zzawp) zzavsVar.f).G(longValue);
        }
    }
}
