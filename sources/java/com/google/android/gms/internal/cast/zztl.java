package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zztl extends zzyd implements zzzj {
    private static final zztl zzf;
    private int zzb;
    private int zzd;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zztl zztlVar = new zztl();
        zzf = zztlVar;
        zzyd.h(zztl.class, zztlVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzf;
                        }
                        throw null;
                    }
                    return new zzya(zzf);
                }
                return new zztl();
            }
            return new zzzr(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
