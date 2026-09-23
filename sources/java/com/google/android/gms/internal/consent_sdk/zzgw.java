package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgw extends zzqm implements zzrr {
    private static final zzgw zzb;
    private int zzd;
    private int zze;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zzh;

    static {
        zzgw zzgwVar = new zzgw();
        zzb = zzgwVar;
        zzqm.l(zzgw.class, zzgwVar);
    }

    public static zzgv m() {
        return (zzgv) zzb.g();
    }

    public static /* synthetic */ void n(zzgw zzgwVar, int i) {
        zzgwVar.zzd |= 8;
        zzgwVar.zzh = i;
    }

    public static /* synthetic */ void o(zzgw zzgwVar) {
        String str = Build.MODEL;
        str.getClass();
        zzgwVar.zzd |= 4;
        zzgwVar.zzg = str;
    }

    public static /* synthetic */ void p(zzgw zzgwVar) {
        String str = Build.VERSION.RELEASE;
        str.getClass();
        zzgwVar.zzd |= 2;
        zzgwVar.zzf = str;
    }

    public static /* synthetic */ void q(zzgw zzgwVar) {
        zzgwVar.zze = 1;
        zzgwVar.zzd = 1 | zzgwVar.zzd;
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
                return new zzgw();
            }
            return new zzrz(zzb, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004င\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
