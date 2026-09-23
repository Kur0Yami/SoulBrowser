package com.google.android.gms.internal.cast;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzus extends zzyd implements zzzj {
    private static final zzus zzm;
    private int zzb;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private boolean zzj;
    private int zzk;
    private boolean zzl;

    static {
        zzus zzusVar = new zzus();
        zzm = zzusVar;
        zzyd.h(zzus.class, zzusVar);
    }

    public static zzur n() {
        return (zzur) zzm.d();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzm;
                        }
                        throw null;
                    }
                    return new zzya(zzm);
                }
                return new zzus();
            }
            return new zzzr(zzm, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\b᠌\u0007\tဇ\b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzln.f9765a, "zzl"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void p(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void q(String str) {
        str.getClass();
        this.zzb |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void r(String str) {
        str.getClass();
        this.zzb |= 8;
        this.zzg = str;
    }

    public final /* synthetic */ void s(String str) {
        str.getClass();
        this.zzb |= 16;
        this.zzh = str;
    }

    public final /* synthetic */ void t(String str) {
        str.getClass();
        this.zzb |= 32;
        this.zzi = str;
    }

    public final /* synthetic */ void u(int i) {
        this.zzk = i - 1;
        this.zzb |= Uuid.SIZE_BITS;
    }
}
