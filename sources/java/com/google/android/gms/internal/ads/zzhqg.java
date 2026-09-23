package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqg extends zziar implements zzicd {
    private static final zzhqg zzf;
    private static volatile zzick zzg;
    private int zza;
    private int zzb;
    private zzhqc zzc;
    private zzhzl zzd;
    private zzhzl zze;

    static {
        zzhqg zzhqgVar = new zzhqg();
        zzf = zzhqgVar;
        zziar.x(zzhqg.class, zzhqgVar);
    }

    public zzhqg() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzd = zzhzlVar;
        this.zze = zzhzlVar;
    }

    public static zzhqg H(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhqg) zziar.r(zzf, zzhzlVar, zziabVar);
    }

    public static zzhqf I() {
        return (zzhqf) zzf.u();
    }

    public static zzhqg J() {
        return zzf;
    }

    public static zzick K() {
        return zzf.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhqc E() {
        zzhqc zzhqcVar = this.zzc;
        if (zzhqcVar == null) {
            return zzhqc.F();
        }
        return zzhqcVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final zzhzl G() {
        return this.zze;
    }

    public final /* synthetic */ void L(zzhqc zzhqcVar) {
        this.zzc = zzhqcVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void M(zzhzl zzhzlVar) {
        this.zzd = zzhzlVar;
    }

    public final /* synthetic */ void N(zzhzl zzhzlVar) {
        this.zze = zzhzlVar;
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
                                    synchronized (zzhqg.class) {
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
                return new zzhqg();
            }
            return new zzico(zzf, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
