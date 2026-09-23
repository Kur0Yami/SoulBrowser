package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;

/* loaded from: classes.dex */
public final class zzfd extends zzkk<zzfd, zza> implements zzls {
    private static volatile zzmb<zzfd> zzhk;
    private static final zzfd zzhq;
    private int zzhd;
    private byte zzhi = 2;
    private long zzhn = -1;
    private long zzhg = -1;

    /* loaded from: classes.dex */
    public static final class zza extends zzkk.zza<zzfd, zza> implements zzls {
    }

    static {
        zzfd zzfdVar = new zzfd();
        zzhq = zzfdVar;
        zzkk.k(zzfd.class, zzfdVar);
    }

    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.Object, com.google.android.gms.internal.drive.zzmb<com.google.android.gms.internal.drive.zzfd>] */
    @Override // com.google.android.gms.internal.drive.zzkk
    public final Object i(int i, zzkk zzkkVar) {
        zzmb<zzfd> zzmbVar;
        int i2 = 1;
        switch (zzfe.f10165a[i - 1]) {
            case 1:
                return new zzfd();
            case 2:
                return new zzkk.zza(zzhq);
            case 3:
                return new zzme(zzhq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001Ԑ\u0000\u0002Ԑ\u0001", new Object[]{"zzhd", "zzhn", "zzhg"});
            case 4:
                return zzhq;
            case 5:
                zzmb<zzfd> zzmbVar2 = zzhk;
                if (zzmbVar2 == null) {
                    synchronized (zzfd.class) {
                        try {
                            zzmb<zzfd> zzmbVar3 = zzhk;
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
