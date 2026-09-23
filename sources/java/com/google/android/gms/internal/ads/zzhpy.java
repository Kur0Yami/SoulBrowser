package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

@Deprecated
/* loaded from: classes.dex */
public final class zzhpy extends zziar implements zzicd {
    public static final /* synthetic */ int zza = 0;
    private static final zzhpy zzd;
    private static volatile zzick zze;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzibd zzc = zzicn.i;

    static {
        zzhpy zzhpyVar = new zzhpy();
        zzd = zzhpyVar;
        zziar.x(zzhpy.class, zzhpyVar);
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
                                    synchronized (zzhpy.class) {
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
                return new zzhpy();
            }
            return new zzico(zzd, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzb", "zzc", zzhpf.class});
        }
        return (byte) 1;
    }
}
