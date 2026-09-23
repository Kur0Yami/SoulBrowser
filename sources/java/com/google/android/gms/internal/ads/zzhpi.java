package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhpi extends zziar implements zzicd {
    private static final zzhpi zzf;
    private static volatile zzick zzg;
    private int zza;
    private zzhpa zzb;
    private int zzc;
    private int zzd;
    private int zze;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhpi, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzf = zziarVar;
        zziar.x(zzhpi.class, zziarVar);
    }

    public static zzhph H() {
        return (zzhph) zzf.u();
    }

    public final boolean D() {
        return (this.zza & 1) != 0;
    }

    public final zzhpa E() {
        zzhpa zzhpaVar = this.zzb;
        if (zzhpaVar == null) {
            return zzhpa.H();
        }
        return zzhpaVar;
    }

    public final int F() {
        return this.zzd;
    }

    public final zzhpw G() {
        zzhpw a2 = zzhpw.a(this.zze);
        return a2 == null ? zzhpw.UNRECOGNIZED : a2;
    }

    public final /* synthetic */ void I(zzhpa zzhpaVar) {
        this.zzb = zzhpaVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void J(int i) {
        this.zzd = i;
    }

    public final /* synthetic */ void K(zzhpw zzhpwVar) {
        this.zze = zzhpwVar.zza();
    }

    public final int L() {
        int i = this.zzc;
        int i2 = i != 0 ? i != 1 ? i != 2 ? i != 3 ? 0 : 5 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final void M(int i) {
        if (i != 1) {
            this.zzc = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
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
                                    synchronized (zzhpi.class) {
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
                return new zziar();
            }
            return new zzico(zzf, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
