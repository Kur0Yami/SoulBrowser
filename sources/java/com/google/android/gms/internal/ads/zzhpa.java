package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhpa extends zziar implements zzicd {
    private static final zzhpa zzd;
    private static volatile zzick zze;
    private String zza = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzhzl zzb = zzhzl.f;
    private int zzc;

    static {
        zzhpa zzhpaVar = new zzhpa();
        zzd = zzhpaVar;
        zziar.x(zzhpa.class, zzhpaVar);
    }

    public static zzhoy G() {
        return (zzhoy) zzd.u();
    }

    public static zzhpa H() {
        return zzd;
    }

    public final String D() {
        return this.zza;
    }

    public final zzhzl E() {
        return this.zzb;
    }

    public final zzhoz F() {
        int i = this.zzc;
        zzhoz zzhozVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : zzhoz.REMOTE : zzhoz.ASYMMETRIC_PUBLIC : zzhoz.ASYMMETRIC_PRIVATE : zzhoz.SYMMETRIC : zzhoz.UNKNOWN_KEYMATERIAL;
        return zzhozVar == null ? zzhoz.UNRECOGNIZED : zzhozVar;
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zza = str;
    }

    public final /* synthetic */ void J(zzhzl zzhzlVar) {
        zzhzlVar.getClass();
        this.zzb = zzhzlVar;
    }

    public final /* synthetic */ void K(zzhoz zzhozVar) {
        this.zzc = zzhozVar.zza();
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
                                    synchronized (zzhpa.class) {
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
                return new zzhpa();
            }
            return new zzico(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
