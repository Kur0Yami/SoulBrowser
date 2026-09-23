package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhoc extends zziar implements zzicd {
    private static final zzhoc zzd;
    private static volatile zzick zze;
    private int zza;
    private zzhoe zzb;
    private int zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhoc] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhoc.class, zziarVar);
    }

    public static zzhoc E(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhoc) zziar.r(zzd, zzhzlVar, zziabVar);
    }

    public static zzhob F() {
        return (zzhob) zzd.u();
    }

    public final zzhoe D() {
        zzhoe zzhoeVar = this.zzb;
        if (zzhoeVar == null) {
            return zzhoe.F();
        }
        return zzhoeVar;
    }

    public final /* synthetic */ void G(zzhoe zzhoeVar) {
        this.zzb = zzhoeVar;
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
                                    synchronized (zzhoc.class) {
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
            return new zzico(zzd, "\u0000\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0003\u000b", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
