package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhpv extends zziar implements zzicd {
    private static final zzhpv zzd;
    private static volatile zzick zze;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzhpd zzc;

    static {
        zzhpv zzhpvVar = new zzhpv();
        zzd = zzhpvVar;
        zziar.x(zzhpv.class, zzhpvVar);
    }

    public static zzhpv F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhpv) zziar.r(zzd, zzhzlVar, zziabVar);
    }

    public static zzhpu G() {
        return (zzhpu) zzd.u();
    }

    public static zzhpv H() {
        return zzd;
    }

    public final String D() {
        return this.zzb;
    }

    public final zzhpd E() {
        zzhpd zzhpdVar = this.zzc;
        if (zzhpdVar == null) {
            return zzhpd.J();
        }
        return zzhpdVar;
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zzb = str;
    }

    public final /* synthetic */ void J(zzhpd zzhpdVar) {
        zzhpdVar.getClass();
        this.zzc = zzhpdVar;
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
                                    synchronized (zzhpv.class) {
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
                return new zzhpv();
            }
            return new zzico(zzd, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
