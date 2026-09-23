package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzigy extends zziar implements zzicd {
    private static final zzigy zzd;
    private static volatile zzick zze;
    private int zza;
    private int zzb;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzigy zzigyVar = new zzigy();
        zzd = zzigyVar;
        zziar.x(zzigy.class, zzigyVar);
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
                                    synchronized (zzigy.class) {
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
                return new zzigy();
            }
            return new zzico(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zza", "zzb", zzigx.f8982a, "zzc"});
        }
        return (byte) 1;
    }
}
