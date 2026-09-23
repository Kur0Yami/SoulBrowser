package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzigv extends zziar implements zzicd {
    private static final zzigv zzd;
    private static volatile zzick zze;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzhzl zzc = zzhzl.f;

    static {
        zzigv zzigvVar = new zzigv();
        zzd = zzigvVar;
        zziar.x(zzigv.class, zzigvVar);
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
                                    synchronized (zzigv.class) {
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
                return new zzigv();
            }
            return new zzico(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ည\u0001", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
