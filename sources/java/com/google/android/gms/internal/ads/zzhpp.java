package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhpp extends zziar implements zzicd {
    private static final zzhpp zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private zzhpr zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhpp] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhpp.class, zziarVar);
    }

    public static zzhpp F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhpp) zziar.r(zzd, zzhzlVar, zziabVar);
    }

    public static zzhpo G() {
        return (zzhpo) zzd.u();
    }

    public static zzick H() {
        return zzd.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhpr E() {
        zzhpr zzhprVar = this.zzc;
        if (zzhprVar == null) {
            return zzhpr.G();
        }
        return zzhprVar;
    }

    public final /* synthetic */ void I(zzhpr zzhprVar) {
        this.zzc = zzhprVar;
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
                                zzick zzickVar2 = zze;
                                if (zzickVar2 == null) {
                                    synchronized (zzhpp.class) {
                                        try {
                                            zzickVar = zze;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzd);
                                                zze = zzickVar;
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
                        return zzd;
                    }
                    return new zzial(zzd);
                }
                return new zziar();
            }
            return new zzico(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
