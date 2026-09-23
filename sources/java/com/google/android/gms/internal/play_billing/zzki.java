package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzki extends zzfv implements zzhd {
    private static final zzki zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private zzjs zzg;
    private zzjv zzh;

    static {
        zzki zzkiVar = new zzki();
        zzb = zzkiVar;
        zzfv.e(zzki.class, zzkiVar);
    }

    public static /* synthetic */ void q(zzki zzkiVar, zzks zzksVar) {
        zzkiVar.zzf = zzksVar;
        zzkiVar.zze = 4;
    }

    public static zzkg r() {
        return (zzkg) zzb.j();
    }

    public static /* synthetic */ void s(zzki zzkiVar, zzix zzixVar) {
        zzkiVar.zzf = zzixVar;
        zzkiVar.zze = 2;
    }

    public static /* synthetic */ void t(zzki zzkiVar, zzjb zzjbVar) {
        zzkiVar.zzf = zzjbVar;
        zzkiVar.zze = 3;
    }

    public static /* synthetic */ void u(zzki zzkiVar, zzjj zzjjVar) {
        zzjjVar.getClass();
        zzkiVar.zzf = zzjjVar;
        zzkiVar.zze = 7;
    }

    public static /* synthetic */ void v(zzki zzkiVar, zzjs zzjsVar) {
        zzjsVar.getClass();
        zzkiVar.zzg = zzjsVar;
        zzkiVar.zzd |= 1;
    }

    public static /* synthetic */ void w(zzki zzkiVar, zzko zzkoVar) {
        zzkiVar.zzf = zzkoVar;
        zzkiVar.zze = 8;
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
                return new zzki();
            }
            return new zzhl(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zzix.class, zzjb.class, zzks.class, zzjp.class, "zzh", zzjj.class, zzko.class});
        }
        return (byte) 1;
    }
}
