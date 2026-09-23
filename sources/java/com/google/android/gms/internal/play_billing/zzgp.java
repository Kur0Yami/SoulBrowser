package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzgp extends zzfv implements zzhd {
    private static final zzgp zzb;
    private zzga zzd = zzhk.i;

    static {
        zzgp zzgpVar = new zzgp();
        zzb = zzgpVar;
        zzfv.e(zzgp.class, zzgpVar);
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
                return new zzgp();
            }
            return new zzhl(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzir.class});
        }
        return (byte) 1;
    }
}
