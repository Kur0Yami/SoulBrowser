package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhoe extends zziar implements zzicd {
    private static final zzhoe zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private int zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhoe] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhoe.class, zziarVar);
    }

    public static zzhod E() {
        return (zzhod) zzd.u();
    }

    public static zzhoe F() {
        return zzd;
    }

    public final zzhor D() {
        zzhor a2 = zzhor.a(this.zza);
        return a2 == null ? zzhor.UNRECOGNIZED : a2;
    }

    public final /* synthetic */ void G(zzhor zzhorVar) {
        this.zza = zzhorVar.zza();
    }

    public final int H() {
        int i = this.zzb;
        int i2 = i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : 7 : 6 : 5 : 4 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int I() {
        int i = this.zzc;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final void J(int i) {
        if (i != 1) {
            this.zzb = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final void K(int i) {
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
                                zzick zzickVar2 = zze;
                                if (zzickVar2 == null) {
                                    synchronized (zzhoe.class) {
                                        try {
                                            zzickVar = zze;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzd);
                                                zze = zzickVar;
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
                        return zzd;
                    }
                    return new zzial(zzd);
                }
                return new zziar();
            }
            return new zzico(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\f", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
