package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzavo extends zziar implements zzicd {
    private static final zzavo zzi;
    private static volatile zzick zzj;
    private int zza;
    private long zzb;
    private long zzc;
    private int zzd;
    private long zzg;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzavo zzavoVar = new zzavo();
        zzi = zzavoVar;
        zziar.x(zzavo.class, zzavoVar);
    }

    public static zzavn D() {
        return (zzavn) zzi.u();
    }

    public final /* synthetic */ void E(long j) {
        this.zza |= 1;
        this.zzb = j;
    }

    public final /* synthetic */ void F(long j) {
        this.zza |= 2;
        this.zzc = j;
    }

    public final /* synthetic */ void G(String str) {
        this.zza |= 8;
        this.zze = str;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zza |= 16;
        this.zzf = str;
    }

    public final /* synthetic */ void I(long j) {
        this.zza |= 32;
        this.zzg = j;
    }

    public final /* synthetic */ void J(String str) {
        this.zza |= 64;
        this.zzh = str;
    }

    public final /* synthetic */ void K(int i) {
        this.zzd = i - 1;
        this.zza |= 4;
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
                                zzick zzickVar2 = zzj;
                                if (zzickVar2 == null) {
                                    synchronized (zzavo.class) {
                                        try {
                                            zzickVar = zzj;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzi);
                                                zzj = zzickVar;
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
                        return zzi;
                    }
                    return new zzial(zzi);
                }
                return new zzavo();
            }
            return new zzico(zzi, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဈ\u0006", new Object[]{"zza", "zzb", "zzc", "zzd", zzavp.f4436a, "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
