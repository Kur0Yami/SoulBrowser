package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zziic extends zziar implements zzicd {
    private static final zziic zzl;
    private static volatile zzick zzm;
    private int zza;
    private zzhzl zzb = zzhzl.f;
    private zziaz zzc;
    private long zzd;
    private zziaz zze;
    private zzibd zzf;
    private String zzg;
    private zzibd zzh;
    private zziie zzi;
    private zziig zzj;
    private zzhxg zzk;

    static {
        zziic zziicVar = new zziic();
        zzl = zziicVar;
        zziar.x(zziic.class, zziicVar);
    }

    public zziic() {
        zzias zziasVar = zzias.i;
        this.zzc = zziasVar;
        this.zze = zziasVar;
        zzicn zzicnVar = zzicn.i;
        this.zzf = zzicnVar;
        this.zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.zzh = zzicnVar;
    }

    public static zziic D(byte[] bArr, zziab zziabVar) {
        zziar A = zziar.A(zzl, bArr, bArr.length, zziabVar);
        zziar.C(A);
        return (zziic) A;
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
                                zzick zzickVar2 = zzm;
                                if (zzickVar2 == null) {
                                    synchronized (zziic.class) {
                                        try {
                                            zzickVar = zzm;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzl);
                                                zzm = zzickVar;
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
                        return zzl;
                    }
                    return new zzial(zzl);
                }
                return new zziic();
            }
            return new zzico(zzl, "\u0001\n\u0000\u0001\u0001\u000f\n\u0000\u0004\u0000\u0001'\u0002ဂ\u0001\u0003'\u0004\u001b\u0005ဉ\u0003\u0007ဈ\u0002\tဉ\u0004\n\u001a\rည\u0000\u000fဉ\u0005", new Object[]{"zza", "zzc", "zzd", "zze", "zzh", zzihr.class, "zzi", "zzg", "zzj", "zzf", "zzb", "zzk"});
        }
        return (byte) 1;
    }
}
