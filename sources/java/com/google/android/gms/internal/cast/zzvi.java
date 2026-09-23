package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzvi extends zzyd implements zzzj {
    private static final zzvi zzh;
    private int zzb;
    private int zzd;
    private zzyl zze;
    private zzyl zzf;
    private int zzg;

    static {
        zzvi zzviVar = new zzvi();
        zzh = zzviVar;
        zzyd.h(zzvi.class, zzviVar);
    }

    public zzvi() {
        zzzq zzzqVar = zzzq.i;
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
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzya(zzh);
                }
                return new zzvi();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002\u001b\u0003\u001b\u0004င\u0001", new Object[]{"zzb", "zzd", zzpb.f9818a, "zze", zztl.class, "zzf", zztl.class, "zzg"});
        }
        return (byte) 1;
    }
}
