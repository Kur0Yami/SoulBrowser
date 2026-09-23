package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzrz extends zzyd implements zzzj {
    private static final zzrz zzk;
    private int zzb;
    private int zzd;
    private int zze;
    private zzyj zzf;
    private zzyj zzg;
    private zzyl zzh;
    private zzyl zzi;
    private int zzj;

    static {
        zzrz zzrzVar = new zzrz();
        zzk = zzrzVar;
        zzyd.h(zzrz.class, zzrzVar);
    }

    public zzrz() {
        zzye zzyeVar = zzye.i;
        this.zzf = zzyeVar;
        this.zzg = zzyeVar;
        zzzq zzzqVar = zzzq.i;
        this.zzh = zzzqVar;
        this.zzi = zzzqVar;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzk;
                        }
                        throw null;
                    }
                    return new zzya(zzk);
                }
                return new zzrz();
            }
            return new zzzr(zzk, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001င\u0000\u0002᠌\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007᠌\u0002", new Object[]{"zzb", "zzd", "zze", zzmp.f9780a, "zzf", "zzg", "zzh", "zzi", "zzj", zzmh.f9776a});
        }
        return (byte) 1;
    }
}
