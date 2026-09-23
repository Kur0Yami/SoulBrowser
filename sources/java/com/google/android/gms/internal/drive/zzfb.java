package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.drive.zzkk;

/* loaded from: classes.dex */
public final class zzfb extends zzkk<zzfb, zza> implements zzls {
    private static volatile zzmb<zzfb> zzhk;
    private static final zzfb zzhp;
    private int zzhd;
    private byte zzhi = 2;
    private int zzhe = 1;
    private String zzhm = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzhn = -1;
    private long zzhg = -1;
    private int zzho = -1;

    /* loaded from: classes.dex */
    public static final class zza extends zzkk.zza<zzfb, zza> implements zzls {
    }

    static {
        zzfb zzfbVar = new zzfb();
        zzhp = zzfbVar;
        zzkk.k(zzfb.class, zzfbVar);
    }

    public static void m(zzfb zzfbVar) {
        zzfbVar.zzhd |= 1;
        zzfbVar.zzhe = 1;
    }

    public static void n(zzfb zzfbVar, long j) {
        zzfbVar.zzhd |= 4;
        zzfbVar.zzhn = j;
    }

    public static void o(zzfb zzfbVar, String str) {
        zzfbVar.getClass();
        str.getClass();
        zzfbVar.zzhd |= 2;
        zzfbVar.zzhm = str;
    }

    public static zza p() {
        return (zza) ((zzkk.zza) zzhp.i(5, null));
    }

    public static void q(zzfb zzfbVar, int i) {
        zzfbVar.zzhd |= 16;
        zzfbVar.zzho = i;
    }

    public static void r(zzfb zzfbVar, long j) {
        zzfbVar.zzhd |= 8;
        zzfbVar.zzhg = j;
    }

    /* JADX WARN: Type inference failed for: r3v12, types: [com.google.android.gms.internal.drive.zzmb<com.google.android.gms.internal.drive.zzfb>, java.lang.Object] */
    @Override // com.google.android.gms.internal.drive.zzkk
    public final Object i(int i, zzkk zzkkVar) {
        zzmb<zzfb> zzmbVar;
        int i2 = 1;
        switch (zzfc.f10164a[i - 1]) {
            case 1:
                return new zzfb();
            case 2:
                return new zzkk.zza(zzhp);
            case 3:
                return new zzme(zzhp, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001Ԅ\u0000\u0002Ԉ\u0001\u0003Ԑ\u0002\u0004Ԑ\u0003\u0005\u0004\u0004", new Object[]{"zzhd", "zzhe", "zzhm", "zzhn", "zzhg", "zzho"});
            case 4:
                return zzhp;
            case 5:
                zzmb<zzfb> zzmbVar2 = zzhk;
                if (zzmbVar2 == null) {
                    synchronized (zzfb.class) {
                        try {
                            zzmb<zzfb> zzmbVar3 = zzhk;
                            zzmbVar = zzmbVar3;
                            if (zzmbVar3 == null) {
                                ?? obj = new Object();
                                zzhk = obj;
                                zzmbVar = obj;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return zzmbVar;
                }
                return zzmbVar2;
            case 6:
                return Byte.valueOf(this.zzhi);
            case 7:
                if (zzkkVar == null) {
                    i2 = 0;
                }
                this.zzhi = (byte) i2;
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
