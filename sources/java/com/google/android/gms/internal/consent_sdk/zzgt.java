package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgt extends zzqm implements zzrr {
    private static final zzgt zzb;
    private int zzd;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzgt zzgtVar = new zzgt();
        zzb = zzgtVar;
        zzqm.l(zzgt.class, zzgtVar);
    }

    public static zzgs m() {
        return (zzgs) zzb.g();
    }

    public static /* synthetic */ void n(zzgt zzgtVar, String str) {
        str.getClass();
        zzgtVar.zzd |= 1;
        zzgtVar.zze = str;
    }

    public static /* synthetic */ void o(zzgt zzgtVar, String str) {
        str.getClass();
        zzgtVar.zzd |= 2;
        zzgtVar.zzf = str;
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
                return new zzgt();
            }
            return new zzrz(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
