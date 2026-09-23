package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
public final class zzhj extends zzqm implements zzrr {
    private static final zzhj zzb;
    private int zzd = 0;
    private Object zze;

    static {
        zzhj zzhjVar = new zzhj();
        zzb = zzhjVar;
        zzqm.l(zzhj.class, zzhjVar);
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
                return new zzhj();
            }
            return new zzrz(zzb, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000", new Object[]{"zze", "zzd", zzhi.class, zzhg.class});
        }
        return (byte) 1;
    }
}
