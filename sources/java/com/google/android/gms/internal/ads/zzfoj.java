package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfoj extends zziar implements zzicd {
    private static final zzfoj zzc;
    private static volatile zzick zzd;
    private zzibd zza = zzicn.i;
    private long zzb;

    static {
        zzfoj zzfojVar = new zzfoj();
        zzc = zzfojVar;
        zziar.x(zzfoj.class, zzfojVar);
    }

    public static zzfoi D() {
        return (zzfoi) zzc.u();
    }

    public final void E(zzfnd zzfndVar) {
        zzibd zzibdVar = this.zza;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zza = zzibdVar.e(size + size);
        }
        this.zza.add(zzfndVar);
    }

    public final /* synthetic */ void F(long j) {
        this.zzb = j;
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
                                    synchronized (zzfoj.class) {
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
                return new zzfoj();
            }
            return new zzico(zzc, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"zza", zzfnd.class, "zzb"});
        }
        return (byte) 1;
    }
}
