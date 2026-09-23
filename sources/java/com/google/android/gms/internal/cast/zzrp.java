package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzrp extends zzyd implements zzzj {
    private static final zzrp zzf;
    private int zzb;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzrp zzrpVar = new zzrp();
        zzf = zzrpVar;
        zzyd.h(zzrp.class, zzrpVar);
    }

    public static zzro n() {
        return (zzro) zzf.d();
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
                return new zzrp();
            }
            return new zzzr(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }
}
