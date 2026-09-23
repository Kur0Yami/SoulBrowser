package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhot extends zziar implements zzicd {
    private static final zzhot zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhox zzc;
    private zzhzl zzd = zzhzl.f;

    static {
        zzhot zzhotVar = new zzhot();
        zze = zzhotVar;
        zziar.x(zzhot.class, zzhotVar);
    }

    public static zzhot G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhot) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhos H() {
        return (zzhos) zze.u();
    }

    public static zzhot I() {
        return zze;
    }

    public static zzick J() {
        return zze.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhox E() {
        zzhox zzhoxVar = this.zzc;
        if (zzhoxVar == null) {
            return zzhox.G();
        }
        return zzhoxVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void K(zzhox zzhoxVar) {
        this.zzc = zzhoxVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void L(zzhzl zzhzlVar) {
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
                                    synchronized (zzhot.class) {
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
                return new zzhot();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
