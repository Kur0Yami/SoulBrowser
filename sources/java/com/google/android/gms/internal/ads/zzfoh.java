package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfoh extends zziar implements zzicd {
    private static final zzfoh zzb;
    private static volatile zzick zzc;
    private boolean zza;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzfoh, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzb = zziarVar;
        zziar.x(zzfoh.class, zziarVar);
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
                                zzick zzickVar2 = zzc;
                                if (zzickVar2 == null) {
                                    synchronized (zzfoh.class) {
                                        try {
                                            zzickVar = zzc;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzb);
                                                zzc = zzickVar;
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
                        return zzb;
                    }
                    return new zzial(zzb);
                }
                return new zziar();
            }
            return new zzico(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007", new Object[]{"zza"});
        }
        return (byte) 1;
    }
}
