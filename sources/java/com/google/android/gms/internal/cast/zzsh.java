package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzsh extends zzyd implements zzzj {
    private static final zzsh zzl;
    private int zzb;
    private zzsf zzd;
    private int zze;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzvp zzh;
    private zzvn zzi;
    private int zzj;
    private zzvl zzk;

    static {
        zzsh zzshVar = new zzsh();
        zzl = zzshVar;
        zzyd.h(zzsh.class, zzshVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzl;
                        }
                        throw null;
                    }
                    return new zzya(zzl);
                }
                return new zzsh();
            }
            return new zzzr(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007᠌\u0006\bဉ\u0007", new Object[]{"zzb", "zzd", "zze", zzvj.f9844a, "zzf", "zzg", "zzh", "zzi", "zzj", zzsc.f9835a, "zzk"});
        }
        return (byte) 1;
    }
}
