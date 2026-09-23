package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqa extends zziar implements zzicd {
    private static final zzhqa zze;
    private static volatile zzick zzf;
    private int zza;
    private zzhqc zzb;
    private int zzc;
    private zzhzl zzd = zzhzl.f;

    static {
        zzhqa zzhqaVar = new zzhqa();
        zze = zzhqaVar;
        zziar.x(zzhqa.class, zzhqaVar);
    }

    public static zzhqa G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhqa) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhpz H() {
        return (zzhpz) zze.u();
    }

    public final zzhqc D() {
        zzhqc zzhqcVar = this.zzb;
        if (zzhqcVar == null) {
            return zzhqc.F();
        }
        return zzhqcVar;
    }

    public final int E() {
        return this.zzc;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void I(zzhqc zzhqcVar) {
        this.zzb = zzhqcVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void J(int i) {
        this.zzc = i;
    }

    public final /* synthetic */ void K(zzhzl zzhzlVar) {
        this.zzd = zzhzlVar;
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
                                zzick zzickVar2 = zzf;
                                if (zzickVar2 == null) {
                                    synchronized (zzhqa.class) {
                                        try {
                                            zzickVar = zzf;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zze);
                                                zzf = zzickVar;
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
                        return zze;
                    }
                    return new zzial(zze);
                }
                return new zzhqa();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
