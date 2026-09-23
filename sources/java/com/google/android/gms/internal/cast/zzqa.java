package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzqa extends zzyd implements zzzj {
    private static final zzqa zzk;
    private int zzb;
    private int zzd;
    private boolean zze;
    private int zzf;
    private boolean zzg;
    private zzyl zzh;
    private zzyl zzi;
    private String zzj;

    static {
        zzqa zzqaVar = new zzqa();
        zzk = zzqaVar;
        zzyd.h(zzqa.class, zzqaVar);
    }

    public zzqa() {
        zzzq zzzqVar = zzzq.i;
        this.zzh = zzzqVar;
        this.zzi = zzzqVar;
        this.zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
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
                return new zzqa();
            }
            return new zzzr(zzk, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0007\u001b\b\u001b\tဈ\u0004", new Object[]{"zzb", "zzd", zzld.f9760a, "zze", "zzf", zzmh.f9776a, "zzg", "zzh", zztl.class, "zzi", zztl.class, "zzj"});
        }
        return (byte) 1;
    }
}
