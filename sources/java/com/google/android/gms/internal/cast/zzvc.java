package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzvc extends zzyd implements zzzj {
    private static final zzvc zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private zzyl zzf;
    private zzyl zzg;
    private boolean zzh;

    static {
        zzvc zzvcVar = new zzvc();
        zzi = zzvcVar;
        zzyd.h(zzvc.class, zzvcVar);
    }

    public zzvc() {
        zzzq zzzqVar = zzzq.i;
        this.zzf = zzzqVar;
        this.zzg = zzzqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzi;
                        }
                        throw null;
                    }
                    return new zzya(zzi);
                }
                return new zzvc();
            }
            return new zzzr(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003\u001b\u0004\u001b\u0005ဇ\u0002", new Object[]{"zzb", "zzd", zzoj.f9807a, "zze", "zzf", zzuy.class, "zzg", zzva.class, "zzh"});
        }
        return (byte) 1;
    }
}
