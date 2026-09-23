package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzawo extends zziar implements zzicd {
    private static final zzawo zzj;
    private static volatile zzick zzk;
    private int zza;
    private long zzb = -1;
    private long zzc = -1;
    private long zzd = -1;
    private long zze = -1;
    private long zzf = -1;
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = -1;

    static {
        zzawo zzawoVar = new zzawo();
        zzj = zzawoVar;
        zziar.x(zzawo.class, zzawoVar);
    }

    public static zzawn D() {
        return (zzawn) zzj.u();
    }

    public final /* synthetic */ void E(long j) {
        this.zza |= 1;
        this.zzb = j;
    }

    public final /* synthetic */ void F(long j) {
        this.zza |= 4;
        this.zzd = j;
    }

    public final /* synthetic */ void G(long j) {
        this.zza |= 8;
        this.zze = j;
    }

    public final /* synthetic */ void H(long j) {
        this.zza |= 16;
        this.zzf = j;
    }

    public final /* synthetic */ void I(long j) {
        this.zza |= 32;
        this.zzg = j;
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
                                zzick zzickVar2 = zzk;
                                if (zzickVar2 == null) {
                                    synchronized (zzawo.class) {
                                        try {
                                            zzickVar = zzk;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzj);
                                                zzk = zzickVar;
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
                        return zzj;
                    }
                    return new zzial(zzj);
                }
                return new zzawo();
            }
            return new zzico(zzj, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
