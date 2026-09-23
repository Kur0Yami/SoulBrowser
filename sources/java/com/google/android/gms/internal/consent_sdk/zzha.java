package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzha extends zzqm implements zzrr {
    private static final zzha zzb;
    private int zzd;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzha zzhaVar = new zzha();
        zzb = zzhaVar;
        zzqm.l(zzha.class, zzhaVar);
    }

    public static zzgz m() {
        return (zzgz) zzb.g();
    }

    public static /* synthetic */ void n(zzha zzhaVar) {
        zzhaVar.zzd |= 1;
        zzhaVar.zze = "4.0.0";
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
                return new zzha();
            }
            return new zzrz(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ለ\u0000", new Object[]{"zzd", "zze"});
        }
        return (byte) 1;
    }
}
