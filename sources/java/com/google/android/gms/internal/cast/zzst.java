package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzst extends zzyd implements zzzj {
    private static final zzst zzh;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private byte zzg = 2;

    static {
        zzst zzstVar = new zzst();
        zzh = zzstVar;
        zzyd.h(zzst.class, zzstVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            byte b = 1;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (zzydVar == null) {
                                b = 0;
                            }
                            this.zzg = b;
                            return null;
                        }
                        return zzh;
                    }
                    return new zzya(zzh);
                }
                return new zzst();
            }
            return new zzzr(zzh, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ᴌ\u0000\u0002င\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", zzmx.f9784a, "zze", "zzf", zzpr.f9827a});
        }
        return Byte.valueOf(this.zzg);
    }
}
