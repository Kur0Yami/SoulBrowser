package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgck extends zziar implements zzicd {
    private static final zzgck zzd;
    private static volatile zzick zze;
    private int zza;
    private zzibd zzb = zzicn.i;
    private zzied zzc;

    static {
        zzgck zzgckVar = new zzgck();
        zzd = zzgckVar;
        zziar.x(zzgck.class, zzgckVar);
    }

    public static zzgcj D() {
        return (zzgcj) zzd.u();
    }

    public final void E(zzgci zzgciVar) {
        zzibd zzibdVar = this.zzb;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzb = zzibdVar.e(size + size);
        }
        this.zzb.add(zzgciVar);
    }

    public final /* synthetic */ void F(zzied zziedVar) {
        zziedVar.getClass();
        this.zzc = zziedVar;
        this.zza |= 1;
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
                                    synchronized (zzgck.class) {
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
                return new zzgck();
            }
            return new zzico(zzd, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zza", "zzb", zzgci.class, "zzc"});
        }
        return (byte) 1;
    }
}
