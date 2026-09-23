package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzjj extends zzfv implements zzhd {
    private static final zzjj zzb;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.zzfv, com.google.android.gms.internal.play_billing.zzjj] */
    static {
        ?? zzfvVar = new zzfv();
        zzb = zzfvVar;
        zzfv.e(zzjj.class, zzfvVar);
    }

    public static zzjj q() {
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
                return new zzfv();
            }
            return new zzhl(zzb, "\u0004\u0000", null);
        }
        return (byte) 1;
    }
}
