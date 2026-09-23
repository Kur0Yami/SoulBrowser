package com.google.android.gms.internal.play_billing;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public final class zzjs extends zzfv implements zzhd {
    private static final zzjs zzb;
    private int zzd;
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private int zzs;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzo = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzp = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzq = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzr = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzjs zzjsVar = new zzjs();
        zzb = zzjsVar;
        zzfv.e(zzjs.class, zzjsVar);
    }

    public static zzjq A() {
        return (zzjq) zzb.j();
    }

    public static /* synthetic */ void B(zzjs zzjsVar, int i) {
        zzjsVar.zzd |= Uuid.SIZE_BITS;
        zzjsVar.zzl = i;
    }

    public static /* synthetic */ void C(zzjs zzjsVar, int i) {
        zzjsVar.zzd |= 256;
        zzjsVar.zzm = i;
    }

    public static /* synthetic */ void D(zzjs zzjsVar, int i) {
        zzjsVar.zzd |= 8;
        zzjsVar.zzh = i;
    }

    public static /* synthetic */ void E(zzjs zzjsVar, long j) {
        zzjsVar.zzd |= 16;
        zzjsVar.zzi = j;
    }

    public static /* synthetic */ void F(zzjs zzjsVar, long j) {
        zzjsVar.zzd |= 32;
        zzjsVar.zzj = j;
    }

    public static /* synthetic */ void q(zzjs zzjsVar) {
        zzjsVar.zzd |= 512;
        zzjsVar.zzn = 837283956L;
    }

    public static /* synthetic */ void r(zzjs zzjsVar, String str) {
        str.getClass();
        zzjsVar.zzd |= 4;
        zzjsVar.zzg = str;
    }

    public static /* synthetic */ void s(zzjs zzjsVar) {
        String str = Build.BRAND;
        str.getClass();
        zzjsVar.zzd |= 1024;
        zzjsVar.zzo = str;
    }

    public static /* synthetic */ void t(zzjs zzjsVar) {
        String str = Build.FINGERPRINT;
        str.getClass();
        zzjsVar.zzd |= 8192;
        zzjsVar.zzr = str;
    }

    public static /* synthetic */ void u(zzjs zzjsVar) {
        String str = Build.MANUFACTURER;
        str.getClass();
        zzjsVar.zzd |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        zzjsVar.zzq = str;
    }

    public static /* synthetic */ void v(zzjs zzjsVar) {
        String str = Build.MODEL;
        str.getClass();
        zzjsVar.zzd |= 2048;
        zzjsVar.zzp = str;
    }

    public static /* synthetic */ void w(zzjs zzjsVar, int i) {
        zzjsVar.zzd |= 16384;
        zzjsVar.zzs = i;
    }

    public static /* synthetic */ void x(zzjs zzjsVar) {
        zzjsVar.zzd |= 64;
        zzjsVar.zzk = false;
    }

    public static /* synthetic */ void y(zzjs zzjsVar) {
        zzjsVar.zzd |= 1;
        zzjsVar.zze = "8.2.0";
    }

    public static /* synthetic */ void z(zzjs zzjsVar, String str) {
        zzjsVar.zzd |= 2;
        zzjsVar.zzf = str;
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
                return new zzjs();
            }
            return new zzhl(zzb, "\u0004\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t\u000bဈ\n\fဈ\u000b\rဈ\f\u000eဈ\r\u000fင\u000e", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        return (byte) 1;
    }
}
