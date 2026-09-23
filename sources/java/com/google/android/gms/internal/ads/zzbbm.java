package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzbbm extends zziar implements zzicd {
    private static final zzbbm zzh;
    private static volatile zzick zzi;
    private int zza;
    private long zzc;
    private long zzf;
    private zzhzl zzb = zzhzl.f;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzbbm zzbbmVar = new zzbbm();
        zzh = zzbbmVar;
        zziar.x(zzbbm.class, zzbbmVar);
    }

    public static zzbbl D() {
        return (zzbbl) zzh.u();
    }

    public final /* synthetic */ void E(zzhzl zzhzlVar) {
        this.zza |= 1;
        this.zzb = zzhzlVar;
    }

    public final /* synthetic */ void F(long j) {
        this.zza |= 2;
        this.zzc = j;
    }

    public final /* synthetic */ void G(String str) {
        String str2 = Build.MODEL;
        str2.getClass();
        this.zza |= 4;
        this.zzd = str2;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zza |= 8;
        this.zze = str;
    }

    public final /* synthetic */ void I(long j) {
        this.zza |= 16;
        this.zzf = j;
    }

    public final /* synthetic */ void J(String str) {
        str.getClass();
        this.zza |= 32;
        this.zzg = str;
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
                                zzick zzickVar2 = zzi;
                                if (zzickVar2 == null) {
                                    synchronized (zzbbm.class) {
                                        try {
                                            zzickVar = zzi;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzh);
                                                zzi = zzickVar;
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
                        return zzh;
                    }
                    return new zzial(zzh);
                }
                return new zzbbm();
            }
            return new zzico(zzh, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ည\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဂ\u0004\u0006ဈ\u0005", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
