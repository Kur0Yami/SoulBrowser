package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;

/* loaded from: classes.dex */
public final class zzhpj extends zziar implements zzicd {
    private static final zzhpj zzc;
    private static volatile zzick zzd;
    private int zza;
    private zzibd zzb = zzicn.i;

    static {
        zzhpj zzhpjVar = new zzhpj();
        zzc = zzhpjVar;
        zziar.x(zzhpj.class, zzhpjVar);
    }

    public static zzhpj H(byte[] bArr, zziab zziabVar) {
        zziar A = zziar.A(zzc, bArr, bArr.length, zziabVar);
        zziar.C(A);
        return (zzhpj) A;
    }

    public static zzhpj I(ByteArrayInputStream byteArrayInputStream, zziab zziabVar) {
        zziar q = zziar.q(zzc, new zzhzo(byteArrayInputStream), zziabVar);
        zziar.C(q);
        return (zzhpj) q;
    }

    public static zzhpg J() {
        return (zzhpg) zzc.u();
    }

    public final int D() {
        return this.zza;
    }

    public final zzibd E() {
        return this.zzb;
    }

    public final int F() {
        return this.zzb.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzhpi G(int i) {
        return (zzhpi) this.zzb.get(i);
    }

    public final /* synthetic */ void K(int i) {
        this.zza = i;
    }

    public final void L(zzhpi zzhpiVar) {
        zzibd zzibdVar = this.zzb;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzb = zzibdVar.e(size + size);
        }
        this.zzb.add(zzhpiVar);
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
                                    synchronized (zzhpj.class) {
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
                return new zzhpj();
            }
            return new zzico(zzc, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zza", "zzb", zzhpi.class});
        }
        return (byte) 1;
    }
}
