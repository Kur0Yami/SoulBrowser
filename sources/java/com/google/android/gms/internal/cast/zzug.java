package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzug extends zzyd implements zzzj {
    private static final zzug zzl;
    private int zzb;
    private zzaaz zzd;
    private zzyl zze;
    private zzyl zzf;
    private zzyl zzg;
    private String zzh;
    private long zzi;
    private int zzj;
    private String zzk;

    static {
        zzug zzugVar = new zzug();
        zzl = zzugVar;
        zzyd.h(zzug.class, zzugVar);
    }

    public zzug() {
        zzzq zzzqVar = zzzq.i;
        this.zze = zzzqVar;
        this.zzf = zzzqVar;
        this.zzg = zzzqVar;
        this.zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzk = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
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
                return new zzug();
            }
            return new zzzr(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0003\u0000\u0001ဉ\u0000\u0002\u001a\u0003\u001b\u0004\u001b\u0005ဈ\u0001\u0006ဂ\u0002\u0007᠌\u0003\bဈ\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", zzqe.class, "zzg", zztx.class, "zzh", "zzi", "zzj", zzql.f9829a, "zzk"});
        }
        return (byte) 1;
    }
}
