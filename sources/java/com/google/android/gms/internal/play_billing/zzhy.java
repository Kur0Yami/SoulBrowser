package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzhy extends zzfv implements zzhd {
    private static final zzhy zzb;
    private zzgw zzd = zzgw.f;

    static {
        zzhy zzhyVar = new zzhy();
        zzb = zzhyVar;
        zzfv.e(zzhy.class, zzhyVar);
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
                return new zzhy();
            }
            return new zzhl(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zzd", zzhw.f11536a});
        }
        return (byte) 1;
    }
}
