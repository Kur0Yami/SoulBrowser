package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhoa extends zziar implements zzicd {
    private static final zzhoa zza;
    private static volatile zzick zzb;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zzhoa] */
    static {
        ?? zziarVar = new zziar();
        zza = zziarVar;
        zziar.x(zzhoa.class, zziarVar);
    }

    public static void D(zzhzl zzhzlVar, zziab zziabVar) {
    }

    public static zzhoa E() {
        return zza;
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
                                zzick zzickVar2 = zzb;
                                if (zzickVar2 == null) {
                                    synchronized (zzhoa.class) {
                                        try {
                                            zzickVar = zzb;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zza);
                                                zzb = zzickVar;
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
                        return zza;
                    }
                    return new zzial(zza);
                }
                return new zziar();
            }
            return new zzico(zza, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
