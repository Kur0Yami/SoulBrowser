package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzsv extends zzyd implements zzzj {
    private static final zzsv zzk;
    private int zzb;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private boolean zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;

    static {
        zzsv zzsvVar = new zzsv();
        zzk = zzsvVar;
        zzyd.h(zzsv.class, zzsvVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzk;
                        }
                        throw null;
                    }
                    return new zzya(zzk);
                }
                return new zzsv();
            }
            return new zzzr(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzmz.f9785a, "zzh", zznd.f9789a, "zzi", zznb.f9788a, "zzj", zznf.f9790a});
        }
        return (byte) 1;
    }
}
