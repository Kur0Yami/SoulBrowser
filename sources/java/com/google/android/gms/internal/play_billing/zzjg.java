package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public final class zzjg extends zzfv implements zzhd {
    private static final zzjg zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzjg zzjgVar = new zzjg();
        zzb = zzjgVar;
        zzfv.e(zzjg.class, zzjgVar);
    }

    public static zzjc q() {
        return (zzjc) zzb.j();
    }

    public static /* synthetic */ void r(zzjg zzjgVar, String str) {
        zzjgVar.zzd |= 8;
        zzjgVar.zzh = str;
    }

    public static /* synthetic */ void s(zzjg zzjgVar, String str) {
        str.getClass();
        zzjgVar.zzd |= 2;
        zzjgVar.zzf = str;
    }

    public static /* synthetic */ void t(zzjg zzjgVar, int i) {
        zzjgVar.zzd |= 16;
        zzjgVar.zzi = i;
    }

    public static void u(zzjg zzjgVar, zzje zzjeVar) {
        zzjgVar.zzg = zzjeVar.f11549c;
        zzjgVar.zzd |= 4;
    }

    public static /* synthetic */ void v(zzjg zzjgVar, int i) {
        zzjgVar.zzd |= 1;
        zzjgVar.zze = i;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfv
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzb;
                        }
                        throw null;
                    }
                    return new zzfr(zzb);
                }
                return new zzjg();
            }
            return new zzhl(zzb, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", zzjd.f11548a, "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
