package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzaaz extends zzyd implements zzzj {
    private static final zzaaz zzg;
    private zzyl zzb;
    private zzyl zzd;
    private zzyl zze;
    private zzyl zzf;

    static {
        zzaaz zzaazVar = new zzaaz();
        zzg = zzaazVar;
        zzyd.h(zzaaz.class, zzaazVar);
    }

    public zzaaz() {
        zzzq zzzqVar = zzzq.i;
        this.zzb = zzzqVar;
        this.zzd = zzzqVar;
        this.zze = zzzqVar;
        this.zzf = zzzqVar;
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
                return new zzaaz();
            }
            return new zzzr(zzg, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b", new Object[]{"zzb", zzaax.class, "zzd", zzaat.class, "zze", zzaax.class, "zzf", zzaat.class});
        }
        return (byte) 1;
    }
}
