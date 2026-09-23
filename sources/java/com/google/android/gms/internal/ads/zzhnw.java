package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhnw extends zziar implements zzicd {
    private static final zzhnw zzc;
    private static volatile zzick zzd;
    private int zza;
    private int zzb;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhnw, com.google.android.gms.internal.ads.zziar] */
    static {
        ?? zziarVar = new zziar();
        zzc = zziarVar;
        zziar.x(zzhnw.class, zziarVar);
    }

    public static zzhnw F(zzhzl zzhzlVar, zziab zziabVar) {
        return (zzhnw) zziar.r(zzc, zzhzlVar, zziabVar);
    }

    public static zzhnv G() {
        return (zzhnv) zzc.u();
    }

    public final int D() {
        return this.zza;
    }

    public final int E() {
        return this.zzb;
    }

    public final /* synthetic */ void H(int i) {
        this.zza = i;
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
                                    synchronized (zzhnw.class) {
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
                return new zziar();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzb", "zza"});
        }
        return (byte) 1;
    }
}
