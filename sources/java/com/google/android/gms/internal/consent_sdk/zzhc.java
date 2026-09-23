package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhc extends zzqm implements zzrr {
    private static final zzhc zzb;
    private int zzd;
    private zzgy zze;
    private zzha zzg;
    private zzgw zzh;
    private zzgt zzi;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzqr zzj = zzry.i;

    static {
        zzhc zzhcVar = new zzhc();
        zzb = zzhcVar;
        zzqm.l(zzhc.class, zzhcVar);
    }

    public static zzgu m() {
        return (zzgu) zzb.g();
    }

    public static /* synthetic */ void n(zzhc zzhcVar, String str) {
        str.getClass();
        zzqr zzqrVar = zzhcVar.zzj;
        if (!zzqrVar.zzc()) {
            int size = zzqrVar.size();
            zzhcVar.zzj = zzqrVar.f(size + size);
        }
        zzhcVar.zzj.add(str);
    }

    public static /* synthetic */ void o(zzhc zzhcVar, String str) {
        zzhcVar.zzd |= 2;
        zzhcVar.zzf = str;
    }

    public static /* synthetic */ void p(zzhc zzhcVar, zzgt zzgtVar) {
        zzhcVar.zzi = zzgtVar;
        zzhcVar.zzd |= 16;
    }

    public static /* synthetic */ void q(zzhc zzhcVar, zzgw zzgwVar) {
        zzhcVar.zzh = zzgwVar;
        zzhcVar.zzd |= 8;
    }

    public static /* synthetic */ void r(zzhc zzhcVar, zzgy zzgyVar) {
        zzhcVar.zze = zzgyVar;
        zzhcVar.zzd |= 1;
    }

    public static /* synthetic */ void s(zzhc zzhcVar, zzha zzhaVar) {
        zzhcVar.zzg = zzhaVar;
        zzhcVar.zzd |= 4;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzqm
    public final Object f(int i) {
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
                    return new zzqj(zzb);
                }
                return new zzhc();
            }
            return new zzrz(zzb, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဉ\u0000\u0002ለ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006Ț", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
        }
        return (byte) 1;
    }
}
