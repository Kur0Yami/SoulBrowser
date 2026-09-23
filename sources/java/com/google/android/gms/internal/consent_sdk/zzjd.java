package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzjd extends zzqm implements zzrr {
    private static final zzjd zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zzj;
    private int zzk;
    private int zzl;

    static {
        zzjd zzjdVar = new zzjd();
        zzb = zzjdVar;
        zzqm.l(zzjd.class, zzjdVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzqm
    public final Object f(int i) {
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
                    return new zzqj(zzb);
                }
                return new zzjd();
            }
            return new zzrz(zzb, "\u0004\b\u0000\u0001\u0001\n\b\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဈ\u0003\u0004ဈ\u0004\u0005᠌\u0005\u0006င\u0002\t᠌\u0006\n᠌\u0007", new Object[]{"zzd", "zze", zzja.f10028a, "zzf", "zzh", "zzi", "zzj", zziz.f10025a, "zzg", "zzk", zzjb.f10029a, "zzl", zzjc.f10030a});
        }
        return (byte) 1;
    }
}
