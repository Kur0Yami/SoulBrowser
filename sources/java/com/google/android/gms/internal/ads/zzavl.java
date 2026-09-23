package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzavl extends zziar implements zzicd {
    private static final zzavl zzg;
    private static volatile zzick zzh;
    private int zza;
    private boolean zzb;
    private int zzc = 5000;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zzavl zzavlVar = new zzavl();
        zzg = zzavlVar;
        zziar.x(zzavl.class, zzavlVar);
    }

    public static zzavl I() {
        return zzg;
    }

    public final boolean D() {
        return this.zzb;
    }

    public final int E() {
        return this.zzc;
    }

    public final boolean F() {
        return this.zzd;
    }

    public final boolean G() {
        return this.zze;
    }

    public final boolean H() {
        return this.zzf;
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
                                zzick zzickVar2 = zzh;
                                if (zzickVar2 == null) {
                                    synchronized (zzavl.class) {
                                        try {
                                            zzickVar = zzh;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzg);
                                                zzh = zzickVar;
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
                        return zzg;
                    }
                    return new zzial(zzg);
                }
                return new zzavl();
            }
            return new zzico(zzg, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001ဇ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဇ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
