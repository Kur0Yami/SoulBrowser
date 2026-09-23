package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzifp extends zziar implements zzicd {
    private static final zzifp zzi;
    private static volatile zzick zzj;
    private int zza;
    private zzifo zzb;
    private zzhzl zzd;
    private zzhzl zze;
    private int zzf;
    private zzhzl zzg;
    private byte zzh = 2;
    private zzibd zzc = zzicn.i;

    static {
        zzifp zzifpVar = new zzifp();
        zzi = zzifpVar;
        zziar.x(zzifp.class, zzifpVar);
    }

    public zzifp() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzd = zzhzlVar;
        this.zze = zzhzlVar;
        this.zzg = zzhzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zziar
    public final Object y(zziaq zziaqVar, zziar zziarVar) {
        zzick zzickVar;
        byte b = 1;
        switch (zziaqVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzh);
            case 1:
                if (zziarVar == null) {
                    b = 0;
                }
                this.zzh = b;
                return null;
            case 2:
                return new zzico(zzi, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zza", "zzb", "zzc", zzifh.class, "zzd", "zze", "zzf", "zzg"});
            case 3:
                return new zzifp();
            case 4:
                return new zzial(zzi);
            case 5:
                return zzi;
            case 6:
                zzick zzickVar2 = zzj;
                if (zzickVar2 == null) {
                    synchronized (zzifp.class) {
                        try {
                            zzickVar = zzj;
                            if (zzickVar == null) {
                                zzickVar = new zziam(zzi);
                                zzj = zzickVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzickVar;
                }
                return zzickVar2;
            default:
                throw null;
        }
    }
}
