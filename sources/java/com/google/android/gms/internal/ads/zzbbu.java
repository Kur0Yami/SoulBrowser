package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbbu extends zziar implements zzicd {
    private static final zzbbu zzd;
    private static volatile zzick zze;
    private int zza;
    private zzbbw zzb;
    private zzhzl zzc = zzhzl.f;

    static {
        zzbbu zzbbuVar = new zzbbu();
        zzd = zzbbuVar;
        zziar.x(zzbbu.class, zzbbuVar);
    }

    public static zzbbu H() {
        return zzd;
    }

    public final boolean D() {
        return (this.zza & 1) != 0;
    }

    public final zzbbw E() {
        zzbbw zzbbwVar = this.zzb;
        if (zzbbwVar == null) {
            return zzbbw.G();
        }
        return zzbbwVar;
    }

    public final boolean F() {
        return (this.zza & 2) != 0;
    }

    public final zzhzl G() {
        return this.zzc;
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
                                    synchronized (zzbbu.class) {
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
                return new zzbbu();
            }
            return new zzico(zzd, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
