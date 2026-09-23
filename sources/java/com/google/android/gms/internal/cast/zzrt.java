package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzrt extends zzyd implements zzzj {
    private static final zzrt zzh;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private zzyl zzg = zzzq.i;

    static {
        zzrt zzrtVar = new zzrt();
        zzh = zzrtVar;
        zzyd.h(zzrt.class, zzrtVar);
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
                return new zzrt();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzrs.class});
        }
        return (byte) 1;
    }
}
