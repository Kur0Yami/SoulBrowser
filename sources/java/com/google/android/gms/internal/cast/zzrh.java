package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzrh extends zzyd implements zzzj {
    private static final zzrh zzm;
    private int zzb;
    private long zze;
    private long zzf;
    private int zzh;
    private boolean zzi;
    private long zzk;
    private long zzl;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzyl zzg = zzzq.i;
    private String zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzrh zzrhVar = new zzrh();
        zzm = zzrhVar;
        zzyd.h(zzrh.class, zzrhVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzm;
                        }
                        throw null;
                    }
                    return new zzya(zzm);
                }
                return new zzrh();
            }
            return new zzzr(zzm, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004\u001b\u0005င\u0003\u0006ဇ\u0004\u0007ဈ\u0005\bဂ\u0006\tဂ\u0007", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzrf.class, "zzh", "zzi", "zzj", "zzk", "zzl"});
        }
        return (byte) 1;
    }
}
