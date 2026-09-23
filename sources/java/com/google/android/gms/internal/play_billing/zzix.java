package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public final class zzix extends zzfv implements zzhd {
    private static final zzix zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private zzjg zzh;
    private int zzi;

    static {
        zzix zzixVar = new zzix();
        zzb = zzixVar;
        zzfv.e(zzix.class, zzixVar);
    }

    public static /* synthetic */ void q(zzix zzixVar, zzkf zzkfVar) {
        zzixVar.zzf = zzkfVar;
        zzixVar.zze = 7;
    }

    public static /* synthetic */ void r(zzix zzixVar, zzkv zzkvVar) {
        zzixVar.zzf = zzkvVar;
        zzixVar.zze = 6;
    }

    public static /* synthetic */ void s(zzix zzixVar, int i) {
        zzixVar.zzg = i - 1;
        zzixVar.zzd |= 1;
    }

    public static zziv t() {
        return (zziv) zzb.j();
    }

    public static zzix u(byte[] bArr, zzfh zzfhVar) {
        return (zzix) zzfv.n(zzb, bArr, zzfhVar);
    }

    public static void w(zzix zzixVar, zzjl zzjlVar) {
        zzixVar.zzi = zzjlVar.f11551c;
        zzixVar.zzd |= 4;
    }

    public static /* synthetic */ void x(zzix zzixVar, zzjg zzjgVar) {
        zzixVar.zzh = zzjgVar;
        zzixVar.zzd |= 2;
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
                return new zzix();
            }
            return new zzhl(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", zziy.f11545a, "zzh", zzjz.class, "zzi", zzjk.f11550a, zzkv.class, zzkf.class});
        }
        return (byte) 1;
    }

    public final zzkf v() {
        if (this.zze == 7) {
            return (zzkf) this.zzf;
        }
        return zzkf.q();
    }
}
