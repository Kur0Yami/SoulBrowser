package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqk extends zziar implements zzicd {
    private static final zzhqk zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private int zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhqk, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhqk.class, zziarVar);
    }

    public static zzhqj G() {
        return (zzhqj) zzd.u();
    }

    public static zzhqk H() {
        return zzd;
    }

    public final zzhor D() {
        zzhor a2 = zzhor.a(this.zza);
        return a2 == null ? zzhor.UNRECOGNIZED : a2;
    }

    public final zzhor E() {
        zzhor a2 = zzhor.a(this.zzb);
        return a2 == null ? zzhor.UNRECOGNIZED : a2;
    }

    public final int F() {
        return this.zzc;
    }

    public final /* synthetic */ void I(zzhor zzhorVar) {
        this.zza = zzhorVar.zza();
    }

    public final /* synthetic */ void J(zzhor zzhorVar) {
        this.zzb = zzhorVar.zza();
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
                                zzick zzickVar2 = zze;
                                if (zzickVar2 == null) {
                                    synchronized (zzhqk.class) {
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
            return new zzico(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\u0004", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
