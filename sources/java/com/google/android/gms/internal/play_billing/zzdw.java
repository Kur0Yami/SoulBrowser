package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzdw extends zzfv implements zzhd {
    private static final zzdw zzb;
    private int zzd;
    private int zze;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzdw zzdwVar = new zzdw();
        zzb = zzdwVar;
        zzfv.e(zzdw.class, zzdwVar);
    }

    public static zzdw r(byte[] bArr, zzfh zzfhVar) {
        return (zzdw) zzfv.n(zzb, bArr, zzfhVar);
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
                return new zzdw();
            }
            return new zzhl(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final int q() {
        return this.zze;
    }

    public final String s() {
        return this.zzf;
    }
}
