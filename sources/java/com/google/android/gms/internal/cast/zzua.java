package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzua extends zzyd implements zzzj {
    private static final zzua zze;
    private int zzb;
    private int zzd;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzyd, com.google.android.gms.internal.cast.zzua] */
    static {
        ?? zzydVar = new zzyd();
        zze = zzydVar;
        zzyd.h(zzua.class, zzydVar);
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zze;
                        }
                        throw null;
                    }
                    return new zzya(zze);
                }
                return new zzyd();
            }
            return new zzzr(zze, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzb", "zzd", zztz.f9841a});
        }
        return (byte) 1;
    }
}
