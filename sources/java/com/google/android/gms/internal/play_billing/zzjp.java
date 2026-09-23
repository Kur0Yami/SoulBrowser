package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzjp extends zzfv implements zzhd {
    private static final zzjp zzb;
    private int zzd;
    private int zzf;
    private zzjg zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzfz zzg = zzfw.i;
    private zzga zzh = zzhk.i;

    static {
        zzjp zzjpVar = new zzjp();
        zzb = zzjpVar;
        zzfv.e(zzjp.class, zzjpVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfv
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzb;
                        }
                        throw null;
                    }
                    return new zzfr(zzb);
                }
                return new zzjp();
            }
            return new zzhl(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004", new Object[]{"zzd", "zze", "zzf", zzjn.f11552a, "zzg", zzjk.f11550a, "zzh", zzkl.class, "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
