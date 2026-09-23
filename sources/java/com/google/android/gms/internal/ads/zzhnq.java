package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhnq extends zziar implements zzicd {
    private static final zzhnq zzc;
    private static volatile zzick zzd;
    private int zza;
    private zzhzl zzb = zzhzl.f;

    static {
        zzhnq zzhnqVar = new zzhnq();
        zzc = zzhnqVar;
        zziar.x(zzhnq.class, zzhnqVar);
    }

    public static zzhnq F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhnq) zziar.r(zzc, zzhzlVar, zziabVar);
    }

    public static zzhnp G() {
        return (zzhnp) zzc.u();
    }

    public static zzick H() {
        return zzc.a();
    }

    public final int D() {
        return this.zza;
    }

    public final zzhzl E() {
        return this.zzb;
    }

    public final /* synthetic */ void I(zzhzl zzhzlVar) {
        this.zzb = zzhzlVar;
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
                                    synchronized (zzhnq.class) {
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
                return new zzhnq();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
