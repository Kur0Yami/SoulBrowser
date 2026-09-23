package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhna extends zziar implements zzicd {
    private static final zzhna zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhne zzc;
    private zzhot zzd;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhna] */
    static {
        ?? zziarVar = new zziar();
        zze = zziarVar;
        zziar.x(zzhna.class, zziarVar);
    }

    public static zzhna G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhna) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhmz H() {
        return (zzhmz) zze.u();
    }

    public static zzick I() {
        return zze.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhne E() {
        zzhne zzhneVar = this.zzc;
        if (zzhneVar == null) {
            return zzhne.H();
        }
        return zzhneVar;
    }

    public final zzhot F() {
        zzhot zzhotVar = this.zzd;
        if (zzhotVar == null) {
            return zzhot.I();
        }
        return zzhotVar;
    }

    public final /* synthetic */ void J(zzhne zzhneVar) {
        this.zzc = zzhneVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void K(zzhot zzhotVar) {
        this.zzd = zzhotVar;
        this.zza |= 2;
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
                                    synchronized (zzhna.class) {
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
                return new zziar();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
