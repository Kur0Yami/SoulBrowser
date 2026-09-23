package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zziel extends zziar implements zzicd {
    private static final zziel zzb;
    private static volatile zzick zzc;
    private zzibd zza = zzicn.i;

    static {
        zziel zzielVar = new zziel();
        zzb = zzielVar;
        zziar.x(zziel.class, zzielVar);
    }

    public static zziek D() {
        return (zziek) zzb.u();
    }

    public final void E(zziej zziejVar) {
        zzibd zzibdVar = this.zza;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zza = zzibdVar.e(size + size);
        }
        this.zza.add(zziejVar);
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
                                    synchronized (zziel.class) {
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
                return new zziel();
            }
            return new zzico(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zziej.class});
        }
        return (byte) 1;
    }
}
