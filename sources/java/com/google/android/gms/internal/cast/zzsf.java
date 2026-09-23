package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzsf extends zzyd implements zzzj {
    private static final zzsf zzi;
    private int zzb;
    private Object zze;
    private int zzf;
    private int zzd = 0;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzyl zzh = zzzq.i;

    static {
        zzsf zzsfVar = new zzsf();
        zzi = zzsfVar;
        zzyd.h(zzsf.class, zzsfVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzi;
                        }
                        throw null;
                    }
                    return new zzya(zzi);
                }
                return new zzsf();
            }
            return new zzzr(zzi, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003\u001b\u0004<\u0000\u0005<\u0000", new Object[]{"zze", "zzd", "zzb", "zzf", zzsd.f9836a, "zzg", "zzh", zztd.class, zzvp.class, zzvn.class});
        }
        return (byte) 1;
    }
}
