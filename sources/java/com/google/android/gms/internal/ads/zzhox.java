package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhox extends zziar implements zzicd {
    private static final zzhox zzc;
    private static volatile zzick zzd;
    private int zza;
    private int zzb;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhox, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzc = zziarVar;
        zziar.x(zzhox.class, zziarVar);
    }

    public static zzhow F() {
        return (zzhow) zzc.u();
    }

    public static zzhox G() {
        return zzc;
    }

    public final zzhor D() {
        zzhor a2 = zzhor.a(this.zza);
        return a2 == null ? zzhor.UNRECOGNIZED : a2;
    }

    public final int E() {
        return this.zzb;
    }

    public final /* synthetic */ void H(zzhor zzhorVar) {
        this.zza = zzhorVar.zza();
    }

    public final /* synthetic */ void I(int i) {
        this.zzb = i;
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
                                zzick zzickVar2 = zzd;
                                if (zzickVar2 == null) {
                                    synchronized (zzhox.class) {
                                        try {
                                            zzickVar = zzd;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzc);
                                                zzd = zzickVar;
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
                        return zzc;
                    }
                    return new zzial(zzc);
                }
                return new zziar();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
