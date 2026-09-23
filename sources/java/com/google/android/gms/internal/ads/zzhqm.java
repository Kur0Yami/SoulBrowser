package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqm extends zziar implements zzicd {
    private static final zzhqm zzj;
    private static volatile zzick zzk;
    private int zza;
    private int zzb;
    private zzhqo zzc;
    private zzhzl zzd;
    private zzhzl zze;
    private zzhzl zzf;
    private zzhzl zzg;
    private zzhzl zzh;
    private zzhzl zzi;

    static {
        zzhqm zzhqmVar = new zzhqm();
        zzj = zzhqmVar;
        zziar.x(zzhqm.class, zzhqmVar);
    }

    public zzhqm() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzd = zzhzlVar;
        this.zze = zzhzlVar;
        this.zzf = zzhzlVar;
        this.zzg = zzhzlVar;
        this.zzh = zzhzlVar;
        this.zzi = zzhzlVar;
    }

    public static zzhqm L(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhqm) zziar.r(zzj, zzhzlVar, zziabVar);
    }

    public static zzhql M() {
        return (zzhql) zzj.u();
    }

    public static zzick N() {
        return zzj.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhqo E() {
        zzhqo zzhqoVar = this.zzc;
        if (zzhqoVar == null) {
            return zzhqo.J();
        }
        return zzhqoVar;
    }

    public final zzhzl F() {
        return this.zzd;
    }

    public final zzhzl G() {
        return this.zze;
    }

    public final zzhzl H() {
        return this.zzf;
    }

    public final zzhzl I() {
        return this.zzg;
    }

    public final zzhzl J() {
        return this.zzh;
    }

    public final zzhzl K() {
        return this.zzi;
    }

    public final /* synthetic */ void O() {
        this.zzb = 0;
    }

    public final /* synthetic */ void P(zzhqo zzhqoVar) {
        this.zzc = zzhqoVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void Q(zzhzl zzhzlVar) {
        this.zzd = zzhzlVar;
    }

    public final /* synthetic */ void R(zzhzl zzhzlVar) {
        this.zze = zzhzlVar;
    }

    public final /* synthetic */ void S(zzhzl zzhzlVar) {
        this.zzf = zzhzlVar;
    }

    public final /* synthetic */ void T(zzhzl zzhzlVar) {
        this.zzg = zzhzlVar;
    }

    public final /* synthetic */ void U(zzhzl zzhzlVar) {
        this.zzh = zzhzlVar;
    }

    public final /* synthetic */ void V(zzhzl zzhzlVar) {
        this.zzi = zzhzlVar;
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
                                zzick zzickVar2 = zzk;
                                if (zzickVar2 == null) {
                                    synchronized (zzhqm.class) {
                                        try {
                                            zzickVar = zzk;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzj);
                                                zzk = zzickVar;
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
                        return zzj;
                    }
                    return new zzial(zzj);
                }
                return new zzhqm();
            }
            return new zzico(zzj, "\u0000\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n\u0005\n\u0006\n\u0007\n\b\n", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
