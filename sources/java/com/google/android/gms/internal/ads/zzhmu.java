package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhmu extends zziar implements zzicd {
    private static final zzhmu zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhzl zzc = zzhzl.f;
    private zzhmy zzd;

    static {
        zzhmu zzhmuVar = new zzhmu();
        zze = zzhmuVar;
        zziar.x(zzhmu.class, zzhmuVar);
    }

    public static zzhmu G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhmu) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhmt H() {
        return (zzhmt) zze.u();
    }

    public static zzick I() {
        return zze.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhzl E() {
        return this.zzc;
    }

    public final zzhmy F() {
        zzhmy zzhmyVar = this.zzd;
        if (zzhmyVar == null) {
            return zzhmy.F();
        }
        return zzhmyVar;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
        this.zzc = zzhzlVar;
    }

    public final /* synthetic */ void K(zzhmy zzhmyVar) {
        this.zzd = zzhmyVar;
        this.zza |= 1;
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
                                    synchronized (zzhmu.class) {
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
                return new zzhmu();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
