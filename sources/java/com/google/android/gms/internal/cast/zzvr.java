package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzvr extends zzyd implements zzzj {
    private static final zzvr zzl;
    private int zzb;
    private int zzd;
    private int zze;
    private zzyl zzf;
    private zzyl zzg;
    private int zzh;
    private zzyj zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzvr zzvrVar = new zzvr();
        zzl = zzvrVar;
        zzyd.h(zzvr.class, zzvrVar);
    }

    public zzvr() {
        zzzq zzzqVar = zzzq.i;
        this.zzf = zzzqVar;
        this.zzg = zzzqVar;
        this.zzi = zzye.i;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzl;
                        }
                        throw null;
                    }
                    return new zzya(zzl);
                }
                return new zzvr();
            }
            zzyh zzyhVar = zzpd.f9819a;
            return new zzzr(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0003\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002\u0006ࠬ\u0007ဇ\u0003\bဇ\u0004", new Object[]{"zzb", "zzd", zzyhVar, "zze", zzpf.f9820a, "zzf", zzrp.class, "zzg", zzrp.class, "zzh", zzmh.f9776a, "zzi", zzyhVar, "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
