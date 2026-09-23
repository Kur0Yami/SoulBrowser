package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zziej extends zziar implements zzicd {
    private static final zziej zzd;
    private static volatile zzick zze;
    private int zza;
    private long zzb;
    private long zzc;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zziej] */
    static {
        ?? zziarVar = new zziar();
        zzd = zziarVar;
        zziar.x(zziej.class, zziarVar);
    }

    public static zziei D() {
        return (zziei) zzd.u();
    }

    public final /* synthetic */ void E(int i) {
        this.zza = i;
    }

    public final /* synthetic */ void F(long j) {
        this.zzb = j;
    }

    public final /* synthetic */ void G(long j) {
        this.zzc = j;
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
                                    synchronized (zziej.class) {
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
                return new zziar();
            }
            return new zzico(zzd, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{"zza", "zzb", "zzc"});
        }
        return (byte) 1;
    }
}
