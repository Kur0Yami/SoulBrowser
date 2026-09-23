package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzva extends zzyd implements zzzj {
    private static final zzva zzi;
    private int zzb;
    private int zzd;
    private long zze;
    private zzyl zzf;
    private zzyl zzg;
    private zzyl zzh;

    static {
        zzva zzvaVar = new zzva();
        zzi = zzvaVar;
        zzyd.h(zzva.class, zzvaVar);
    }

    public zzva() {
        zzzq zzzqVar = zzzq.i;
        this.zzf = zzzqVar;
        this.zzg = zzzqVar;
        this.zzh = zzzqVar;
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
                return new zzva();
            }
            return new zzzr(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003\u001b\u0004\u001b\u0005\u001b", new Object[]{"zzb", "zzd", zzoh.f9806a, "zze", "zzf", zzus.class, "zzg", zzqt.class, "zzh", zzuy.class});
        }
        return (byte) 1;
    }
}
