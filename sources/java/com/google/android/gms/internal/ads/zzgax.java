package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgax extends zziar implements zzicd {
    private static final zzgax zzl;
    private static volatile zzick zzm;
    private int zza;
    private boolean zzc;
    private boolean zzd;
    private long zzh;
    private boolean zzi;
    private boolean zzb = true;
    private long zze = 600000;
    private long zzf = 3600000;
    private String zzg = "https://pagead2.googlesyndication.com/mads/asp";
    private long zzj = 5;
    private long zzk = 60000;

    static {
        zzgax zzgaxVar = new zzgax();
        zzl = zzgaxVar;
        zziar.x(zzgax.class, zzgaxVar);
    }

    public static zzgaw K() {
        return (zzgaw) zzl.u();
    }

    public static zzgax L() {
        return zzl;
    }

    public final boolean D() {
        return this.zzd;
    }

    public final long E() {
        return this.zzf;
    }

    public final String F() {
        return this.zzg;
    }

    public final long G() {
        return this.zzh;
    }

    public final boolean H() {
        return this.zzi;
    }

    public final long I() {
        return this.zzj;
    }

    public final long J() {
        return this.zzk;
    }

    public final /* synthetic */ void M(boolean z) {
        this.zza |= 4;
        this.zzd = z;
    }

    public final /* synthetic */ void N(long j) {
        this.zza |= 64;
        this.zzh = j;
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
                                zzick zzickVar2 = zzm;
                                if (zzickVar2 == null) {
                                    synchronized (zzgax.class) {
                                        try {
                                            zzickVar = zzm;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzl);
                                                zzm = zzickVar;
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
                        return zzl;
                    }
                    return new zzial(zzl);
                }
                return new zzgax();
            }
            return new zzico(zzl, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဈ\u0005\u0007ဂ\u0006\bဇ\u0007\tဂ\b\nဂ\t", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
