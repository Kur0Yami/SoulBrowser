package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhop extends zziar implements zzicd {
    private static final zzhop zzc;
    private static volatile zzick zzd;
    private int zza;
    private zzhzl zzb = zzhzl.f;

    static {
        zzhop zzhopVar = new zzhop();
        zzc = zzhopVar;
        zziar.x(zzhop.class, zzhopVar);
    }

    public static zzhop F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhop) zziar.r(zzc, zzhzlVar, zziabVar);
    }

    public static zzhoo G() {
        return (zzhoo) zzc.u();
    }

    public static zzhop H() {
        return zzc;
    }

    public static zzick I() {
        return zzc.a();
    }

    public final int D() {
        return this.zza;
    }

    public final zzhzl E() {
        return this.zzb;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
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
                                    synchronized (zzhop.class) {
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
                return new zzhop();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\n", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
