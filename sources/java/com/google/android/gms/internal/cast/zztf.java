package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zztf extends zzyd implements zzzj {
    private static final zztf zzg;
    private int zzb;
    private long zzd;
    private zzyk zze;
    private zzyk zzf;

    static {
        zztf zztfVar = new zztf();
        zzg = zztfVar;
        zzyd.h(zztf.class, zztfVar);
    }

    public zztf() {
        zzyx zzyxVar = zzyx.i;
        this.zze = zzyxVar;
        this.zzf = zzyxVar;
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
                return new zztf();
            }
            return new zzzr(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001စ\u0000\u0002\u0017\u0003\u0017", new Object[]{"zzb", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
