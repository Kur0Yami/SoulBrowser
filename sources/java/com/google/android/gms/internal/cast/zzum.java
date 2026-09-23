package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzum extends zzyd implements zzzj {
    private static final zzum zzg;
    private int zzb;
    private long zzd;
    private long zze;
    private zzyl zzf = zzzq.i;

    static {
        zzum zzumVar = new zzum();
        zzg = zzumVar;
        zzyd.h(zzum.class, zzumVar);
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
                return new zzum();
            }
            return new zzzr(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", zzuo.class});
        }
        return (byte) 1;
    }
}
