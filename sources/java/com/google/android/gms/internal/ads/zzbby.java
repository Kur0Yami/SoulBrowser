package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzbby extends zziar implements zzicd {
    private static final zzbby zzg;
    private static volatile zzick zzh;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzd;
    private long zze;
    private long zzf;

    static {
        zzbby zzbbyVar = new zzbby();
        zzg = zzbbyVar;
        zziar.x(zzbby.class, zzbbyVar);
    }

    public static zzbby I(zzhzl zzhzlVar) {
        zzbby zzbbyVar = zzg;
        zziab zziabVar = zziab.b;
        int i = zzhyy.f8889a;
        zziar r = zziar.r(zzbbyVar, zzhzlVar, zziab.f8905c);
        zziar.C(r);
        return (zzbby) r;
    }

    public static zzbby J(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzbby) zziar.r(zzg, zzhzlVar, zziabVar);
    }

    public static zzbbx K() {
        return (zzbbx) zzg.u();
    }

    public static zzbby L() {
        return zzg;
    }

    public final String D() {
        return this.zzb;
    }

    public final String E() {
        return this.zzc;
    }

    public final long F() {
        return this.zzd;
    }

    public final long G() {
        return this.zze;
    }

    public final long H() {
        return this.zzf;
    }

    public final /* synthetic */ void M(String str) {
        str.getClass();
        this.zza |= 1;
        this.zzb = str;
    }

    public final /* synthetic */ void N(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzc = str;
    }

    public final /* synthetic */ void O(long j) {
        this.zza |= 4;
        this.zzd = j;
    }

    public final /* synthetic */ void P(long j) {
        this.zza |= 8;
        this.zze = j;
    }

    public final /* synthetic */ void Q(long j) {
        this.zza |= 16;
        this.zzf = j;
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
                                zzick zzickVar2 = zzh;
                                if (zzickVar2 == null) {
                                    synchronized (zzbby.class) {
                                        try {
                                            zzickVar = zzh;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzg);
                                                zzh = zzickVar;
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
                        return zzg;
                    }
                    return new zzial(zzg);
                }
                return new zzbby();
            }
            return new zzico(zzg, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
