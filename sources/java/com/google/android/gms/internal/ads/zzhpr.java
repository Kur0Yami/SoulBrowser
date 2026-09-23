package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhpr extends zziar implements zzicd {
    private static final zzhpr zzb;
    private static volatile zzick zzc;
    private String zza = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzhpr zzhprVar = new zzhpr();
        zzb = zzhprVar;
        zziar.x(zzhpr.class, zzhprVar);
    }

    public static zzhpr E(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhpr) zziar.r(zzb, zzhzlVar, zziabVar);
    }

    public static zzhpq F() {
        return (zzhpq) zzb.u();
    }

    public static zzhpr G() {
        return zzb;
    }

    public final String D() {
        return this.zza;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zza = str;
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
                                    synchronized (zzhpr.class) {
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
                return new zzhpr();
            }
            return new zzico(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zza"});
        }
        return (byte) 1;
    }
}
