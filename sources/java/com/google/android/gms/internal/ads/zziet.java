package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zziet extends zziar implements zzicd {
    private static final zziet zzy;
    private static volatile zzick zzz;
    private int zza;
    private int zzb;
    private boolean zzc;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzibd zze;
    private int zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private String zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private zzibd zzo;
    private boolean zzp;
    private long zzu;
    private zziaz zzv;
    private boolean zzw;
    private zziaz zzx;

    static {
        zziet zzietVar = new zziet();
        zzy = zzietVar;
        zziar.x(zziet.class, zzietVar);
    }

    public zziet() {
        zzicn zzicnVar = zzicn.i;
        this.zze = zzicnVar;
        this.zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzo = zzicnVar;
        zzias zziasVar = zzias.i;
        this.zzv = zziasVar;
        this.zzx = zziasVar;
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
                                zzick zzickVar2 = zzz;
                                if (zzickVar2 == null) {
                                    synchronized (zziet.class) {
                                        try {
                                            zzickVar = zzz;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzy);
                                                zzz = zzickVar;
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
                        return zzy;
                    }
                    return new zzial(zzy);
                }
                return new zziet();
            }
            return new zzico(zzy, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004\u001a\u0005᠌\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006\tဈ\u0007\nင\b\u000bင\t\fင\n\rဇ\u000b\u000e\u001b\u000fဇ\f\u0010ဂ\r\u0011ࠬ\u0012ဇ\u000e\u0013ࠬ", new Object[]{"zza", "zzb", zzies.f8969a, "zzc", "zzd", "zze", "zzf", zzieq.f8967a, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zziep.class, "zzp", "zzu", "zzv", zzieg.f8965a, "zzw", "zzx", zzier.f8968a});
        }
        return (byte) 1;
    }
}
