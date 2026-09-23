package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhqs extends zziar implements zzicd {
    private static final zzhqs zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private zzhqu zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhqs] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zzhqs.class, zziarVar);
    }

    public static zzhqs F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhqs) zziar.r(zzd, zzhzlVar, zziabVar);
    }

    public static zzhqr G() {
        return (zzhqr) zzd.u();
    }

    public final int D() {
        return this.zzb;
    }

    public final zzhqu E() {
        zzhqu zzhquVar = this.zzc;
        if (zzhquVar == null) {
            return zzhqu.F();
        }
        return zzhquVar;
    }

    public final /* synthetic */ void H(zzhqu zzhquVar) {
        this.zzc = zzhquVar;
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
                                    synchronized (zzhqs.class) {
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
            return new zzico(zzd, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
