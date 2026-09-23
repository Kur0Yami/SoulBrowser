package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;

/* loaded from: classes.dex */
public final class zzez extends zzkk<zzez, zza> implements zzls {
    private static final zzez zzhj;
    private static volatile zzmb<zzez> zzhk;
    private int zzhd;
    private byte zzhi = 2;
    private int zzhe = 1;
    private long zzhf = -1;
    private long zzhg = -1;
    private long zzhh = -1;

    /* loaded from: classes.dex */
    public static final class zza extends zzkk.zza<zzez, zza> implements zzls {
    }

    static {
        zzez zzezVar = new zzez();
        zzhj = zzezVar;
        zzkk.k(zzez.class, zzezVar);
    }

    public static void m(zzez zzezVar) {
        zzezVar.zzhd |= 1;
        zzezVar.zzhe = 1;
    }

    public static void n(zzez zzezVar, long j) {
        zzezVar.zzhd |= 2;
        zzezVar.zzhf = j;
    }

    public static zza o() {
        return (zza) ((zzkk.zza) zzhj.i(5, null));
    }

    public static void p(zzez zzezVar, long j) {
        zzezVar.zzhd |= 4;
        zzezVar.zzhg = j;
    }

    public static void q(zzez zzezVar, long j) {
        zzezVar.zzhd |= 8;
        zzezVar.zzhh = j;
    }

    /* JADX WARN: Type inference failed for: r3v12, types: [com.google.android.gms.internal.drive.zzmb<com.google.android.gms.internal.drive.zzez>, java.lang.Object] */
    @Override // com.google.android.gms.internal.drive.zzkk
    public final Object i(int i, zzkk zzkkVar) {
        zzmb<zzez> zzmbVar;
        int i2 = 1;
        switch (zzfa.f10163a[i - 1]) {
            case 1:
                return new zzez();
            case 2:
                return new zzkk.zza(zzhj);
            case 3:
                return new zzme(zzhj, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0004\u0001Ԅ\u0000\u0002Ԑ\u0001\u0003Ԑ\u0002\u0004Ԑ\u0003", new Object[]{"zzhd", "zzhe", "zzhf", "zzhg", "zzhh"});
            case 4:
                return zzhj;
            case 5:
                zzmb<zzez> zzmbVar2 = zzhk;
                if (zzmbVar2 == null) {
                    synchronized (zzez.class) {
                        try {
                            zzmb<zzez> zzmbVar3 = zzhk;
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
