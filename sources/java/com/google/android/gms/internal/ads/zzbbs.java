package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbbs extends zziar implements zzicd {
    private static final zzbbs zze;
    private static volatile zzick zzf;
    private int zza;
    private zzbby zzb;
    private zzhzl zzc;
    private zzhzl zzd;

    static {
        zzbbs zzbbsVar = new zzbbs();
        zze = zzbbsVar;
        zziar.x(zzbbs.class, zzbbsVar);
    }

    public zzbbs() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzc = zzhzlVar;
        this.zzd = zzhzlVar;
    }

    public static zzbbs G(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzbbs) zziar.r(zze, zzhzlVar, zziabVar);
    }

    public static zzbbs H(byte[] bArr, zziab zziabVar) {
        zziar A = zziar.A(zze, bArr, bArr.length, zziabVar);
        zziar.C(A);
        return (zzbbs) A;
    }

    public final zzbby D() {
        zzbby zzbbyVar = this.zzb;
        if (zzbbyVar == null) {
            return zzbby.L();
        }
        return zzbbyVar;
    }

    public final zzhzl E() {
        return this.zzc;
    }

    public final zzhzl F() {
        return this.zzd;
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
                                    synchronized (zzbbs.class) {
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
                return new zzbbs();
            }
            return new zzico(zze, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zza", "zzb", "zzc", "zzd"});
        }
        return (byte) 1;
    }
}
