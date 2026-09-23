package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhne extends zziar implements zzicd {
    private static final zzhne zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhni zzc;
    private zzhzl zzd = zzhzl.f;

    static {
        zzhne zzhneVar = new zzhne();
        zze = zzhneVar;
        zziar.x(zzhne.class, zzhneVar);
    }

    public static zzhnd G() {
        return (zzhnd) zze.u();
    }

    public static zzhne H() {
        return zze;
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhni E() {
        zzhni zzhniVar = this.zzc;
        if (zzhniVar == null) {
            return zzhni.F();
        }
        return zzhniVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void I(zzhni zzhniVar) {
        this.zzc = zzhniVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
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
                                    synchronized (zzhne.class) {
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
                return new zzhne();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
