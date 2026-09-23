package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzigk extends zziar implements zzicd {
    private static final zzigk zzl;
    private static volatile zzick zzm;
    private int zza;
    private int zzb;
    private zzifl zzd;
    private zzifp zze;
    private int zzf;
    private int zzi;
    private byte zzk = 2;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zziaz zzg = zzias.i;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzibd zzj = zzicn.i;

    static {
        zzigk zzigkVar = new zzigk();
        zzl = zzigkVar;
        zziar.x(zzigk.class, zzigkVar);
    }

    public static zzigj F() {
        return (zzigj) zzl.u();
    }

    public final String D() {
        return this.zzc;
    }

    public final int E() {
        return this.zzj.size();
    }

    public final /* synthetic */ void G(int i) {
        this.zza |= 1;
        this.zzb = i;
    }

    public final /* synthetic */ void H(String str) {
        str.getClass();
        this.zza |= 2;
        this.zzc = str;
    }

    public final /* synthetic */ void I(zzifl zziflVar) {
        this.zzd = zziflVar;
        this.zza |= 4;
    }

    public final void J(String str) {
        str.getClass();
        zzibd zzibdVar = this.zzj;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzj = zzibdVar.e(size + size);
        }
        this.zzj.add(str);
    }

    public final /* synthetic */ void K(int i) {
        this.zzi = i - 1;
        this.zza |= 64;
    }

    @Override // com.google.android.gms.internal.ads.zziar
    public final Object y(zziaq zziaqVar, zziar zziarVar) {
        zzick zzickVar;
        byte b = 1;
        switch (zziaqVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzk);
            case 1:
                if (zziarVar == null) {
                    b = 0;
                }
                this.zzk = b;
                return null;
            case 2:
                return new zzico(zzl, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzigh.f8978a, "zzj"});
            case 3:
                return new zzigk();
            case 4:
                return new zzial(zzl);
            case 5:
                return zzl;
            case 6:
                zzick zzickVar2 = zzm;
                if (zzickVar2 == null) {
                    synchronized (zzigk.class) {
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
            default:
                throw null;
        }
    }
}
