package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgy extends zzqm implements zzrr {
    private static final zzgy zzb;
    private int zzd;
    private int zze;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzg;

    static {
        zzgy zzgyVar = new zzgy();
        zzb = zzgyVar;
        zzqm.l(zzgy.class, zzgyVar);
    }

    public static zzgx m() {
        return (zzgx) zzb.g();
    }

    public static /* synthetic */ void n(zzgy zzgyVar, String str) {
        zzgyVar.zzd |= 2;
        zzgyVar.zzf = str;
    }

    public static /* synthetic */ void o(zzgy zzgyVar, long j) {
        zzgyVar.zzd |= 4;
        zzgyVar.zzg = j;
    }

    public static /* synthetic */ void p(zzgy zzgyVar, int i) {
        zzgyVar.zze = i - 2;
        zzgyVar.zzd |= 1;
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
                return new zzgy();
            }
            return new zzrz(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ለ\u0001\u0003ဂ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
