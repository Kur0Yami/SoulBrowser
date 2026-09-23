package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzifh extends zziar implements zzicd {
    private static final zzifh zze;
    private static volatile zzick zzf;
    private int zza;
    private zzhzl zzb;
    private zzhzl zzc;
    private byte zzd = 2;

    static {
        zzifh zzifhVar = new zzifh();
        zze = zzifhVar;
        zziar.x(zzifh.class, zzifhVar);
    }

    public zzifh() {
        zzhzl zzhzlVar = zzhzl.f;
        this.zzb = zzhzlVar;
        this.zzc = zzhzlVar;
    }

    public static zzifg D() {
        return (zzifg) zze.u();
    }

    public final /* synthetic */ void E(zzhzl zzhzlVar) {
        this.zza |= 1;
        this.zzb = zzhzlVar;
    }

    public final /* synthetic */ void F(zzhzl zzhzlVar) {
        this.zza |= 2;
        this.zzc = zzhzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zziar
    public final Object y(zziaq zziaqVar, zziar zziarVar) {
        zzick zzickVar;
        byte b = 1;
        switch (zziaqVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzd);
            case 1:
                if (zziarVar == null) {
                    b = 0;
                }
                this.zzd = b;
                return null;
            case 2:
                return new zzico(zze, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001ᔊ\u0000\u0002ည\u0001", new Object[]{"zza", "zzb", "zzc"});
            case 3:
                return new zzifh();
            case 4:
                return new zzial(zze);
            case 5:
                return zze;
            case 6:
                zzick zzickVar2 = zzf;
                if (zzickVar2 == null) {
                    synchronized (zzifh.class) {
                        try {
                            zzickVar = zzf;
                            if (zzickVar == null) {
                                zzickVar = new zziam(zze);
                                zzf = zzickVar;
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
