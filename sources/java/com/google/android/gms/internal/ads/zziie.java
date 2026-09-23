package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zziie extends zziar implements zzicd {
    private static final zziie zzj;
    private static volatile zzick zzk;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzibd zzd;
    private zzibd zze;
    private zzibd zzf;
    private int zzg;
    private zzihn zzh;
    private String zzi;

    static {
        zziie zziieVar = new zziie();
        zzj = zziieVar;
        zziar.x(zziie.class, zziieVar);
    }

    public zziie() {
        zzicn zzicnVar = zzicn.i;
        this.zzd = zzicnVar;
        this.zze = zzicnVar;
        this.zzf = zzicnVar;
        this.zzg = -1;
        this.zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
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
                                zzick zzickVar2 = zzk;
                                if (zzickVar2 == null) {
                                    synchronized (zziie.class) {
                                        try {
                                            zzickVar = zzk;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzj);
                                                zzk = zzickVar;
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
                        return zzj;
                    }
                    return new zzial(zzj);
                }
                return new zziie();
            }
            return new zzico(zzj, "\u0001\b\u0000\u0001\u0001\n\b\u0000\u0003\u0000\u0001ဈ\u0001\u0002\u001b\u0003\u001b\u0004င\u0002\u0005ဈ\u0000\b\u001b\tဈ\u0004\nဉ\u0003", new Object[]{"zza", "zzc", "zzd", zzihr.class, "zze", zzihy.class, "zzg", "zzb", "zzf", zziil.class, "zzi", "zzh"});
        }
        return (byte) 1;
    }
}
