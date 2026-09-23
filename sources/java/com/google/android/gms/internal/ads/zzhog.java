package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhog extends zziar implements zzicd {
    private static final zzhog zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb;
    private zzhoi zzc;
    private zzhzl zzd = zzhzl.f;

    static {
        zzhog zzhogVar = new zzhog();
        zze = zzhogVar;
        zziar.x(zzhog.class, zzhogVar);
    }

    public static zzhog G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhog) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhof H() {
        return (zzhof) zze.u();
    }

    public static zzick I() {
        return zze.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhoi E() {
        zzhoi zzhoiVar = this.zzc;
        if (zzhoiVar == null) {
            return zzhoi.J();
        }
        return zzhoiVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final /* synthetic */ void J(zzhoi zzhoiVar) {
        this.zzc = zzhoiVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void K(zzhzl zzhzlVar) {
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
                                    synchronized (zzhog.class) {
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
                return new zzhog();
            }
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
