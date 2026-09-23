package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzgad extends zziar implements zzicd {
    private static volatile zzick zzA;
    private static final zzgad zzz;
    private int zza;
    private int zzb;
    private boolean zze;
    private zzgav zzf;
    private boolean zzg;
    private zzgax zzj;
    private boolean zzv;
    private boolean zzw;
    private boolean zzy;
    private boolean zzc = true;
    private String zzd = "unknown_host";
    private long zzh = 100;
    private long zzi = 2000;
    private long zzk = 200;
    private long zzl = 200;
    private long zzm = 20000;
    private String zzn = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzo = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzp = 500;
    private long zzu = 3000;
    private boolean zzx = true;

    static {
        zzgad zzgadVar = new zzgad();
        zzz = zzgadVar;
        zziar.x(zzgad.class, zzgadVar);
    }

    public static zzgac b0() {
        return (zzgac) zzz.u();
    }

    public final /* synthetic */ void D(zzgax zzgaxVar) {
        this.zzj = zzgaxVar;
        this.zza |= 256;
    }

    public final /* synthetic */ void E(long j) {
        this.zza |= 32768;
        this.zzu = j;
    }

    public final /* synthetic */ void F(boolean z) {
        this.zza |= 65536;
        this.zzv = z;
    }

    public final int G() {
        int i;
        int i2 = this.zzb;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                i = i2 != 2 ? i2 != 3 ? 0 : 4 : 3;
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final /* synthetic */ void H(int i) {
        this.zzb = i - 1;
        this.zza |= 1;
    }

    public final boolean I() {
        return this.zzc;
    }

    public final String J() {
        return this.zzd;
    }

    public final boolean K() {
        return this.zze;
    }

    public final zzgav L() {
        zzgav zzgavVar = this.zzf;
        if (zzgavVar == null) {
            return zzgav.I();
        }
        return zzgavVar;
    }

    public final boolean M() {
        return this.zzg;
    }

    public final long N() {
        return this.zzh;
    }

    public final long O() {
        return this.zzi;
    }

    public final zzgax P() {
        zzgax zzgaxVar = this.zzj;
        if (zzgaxVar == null) {
            return zzgax.L();
        }
        return zzgaxVar;
    }

    public final long Q() {
        return this.zzk;
    }

    public final long R() {
        return this.zzl;
    }

    public final long S() {
        return this.zzm;
    }

    public final String T() {
        return this.zzn;
    }

    public final String U() {
        return this.zzo;
    }

    public final long V() {
        return this.zzp;
    }

    public final long W() {
        return this.zzu;
    }

    public final boolean X() {
        return this.zzv;
    }

    public final boolean Y() {
        return this.zzw;
    }

    public final boolean Z() {
        return this.zzx;
    }

    public final boolean a0() {
        return this.zzy;
    }

    public final /* synthetic */ void c0(boolean z) {
        this.zza |= 2;
        this.zzc = z;
    }

    public final /* synthetic */ void d0(String str) {
        str.getClass();
        this.zza |= 4;
        this.zzd = str;
    }

    public final /* synthetic */ void e0(zzgav zzgavVar) {
        this.zzf = zzgavVar;
        this.zza |= 16;
    }

    public final /* synthetic */ void f0(long j) {
        this.zza |= 64;
        this.zzh = j;
    }

    public final /* synthetic */ void g0(long j) {
        this.zza |= Uuid.SIZE_BITS;
        this.zzi = j;
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
                                zzick zzickVar2 = zzA;
                                if (zzickVar2 == null) {
                                    synchronized (zzgad.class) {
                                        try {
                                            zzickVar = zzA;
                                            if (zzickVar == null) {
                                                zzickVar = new zziam(zzz);
                                                zzA = zzickVar;
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
                        return zzz;
                    }
                    return new zzial(zzz);
                }
                return new zzgad();
            }
            return new zzico(zzz, "\u0004\u0014\u0000\u0001\u0001\u0015\u0014\u0000\u0000\u0000\u0001᠌\u0000\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဉ\u0004\u0006ဇ\u0005\u0007ဂ\u0007\bဉ\b\tဇ\u0001\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဈ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဇ\u0010\u0012ဂ\u0006\u0013ဇ\u0011\u0014ဇ\u0012\u0015ဇ\u0013", new Object[]{"zza", "zzb", zzgae.f7769a, "zzd", "zze", "zzf", "zzg", "zzi", "zzj", "zzc", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzh", "zzw", "zzx", "zzy"});
        }
        return (byte) 1;
    }
}
