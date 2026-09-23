package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzvp extends zzyd implements zzzj {
    private static final zzvp zzg;
    private int zzb;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zze;
    private zztd zzf;

    static {
        zzvp zzvpVar = new zzvp();
        zzg = zzvpVar;
        zzyd.h(zzvp.class, zzvpVar);
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
                return new zzvp();
            }
            return new zzzr(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ဉ\u0002", new Object[]{"zzb", "zzd", "zze", zzsa.f9833a, "zzf"});
        }
        return (byte) 1;
    }
}
