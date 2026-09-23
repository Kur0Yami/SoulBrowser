package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzawr extends zziar implements zzicd {
    private static final zzawr zzl;
    private static volatile zzick zzm;
    private int zza;
    private long zzb;
    private int zzc;
    private boolean zzd;
    private long zzf;
    private boolean zzg;
    private long zzi;
    private long zzj;
    private long zzk;
    private zziaz zze = zzias.i;
    private zzibd zzh = zzicn.i;

    static {
        zzawr zzawrVar = new zzawr();
        zzl = zzawrVar;
        zziar.x(zzawr.class, zzawrVar);
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
                                    synchronized (zzawr.class) {
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
                return new zzawr();
            }
            return new zzico(zzl, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003\u0006ဇ\u0004\u0007\u001b\bဂ\u0005\tဂ\u0006\nဂ\u0007", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", zzawv.class, "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
