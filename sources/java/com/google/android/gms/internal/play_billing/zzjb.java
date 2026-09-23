package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzjb extends zzfv implements zzhd {
    private static final zzjb zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        zzjb zzjbVar = new zzjb();
        zzb = zzjbVar;
        zzfv.e(zzjb.class, zzjbVar);
    }

    public static /* synthetic */ void q(zzjb zzjbVar, int i) {
        zzjbVar.zzg = i - 1;
        zzjbVar.zzd |= 1;
    }

    public static zziz r() {
        return (zziz) zzb.j();
    }

    public static void t(zzjb zzjbVar, zzjl zzjlVar) {
        zzjbVar.zzh = zzjlVar.f11551c;
        zzjbVar.zzd |= 2;
    }

    public static /* synthetic */ void u(zzjb zzjbVar, zzkf zzkfVar) {
        zzjbVar.zzf = zzkfVar;
        zzjbVar.zze = 4;
    }

    public static /* synthetic */ void v(zzjb zzjbVar, zzkv zzkvVar) {
        zzjbVar.zzf = zzkvVar;
        zzjbVar.zze = 3;
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
                return new zzjb();
            }
            return new zzhl(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", zziy.f11545a, zzjz.class, zzkv.class, zzkf.class, "zzh", zzjk.f11550a});
        }
        return (byte) 1;
    }

    public final zzkf s() {
        if (this.zze == 4) {
            return (zzkf) this.zzf;
        }
        return zzkf.q();
    }
}
