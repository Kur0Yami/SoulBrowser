package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzqt extends zzyd implements zzzj {
    private static final zzqt zzi;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzyd, com.google.android.gms.internal.cast.zzqt] */
    static {
        ?? zzydVar = new zzyd();
        zzi = zzydVar;
        zzyd.h(zzqt.class, zzydVar);
    }

    public static zzqs n() {
        return (zzqs) zzi.d();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzi;
                        }
                        throw null;
                    }
                    return new zzya(zzi);
                }
                return new zzyd();
            }
            return new zzzr(zzi, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzb", "zzd", zzon.f9809a, "zze", "zzf", "zzg", "zzh"});
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
        this.zzb |= 16;
        this.zzh = i;
    }

    public final /* synthetic */ void s(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }
}
