package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhnu extends zziar implements zzicd {
    private static final zzhnu zzc;
    private static volatile zzick zzd;
    private int zza;
    private zzhzl zzb = zzhzl.f;

    static {
        zzhnu zzhnuVar = new zzhnu();
        zzc = zzhnuVar;
        zziar.x(zzhnu.class, zzhnuVar);
    }

    public static zzhnu F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhnu) zziar.r(zzc, zzhzlVar, zziabVar);
    }

    public static zzhnt G() {
        return (zzhnt) zzc.u();
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
                                    synchronized (zzhnu.class) {
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
                return new zzhnu();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
