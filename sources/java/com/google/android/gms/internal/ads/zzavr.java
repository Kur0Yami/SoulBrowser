package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzavr extends zziar implements zzicd {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4437c = 0;
    private static final zzavr zzg;
    private static volatile zzick zzh;
    private int zza;
    private boolean zzc;
    private boolean zzd;
    private long zzb = 100;
    private long zze = 300;
    private long zzf = 1000;

    static {
        zzavr zzavrVar = new zzavr();
        zzg = zzavrVar;
        zziar.x(zzavr.class, zzavrVar);
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
                                zzick zzickVar2 = zzh;
                                if (zzickVar2 == null) {
                                    synchronized (zzavr.class) {
                                        try {
                                            zzickVar = zzh;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzg);
                                                zzh = zzickVar;
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
                        return zzg;
                    }
                    return new zzial(zzg);
                }
                return new zzavr();
            }
            return new zzico(zzg, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
