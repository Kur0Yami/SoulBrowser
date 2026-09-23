package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zztd extends zzyd implements zzzj {
    private static final zztd zzh;
    private int zzb;
    private float zze;
    private int zzg;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzyi zzf = zzxy.i;

    static {
        zztd zztdVar = new zztd();
        zzh = zztdVar;
        zzyd.h(zztd.class, zztdVar);
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
                return new zztd();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဈ\u0000\u0002ခ\u0001\u0003$\u0004င\u0002", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
