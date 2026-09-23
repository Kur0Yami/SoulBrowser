package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzrb extends zzyd implements zzzj {
    private static final zzrb zzh;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzrb, com.google.android.gms.internal.cast.zzyd] */
    static {
        ?? zzydVar = new zzyd();
        zzh = zzydVar;
        zzyd.h(zzrb.class, zzydVar);
    }

    public static zzra n() {
        return (zzra) zzh.d();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzya(zzh);
                }
                return new zzyd();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzb", "zzd", zzot.f9812a, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(int i) {
        this.zzb |= 2;
        this.zze = i;
    }

    public final /* synthetic */ void p(int i) {
        this.zzb |= 4;
        this.zzf = i;
    }

    public final /* synthetic */ void q(int i) {
        this.zzb |= 8;
        this.zzg = i;
    }

    public final /* synthetic */ void r(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
