package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzawc extends zziar implements zzicd {
    private static final zzawc zzc;
    private static volatile zzick zzd;
    private int zza;
    private long zzb = -1;

    static {
        zzawc zzawcVar = new zzawc();
        zzc = zzawcVar;
        zziar.x(zzawc.class, zzawcVar);
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
                                zzick zzickVar2 = zzd;
                                if (zzickVar2 == null) {
                                    synchronized (zzawc.class) {
                                        try {
                                            zzickVar = zzd;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzc);
                                                zzd = zzickVar;
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
                        return zzc;
                    }
                    return new zzial(zzc);
                }
                return new zzawc();
            }
            return new zzico(zzc, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဂ\u0000", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
