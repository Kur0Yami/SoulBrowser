package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzavv extends zziar implements zzicd {
    private static final zzavv zzc;
    private static volatile zzick zzd;
    private int zza;
    private int zzb;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzavv, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzc = zziarVar;
        zziar.x(zzavv.class, zziarVar);
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
                                    synchronized (zzavv.class) {
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
                return new zziar();
            }
            return new zzico(zzc, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zza", "zzb", zzavy.f4441a});
        }
        return (byte) 1;
    }
}
