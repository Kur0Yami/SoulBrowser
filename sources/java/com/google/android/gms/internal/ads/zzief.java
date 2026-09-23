package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzief extends zziar implements zzicd {
    private static final zzief zzc;
    private static volatile zzick zzd;
    private zziaz zza;
    private zziaz zzb;

    static {
        zzief zziefVar = new zzief();
        zzc = zziefVar;
        zziar.x(zzief.class, zziefVar);
    }

    public zzief() {
        zzias zziasVar = zzias.i;
        this.zza = zziasVar;
        this.zzb = zziasVar;
    }

    public static zzief D(byte[] bArr, zziab zziabVar) {
        return (zzief) zziar.s(zzc, bArr, zziabVar);
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
                                    synchronized (zzief.class) {
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
                return new zzief();
            }
            return new zzico(zzc, "\u0004\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0000\u0001\u0016\u0003\u0016", new Object[]{"zza", "zzb"});
        }
        return (byte) 1;
    }
}
