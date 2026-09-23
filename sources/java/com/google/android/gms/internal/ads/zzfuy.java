package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfuy extends zziar implements zzicd {
    private static final zzfuy zzf;
    private static volatile zzick zzg;
    private int zza;
    private zziaz zzb = zzias.i;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzfuy zzfuyVar = new zzfuy();
        zzf = zzfuyVar;
        zziar.x(zzfuy.class, zzfuyVar);
    }

    public static zzfux D() {
        return (zzfux) zzf.u();
    }

    public final /* synthetic */ void E(String str) {
        str.getClass();
        this.zza |= 1;
        this.zzc = str;
    }

    public final void F(int i) {
        zziaz zziazVar = this.zzb;
        if (!zziazVar.zza()) {
            int size = zziazVar.size();
            this.zzb = zziazVar.e(size + size);
        }
        this.zzb.d(2);
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
                                zzick zzickVar2 = zzg;
                                if (zzickVar2 == null) {
                                    synchronized (zzfuy.class) {
                                        try {
                                            zzickVar = zzg;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzf);
                                                zzg = zzickVar;
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
                        return zzf;
                    }
                    return new zzial(zzf);
                }
                return new zzfuy();
            }
            return new zzico(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zza", "zzb", zzfuw.f7678a, "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
