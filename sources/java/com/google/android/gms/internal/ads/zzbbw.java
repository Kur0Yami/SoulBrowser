package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbbw extends zziar implements zzicd {
    private static final zzbbw zzf;
    private static volatile zzick zzg;
    private int zza;
    private zzbca zzb;
    private zzhzl zzc = zzhzl.f;
    private long zzd;
    private long zze;

    static {
        zzbbw zzbbwVar = new zzbbw();
        zzf = zzbbwVar;
        zziar.x(zzbbw.class, zzbbwVar);
    }

    public static zzbbw G() {
        return zzf;
    }

    public final zzbca D() {
        zzbca zzbcaVar = this.zzb;
        if (zzbcaVar == null) {
            return zzbca.F();
        }
        return zzbcaVar;
    }

    public final zzhzl E() {
        return this.zzc;
    }

    public final long F() {
        return this.zze;
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
                                    synchronized (zzbbw.class) {
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
                return new zzbbw();
            }
            return new zzico(zzf, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
