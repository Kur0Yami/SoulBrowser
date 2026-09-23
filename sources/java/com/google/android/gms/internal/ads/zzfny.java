package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfny extends zziar implements zzicd {
    private static final zzfny zzb;
    private static volatile zzick zzc;
    private zzibd zza = zzicn.i;

    static {
        zzfny zzfnyVar = new zzfny();
        zzb = zzfnyVar;
        zziar.x(zzfny.class, zzfnyVar);
    }

    public static zzfnv E() {
        return (zzfnv) zzb.u();
    }

    public final int D() {
        return this.zza.size();
    }

    public final void F(zzfnx zzfnxVar) {
        zzibd zzibdVar = this.zza;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zza = zzibdVar.e(size + size);
        }
        this.zza.add(zzfnxVar);
    }

    public final void G() {
        this.zza = zzicn.i;
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
                                    synchronized (zzfny.class) {
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
                return new zzfny();
            }
            return new zzico(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zza", zzfnx.class});
        }
        return (byte) 1;
    }
}
