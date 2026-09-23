package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzihj extends zziar implements zzicd {
    private static final zzihj zzp;
    private static volatile zzick zzu;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zzd = 4;
    private zzibd zze;
    private String zzf;
    private String zzg;
    private boolean zzh;
    private double zzi;
    private zzibd zzj;
    private int zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;

    static {
        zzihj zzihjVar = new zzihj();
        zzp = zzihjVar;
        zziar.x(zzihj.class, zzihjVar);
    }

    public zzihj() {
        zzicn zzicnVar = zzicn.i;
        this.zze = zzicnVar;
        this.zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzj = zzicnVar;
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
                                zzick zzickVar2 = zzu;
                                if (zzickVar2 == null) {
                                    synchronized (zzihj.class) {
                                        try {
                                            zzickVar = zzu;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzp);
                                                zzu = zzickVar;
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
                        return zzp;
                    }
                    return new zzial(zzp);
                }
                return new zzihj();
            }
            return new zzico(zzp, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zza", "zzb", "zzd", zzihi.f8985a, "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzihh.class, "zzc", "zzk", zzihf.f8984a, "zzl", "zzm", "zzn", "zzo"});
        }
        return (byte) 1;
    }
}
