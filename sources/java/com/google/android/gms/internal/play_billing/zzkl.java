package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzkl extends zzfv implements zzhd {
    private static final zzkl zzb;
    private int zzd;
    private int zzf;
    private zzga zze = zzhk.i;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzkl zzklVar = new zzkl();
        zzb = zzklVar;
        zzfv.e(zzkl.class, zzklVar);
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
                return new zzkl();
            }
            return new zzhl(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
