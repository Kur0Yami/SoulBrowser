package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzkv extends zzfv implements zzhd {
    private static final zzkv zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.zzfv, com.google.android.gms.internal.play_billing.zzkv] */
    static {
        ?? zzfvVar = new zzfv();
        zzb = zzfvVar;
        zzfv.e(zzkv.class, zzfvVar);
    }

    public static zzkt q() {
        return (zzkt) zzb.j();
    }

    public static /* synthetic */ void r(zzkv zzkvVar, boolean z) {
        zzkvVar.zzd |= 8;
        zzkvVar.zzh = z;
    }

    public static /* synthetic */ void s(zzkv zzkvVar) {
        zzkvVar.zzd |= 16;
        zzkvVar.zzi = 0;
    }

    public static /* synthetic */ void t(zzkv zzkvVar, long j) {
        zzkvVar.zzd |= 4;
        zzkvVar.zzg = j;
    }

    public static /* synthetic */ void u(zzkv zzkvVar) {
        zzkvVar.zzd |= 2;
        zzkvVar.zzf = true;
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
            return new zzhl(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
