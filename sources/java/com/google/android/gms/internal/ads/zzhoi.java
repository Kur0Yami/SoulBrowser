package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhoi extends zziar implements zzicd {
    private static final zzhoi zzf;
    private static volatile zzick zzg;
    private int zza;
    private int zzb;
    private zzhoe zzc;
    private zzhzl zzd;
    private zzhzl zze;

    static {
        zzhoi zzhoiVar = new zzhoi();
        zzf = zzhoiVar;
        zziar.x(zzhoi.class, zzhoiVar);
    }

    public zzhoi() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzd = zzhzlVar;
        this.zze = zzhzlVar;
    }

    public static zzhoi H(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhoi) zziar.r(zzf, zzhzlVar, zziabVar);
    }

    public static zzhoh I() {
        return (zzhoh) zzf.u();
    }

    public static zzhoi J() {
        return zzf;
    }

    public static zzick K() {
        return zzf.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhoe E() {
        zzhoe zzhoeVar = this.zzc;
        if (zzhoeVar == null) {
            return zzhoe.F();
        }
        return zzhoeVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final zzhzl G() {
        return this.zze;
    }

    public final /* synthetic */ void L(zzhoe zzhoeVar) {
        this.zzc = zzhoeVar;
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
                                    synchronized (zzhoi.class) {
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
                return new zzhoi();
            }
            return new zzico(zzf, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
