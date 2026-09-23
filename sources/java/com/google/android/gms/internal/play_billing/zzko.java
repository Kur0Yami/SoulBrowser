package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzko extends zzfv implements zzhd {
    private static final zzko zzb;
    private int zzd;
    private zzjg zze;
    private long zzf;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.zzko, com.google.android.gms.internal.play_billing.zzfv] */
    static {
        ?? zzfvVar = new zzfv();
        zzb = zzfvVar;
        zzfv.e(zzko.class, zzfvVar);
    }

    public static zzkm q() {
        return (zzkm) zzb.j();
    }

    public static /* synthetic */ void r(zzko zzkoVar, zzjg zzjgVar) {
        zzkoVar.zze = zzjgVar;
        zzkoVar.zzd |= 1;
    }

    public static /* synthetic */ void s(zzko zzkoVar, long j) {
        zzkoVar.zzd |= 2;
        zzkoVar.zzf = j;
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
            return new zzhl(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
