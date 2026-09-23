package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgcs extends zziar implements zzicd {
    private static final zzgcs zze;
    private static volatile zzick zzf;
    private int zza;
    private int zzb = 0;
    private Object zzc;
    private int zzd;

    static {
        zzgcs zzgcsVar = new zzgcs();
        zze = zzgcsVar;
        zziar.x(zzgcs.class, zzgcsVar);
    }

    public static zzgcs G(zzhzl zzhzlVar) {
        zzgcs zzgcsVar = zze;
        zziab zziabVar = zziab.b;
        int i = zzhyy.f8889a;
        zziar r = zziar.r(zzgcsVar, zzhzlVar, zziab.f8905c);
        zziar.C(r);
        return (zzgcs) r;
    }

    public static zzgcr H() {
        return (zzgcr) zze.u();
    }

    public static zzgcs I() {
        return zze;
    }

    public final zzbby D() {
        if (this.zzb == 1) {
            return (zzbby) this.zzc;
        }
        return zzbby.L();
    }

    public final zzbbw E() {
        if (this.zzb == 2) {
            return (zzbbw) this.zzc;
        }
        return zzbbw.G();
    }

    public final zzbbq F() {
        zzbbq a2 = zzbbq.a(this.zzd);
        return a2 == null ? zzbbq.UNSUPPORTED : a2;
    }

    public final /* synthetic */ void J(zzbby zzbbyVar) {
        zzbbyVar.getClass();
        this.zzc = zzbbyVar;
        this.zzb = 1;
    }

    public final /* synthetic */ void K(zzbbw zzbbwVar) {
        zzbbwVar.getClass();
        this.zzc = zzbbwVar;
        this.zzb = 2;
    }

    public final void L(zzbbq zzbbqVar) {
        this.zzd = zzbbqVar.f4536c;
        this.zza |= 1;
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
                                    synchronized (zzgcs.class) {
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
                return new zzgcs();
            }
            return new zzico(zze, "\u0004\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003᠌\u0000", new Object[]{"zzc", "zzb", "zza", zzbby.class, zzbbw.class, "zzd", zzbbp.f4535a});
        }
        return (byte) 1;
    }
}
