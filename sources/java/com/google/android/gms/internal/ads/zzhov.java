package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhov extends zziar implements zzicd {
    private static final zzhov zze;
    private static volatile zzick zzf;
    private int zza;
    private zzhox zzb;
    private int zzc;
    private int zzd;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhov, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zze = zziarVar;
        zziar.x(zzhov.class, zziarVar);
    }

    public static zzhov G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhov) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzhou H() {
        return (zzhou) zze.u();
    }

    public static zzhov I() {
        return zze;
    }

    public final zzhox D() {
        zzhox zzhoxVar = this.zzb;
        if (zzhoxVar == null) {
            return zzhox.G();
        }
        return zzhoxVar;
    }

    public final int E() {
        return this.zzc;
    }

    public final int F() {
        return this.zzd;
    }

    public final /* synthetic */ void J(zzhox zzhoxVar) {
        this.zzb = zzhoxVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void K(int i) {
        this.zzc = i;
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
                                    synchronized (zzhov.class) {
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
            return new zzico(zze, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
