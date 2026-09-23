package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzauw extends zziar implements zzicd {
    private static final zzauw zzn;
    private static volatile zzick zzo;
    private int zza;
    private long zzc;
    private int zzg;
    private long zzi;
    private long zzl;
    private long zzm;
    private zzibd zzb = zzicn.i;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzk = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzauw zzauwVar = new zzauw();
        zzn = zzauwVar;
        zziar.x(zzauw.class, zzauwVar);
    }

    public static zzauv D() {
        return (zzauv) zzn.u();
    }

    public final void E(zzavo zzavoVar) {
        zzibd zzibdVar = this.zzb;
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            this.zzb = zzibdVar.e(size + size);
        }
        this.zzb.add(zzavoVar);
    }

    public final void F() {
        this.zzb = zzicn.i;
    }

    public final /* synthetic */ void G(long j) {
        this.zza |= 1;
        this.zzc = j;
    }

    public final /* synthetic */ void H(String str) {
        String str2 = Build.MODEL;
        str2.getClass();
        this.zza |= 2;
        this.zzd = str2;
    }

    public final /* synthetic */ void I(String str) {
        str.getClass();
        this.zza |= 4;
        this.zze = str;
    }

    public final /* synthetic */ void J(String str) {
        str.getClass();
        this.zza |= 8;
        this.zzf = str;
    }

    public final /* synthetic */ void K(String str) {
        str.getClass();
        this.zza |= 32;
        this.zzh = str;
    }

    public final /* synthetic */ void L(long j) {
        this.zza |= 64;
        this.zzi = j;
    }

    public final /* synthetic */ void M(String str) {
        str.getClass();
        this.zza |= Uuid.SIZE_BITS;
        this.zzj = str;
    }

    public final /* synthetic */ void N(String str) {
        str.getClass();
        this.zza |= 256;
        this.zzk = str;
    }

    public final /* synthetic */ void O(long j) {
        this.zza |= 512;
        this.zzl = j;
    }

    public final /* synthetic */ void P(long j) {
        this.zza |= 1024;
        this.zzm = j;
    }

    public final /* synthetic */ void Q(int i) {
        this.zzg = i - 1;
        this.zza |= 16;
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
                                zzick zzickVar2 = zzo;
                                if (zzickVar2 == null) {
                                    synchronized (zzauw.class) {
                                        try {
                                            zzickVar = zzo;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzn);
                                                zzo = zzickVar;
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
                        return zzn;
                    }
                    return new zzial(zzn);
                }
                return new zzauw();
            }
            return new zzico(zzn, "\u0004\f\u0000\u0001\b?\f\u0000\u0001\u0000\b\u001b\u0015ဂ\u0000\u0016ဈ\u0001\u0017ဈ\u0002\u0018ဈ\u0003\u0019᠌\u0004(ဈ\u0005)ဂ\u0006<ဈ\u0007=ဈ\b>ဂ\t?ဂ\n", new Object[]{"zza", "zzb", zzavo.class, "zzc", "zzd", "zze", "zzf", "zzg", zzavm.f4435a, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        return (byte) 1;
    }
}
