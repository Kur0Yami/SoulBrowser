package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzir extends zzfv implements zzhd {
    private static final zzir zzb;
    private int zzd = 0;
    private Object zze;

    static {
        zzir zzirVar = new zzir();
        zzb = zzirVar;
        zzfv.e(zzir.class, zzirVar);
    }

    public static zzir q() {
        return zzb;
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
                return new zzir();
            }
            return new zzhl(zzb, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003Ȼ\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"zze", "zzd", zzhy.class, zzgp.class});
        }
        return (byte) 1;
    }
}
