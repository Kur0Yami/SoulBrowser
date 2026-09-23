package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhpt extends zziar implements zzicd {
    private static final zzhpt zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private zzhpv zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhpt] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhpt.class, zziarVar);
    }

    public static zzhpt F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhpt) zziar.r(zzd, zzhzlVar, zziabVar);
    }

    public static zzhps G() {
        return (zzhps) zzd.u();
    }

    public static zzick H() {
        return zzd.a();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhpv E() {
        zzhpv zzhpvVar = this.zzc;
        if (zzhpvVar == null) {
            return zzhpv.H();
        }
        return zzhpvVar;
    }

    public final /* synthetic */ void I(zzhpv zzhpvVar) {
        this.zzc = zzhpvVar;
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
                                zzick zzickVar2 = zze;
                                if (zzickVar2 == null) {
                                    synchronized (zzhpt.class) {
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
            return new zzico(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
