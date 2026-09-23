package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzauu extends zziar implements zzicd {
    private static final zzauu zzj;
    private static volatile zzick zzk;
    private int zza;
    private int zzb;
    private boolean zze;
    private zzavl zzg;
    private zzavr zzh;
    private boolean zzi;
    private boolean zzc = true;
    private String zzd = "unknown_host";
    private boolean zzf = true;

    static {
        zzauu zzauuVar = new zzauu();
        zzj = zzauuVar;
        zziar.x(zzauu.class, zzauuVar);
    }

    public static zzaut H() {
        return (zzaut) zzj.u();
    }

    public final String D() {
        return this.zzd;
    }

    public final boolean E() {
        return this.zze;
    }

    public final zzavl F() {
        zzavl zzavlVar = this.zzg;
        if (zzavlVar == null) {
            return zzavl.I();
        }
        return zzavlVar;
    }

    public final void G() {
        if (this.zzh == null) {
            int i = zzavr.f4437c;
        }
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zza |= 4;
        this.zzd = str;
    }

    public final /* synthetic */ void J(boolean z) {
        this.zza |= 8;
        this.zze = z;
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
                                    synchronized (zzauu.class) {
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
                return new zzauu();
            }
            return new zzico(zzj, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဇ\u0007", new Object[]{"zza", "zzb", zzaux.f4430a, "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
