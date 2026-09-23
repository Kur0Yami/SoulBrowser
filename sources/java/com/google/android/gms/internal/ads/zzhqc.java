package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqc extends zziar implements zzicd {
    private static final zzhqc zzb;
    private static volatile zzick zzc;
    private int zza;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhqc] */
    static {
        ?? zziarVar = new zziar();
        zzb = zziarVar;
        zziar.x(zzhqc.class, zziarVar);
    }

    public static zzhqb E() {
        return (zzhqb) zzb.u();
    }

    public static zzhqc F() {
        return zzb;
    }

    public final zzhor D() {
        zzhor a2 = zzhor.a(this.zza);
        return a2 == null ? zzhor.UNRECOGNIZED : a2;
    }

    public final /* synthetic */ void G(zzhor zzhorVar) {
        this.zza = zzhorVar.zza();
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
                                zzick zzickVar2 = zzc;
                                if (zzickVar2 == null) {
                                    synchronized (zzhqc.class) {
                                        try {
                                            zzickVar = zzc;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzb);
                                                zzc = zzickVar;
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
                        return zzb;
                    }
                    return new zzial(zzb);
                }
                return new zziar();
            }
            return new zzico(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"zza"});
        }
        return (byte) 1;
    }
}
