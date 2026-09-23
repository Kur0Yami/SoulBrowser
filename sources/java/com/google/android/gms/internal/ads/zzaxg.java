package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaxg extends zziar implements zzicd {
    private static final zzaxg zzf;
    private static volatile zzick zzg;
    private int zza;
    private zzibd zzb = zzicn.i;
    private zzhzl zzc = zzhzl.f;
    private int zzd = 1;
    private int zze = 1;

    static {
        zzaxg zzaxgVar = new zzaxg();
        zzf = zzaxgVar;
        zziar.x(zzaxg.class, zzaxgVar);
    }

    public static zzaxf D() {
        return (zzaxf) zzf.u();
    }

    public final void E(zzhzl zzhzlVar) {
        zzibd zzibdVar = this.zzb;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzb = zzibdVar.e(size + size);
        }
        this.zzb.add(zzhzlVar);
    }

    public final /* synthetic */ void F(zzhzl zzhzlVar) {
        this.zza |= 1;
        this.zzc = zzhzlVar;
    }

    public final /* synthetic */ void G(int i) {
        this.zzd = 4;
        this.zza |= 2;
    }

    public final /* synthetic */ void H(int i) {
        this.zze = i - 1;
        this.zza |= 4;
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
                                    synchronized (zzaxg.class) {
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
                return new zzaxg();
            }
            return new zzico(zzf, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zza", "zzb", "zzc", "zzd", zzaxa.f4447a, "zze", zzaww.f4444a});
        }
        return (byte) 1;
    }
}
