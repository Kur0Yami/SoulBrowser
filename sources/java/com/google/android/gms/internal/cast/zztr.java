package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zztr extends zzyd implements zzzj {
    private static final zztr zzg;
    private int zzb;
    private zzyl zzd;
    private zzyl zze;
    private zzuq zzf;

    static {
        zztr zztrVar = new zztr();
        zzg = zztrVar;
        zzyd.h(zztr.class, zztrVar);
    }

    public zztr() {
        zzzq zzzqVar = zzzq.i;
        this.zzd = zzzqVar;
        this.zze = zzzqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzg;
                        }
                        throw null;
                    }
                    return new zzya(zzg);
                }
                return new zztr();
            }
            return new zzzr(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zzb", "zzd", zzvg.class, "zze", zzrn.class, "zzf"});
        }
        return (byte) 1;
    }
}
