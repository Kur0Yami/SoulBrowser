package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhpd extends zziar implements zzicd {
    private static final zzhpd zzd;
    private static volatile zzick zze;
    private String zza = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzhzl zzb = zzhzl.f;
    private int zzc;

    static {
        zzhpd zzhpdVar = new zzhpd();
        zzd = zzhpdVar;
        zziar.x(zzhpd.class, zzhpdVar);
    }

    public static zzhpd G(byte[] bArr, zziab zziabVar) {
        zziar A = zziar.A(zzd, bArr, bArr.length, zziabVar);
        zziar.C(A);
        return (zzhpd) A;
    }

    public static zzhpc H() {
        return (zzhpc) zzd.u();
    }

    public static zzhpc I(zzhpd zzhpdVar) {
        zzial u = zzd.u();
        u.n(zzhpdVar);
        return (zzhpc) u;
    }

    public static zzhpd J() {
        return zzd;
    }

    public final String D() {
        return this.zza;
    }

    public final zzhzl E() {
        return this.zzb;
    }

    public final zzhpw F() {
        zzhpw a2 = zzhpw.a(this.zzc);
        return a2 == null ? zzhpw.UNRECOGNIZED : a2;
    }

    public final /* synthetic */ void K(String str) {
        str.getClass();
        this.zza = str;
    }

    public final /* synthetic */ void L(zzhzl zzhzlVar) {
        zzhzlVar.getClass();
        this.zzb = zzhzlVar;
    }

    public final /* synthetic */ void M(zzhpw zzhpwVar) {
        this.zzc = zzhpwVar.zza();
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
                                    synchronized (zzhpd.class) {
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
                return new zzhpd();
            }
            return new zzico(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
