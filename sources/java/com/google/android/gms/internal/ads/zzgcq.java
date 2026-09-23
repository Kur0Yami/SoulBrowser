package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgcq extends zziar implements zzicd {
    private static final zzgcq zzf;
    private static volatile zzick zzg;
    private int zza;
    private zzgcs zzb;
    private zzhzl zzc;
    private zzhzl zzd;
    private int zze;

    static {
        zzgcq zzgcqVar = new zzgcq();
        zzf = zzgcqVar;
        zziar.x(zzgcq.class, zzgcqVar);
    }

    public zzgcq() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzc = zzhzlVar;
        this.zzd = zzhzlVar;
    }

    public static zzgcp G() {
        return (zzgcp) zzf.u();
    }

    public final zzgcs D() {
        zzgcs zzgcsVar = this.zzb;
        if (zzgcsVar == null) {
            return zzgcs.I();
        }
        return zzgcsVar;
    }

    public final zzhzl E() {
        return this.zzc;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void H(zzgcs zzgcsVar) {
        this.zzb = zzgcsVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void I(zzhzl zzhzlVar) {
        zzhzlVar.getClass();
        this.zza |= 2;
        this.zzc = zzhzlVar;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
        zzhzlVar.getClass();
        this.zza |= 4;
        this.zzd = zzhzlVar;
    }

    public final int K() {
        int a2 = zzgdh.a(this.zze);
        if (a2 == 0) {
            return 1;
        }
        return a2;
    }

    public final /* synthetic */ void L(int i) {
        this.zze = i - 1;
        this.zza |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zziar
    public final Object y(zziaq zziaqVar, zziar zziarVar) {
        zzick zzickVar;
        int ordinal = zziaqVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzick zzickVar2 = zzg;
                                if (zzickVar2 == null) {
                                    synchronized (zzgcq.class) {
                                        try {
                                            zzickVar = zzg;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzf);
                                                zzg = zzickVar;
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    return zzickVar;
                                }
                                return zzickVar2;
                            }
                            throw null;
                        }
                        return zzf;
                    }
                    return new zzial(zzf);
                }
                return new zzgcq();
            }
            return new zzico(zzf, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002\u0004᠌\u0003", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", zzgdg.f7845a});
        }
        return (byte) 1;
    }
}
