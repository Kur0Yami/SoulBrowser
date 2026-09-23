package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqq extends zziar implements zzicd {
    private static final zzhqq zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhqu zzc;
    private zzhzl zzd = zzhzl.f;

    static {
        zzhqq zzhqqVar = new zzhqq();
        zze = zzhqqVar;
        zziar.x(zzhqq.class, zzhqqVar);
    }

    public static zzhqq G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhqq) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhqp H() {
        return (zzhqp) zze.u();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhqu E() {
        zzhqu zzhquVar = this.zzc;
        if (zzhquVar == null) {
            return zzhqu.F();
        }
        return zzhquVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void I(zzhqu zzhquVar) {
        this.zzc = zzhquVar;
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
                                    synchronized (zzhqq.class) {
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
                return new zzhqq();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
