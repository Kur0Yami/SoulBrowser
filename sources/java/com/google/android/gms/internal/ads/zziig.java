package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zziig extends zziar implements zzicd {
    private static final zziig zzf;
    private static volatile zzick zzg;
    private int zza;
    private int zzb;
    private int zzc;
    private int zzd;
    private zzibd zze = zzicn.i;

    static {
        zziig zziigVar = new zziig();
        zzf = zziigVar;
        zziar.x(zziig.class, zziigVar);
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
                                    synchronized (zziig.class) {
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
                return new zziig();
            }
            return new zzico(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001a", new Object[]{"zza", "zzb", "zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
