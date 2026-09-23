package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzqv extends zzyd implements zzzj {
    private static final zzqv zzf;
    private int zzb;
    private int zzd;
    private int zze;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzyd, com.google.android.gms.internal.cast.zzqv] */
    static {
        ?? zzydVar = new zzyd();
        zzf = zzydVar;
        zzyd.h(zzqv.class, zzydVar);
    }

    public static zzqu n() {
        return (zzqu) zzf.d();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzf;
                        }
                        throw null;
                    }
                    return new zzya(zzf);
                }
                return new zzyd();
            }
            return new zzzr(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzb", "zzd", zzop.f9810a, "zze"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(int i) {
        this.zzb |= 2;
        this.zze = i;
    }

    public final /* synthetic */ void p(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
