package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.io.FileInputStream;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzfxw extends zziar implements zzicd {
    private static final zzfxw zzb;
    private static volatile zzick zzc;
    private zzibw zza = zzibw.f;

    static {
        zzfxw zzfxwVar = new zzfxw();
        zzb = zzfxwVar;
        zziar.x(zzfxw.class, zzfxwVar);
    }

    public static zzfxw F(FileInputStream fileInputStream) {
        zzfxw zzfxwVar = zzb;
        zzhzo zzhzoVar = new zzhzo(fileInputStream);
        zziab zziabVar = zziab.b;
        int i = zzhyy.f8889a;
        zziar q = zziar.q(zzfxwVar, zzhzoVar, zziab.f8905c);
        zziar.C(q);
        return (zzfxw) q;
    }

    public static zzfxw G() {
        return zzb;
    }

    public final int D() {
        return this.zza.size();
    }

    public final Map E() {
        return DesugarCollections.unmodifiableMap(this.zza);
    }

    public final zzibw H() {
        zzibw zzibwVar = this.zza;
        if (!zzibwVar.f8929c) {
            this.zza = zzibwVar.a();
        }
        return this.zza;
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
                                zzick zzickVar2 = zzc;
                                if (zzickVar2 == null) {
                                    synchronized (zzfxw.class) {
                                        try {
                                            zzickVar = zzc;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzb);
                                                zzc = zzickVar;
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
                        return zzb;
                    }
                    return new zzial(zzb);
                }
                return new zzfxw();
            }
            return new zzico(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"zza", zzfxv.f7712a});
        }
        return (byte) 1;
    }
}
