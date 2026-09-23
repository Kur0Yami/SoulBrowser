package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzuo extends zzyd implements zzzj {
    private static final zzuo zzh;
    private int zzb;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzyl zze;
    private zzyl zzf;
    private boolean zzg;

    static {
        zzuo zzuoVar = new zzuo();
        zzh = zzuoVar;
        zzyd.h(zzuo.class, zzuoVar);
    }

    public zzuo() {
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
                return new zzuo();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001", new Object[]{"zzb", "zzd", "zze", zzsl.class, "zzf", zzrp.class, "zzg"});
        }
        return (byte) 1;
    }
}
