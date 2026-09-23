package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzawt extends zziar implements zzicd {
    private static final zzawt zzf;
    private static volatile zzick zzg;
    private int zza;
    private zzhzl zzb;
    private zzhzl zzc;
    private zzhzl zzd;
    private zzhzl zze;

    static {
        zzawt zzawtVar = new zzawt();
        zzf = zzawtVar;
        zziar.x(zzawt.class, zzawtVar);
    }

    public zzawt() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzb = zzhzlVar;
        this.zzc = zzhzlVar;
        this.zzd = zzhzlVar;
        this.zze = zzhzlVar;
    }

    public static zzawt H(byte[] bArr, zziab zziabVar) {
        zziar A = zziar.A(zzf, bArr, bArr.length, zziabVar);
        zziar.C(A);
        return (zzawt) A;
    }

    public static zzaws I() {
        return (zzaws) zzf.u();
    }

    public final zzhzl D() {
        return this.zzb;
    }

    public final zzhzl E() {
        return this.zzc;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final zzhzl G() {
        return this.zze;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
        this.zza |= 1;
        this.zzb = zzhzlVar;
    }

    public final /* synthetic */ void K(zzhzl zzhzlVar) {
        this.zza |= 2;
        this.zzc = zzhzlVar;
    }

    public final /* synthetic */ void L(zzhzl zzhzlVar) {
        this.zza |= 4;
        this.zzd = zzhzlVar;
    }

    public final /* synthetic */ void M(zzhzl zzhzlVar) {
        this.zza |= 8;
        this.zze = zzhzlVar;
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
                                    synchronized (zzawt.class) {
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
                return new zzawt();
            }
            return new zzico(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
