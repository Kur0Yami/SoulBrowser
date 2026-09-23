package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzkf extends zzfv implements zzhd {
    private static final zzkf zzb;
    private int zzd;
    private zzga zze = zzhk.i;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private boolean zzg;

    static {
        zzkf zzkfVar = new zzkf();
        zzb = zzkfVar;
        zzfv.e(zzkf.class, zzkfVar);
    }

    public static zzkf q() {
        return zzb;
    }

    public static /* synthetic */ void r(zzkf zzkfVar, boolean z) {
        zzkfVar.zzd |= 2;
        zzkfVar.zzg = z;
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
                return new zzkf();
            }
            return new zzhl(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", zzkd.class, "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
