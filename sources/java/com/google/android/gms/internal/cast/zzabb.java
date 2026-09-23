package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzabb extends zzyd implements zzzj {
    private static final zzabb zzd;
    private zzyl zzb = zzzq.i;

    static {
        zzabb zzabbVar = new zzabb();
        zzd = zzabbVar;
        zzyd.h(zzabb.class, zzabbVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzd;
                        }
                        throw null;
                    }
                    return new zzya(zzd);
                }
                return new zzabb();
            }
            return new zzzr(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", zzabd.class});
        }
        return (byte) 1;
    }
}
