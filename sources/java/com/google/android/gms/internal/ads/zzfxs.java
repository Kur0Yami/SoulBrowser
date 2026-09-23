package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfxs extends zziar implements zzicd {
    private static final zzfxs zzn;
    private static volatile zzick zzo;
    private int zza;
    private String zzb = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private long zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private long zzj;
    private zzibc zzk;
    private zzibc zzl;
    private zzibc zzm;

    static {
        zzfxs zzfxsVar = new zzfxs();
        zzn = zzfxsVar;
        zziar.x(zzfxs.class, zzfxsVar);
    }

    public zzfxs() {
        zzibq zzibqVar = zzibq.i;
        this.zzk = zzibqVar;
        this.zzl = zzibqVar;
        this.zzm = zzibqVar;
    }

    public static zzfxs U() {
        return zzn;
    }

    public final void D(long j) {
        zzibc zzibcVar = this.zzl;
        if (!zzibcVar.zza()) {
            int size = zzibcVar.size();
            this.zzl = zzibcVar.e(size + size);
        }
        this.zzl.h(j);
    }

    public final void E(long j) {
        zzibc zzibcVar = this.zzm;
        if (!zzibcVar.zza()) {
            int size = zzibcVar.size();
            this.zzm = zzibcVar.e(size + size);
        }
        this.zzm.h(j);
    }

    public final void F() {
        this.zzm = zzibq.i;
    }

    public final String G() {
        return this.zzb;
    }

    public final long H() {
        return this.zzc;
    }

    public final int I() {
        return this.zzd;
    }

    public final boolean J() {
        return this.zze;
    }

    public final boolean K() {
        return this.zzf;
    }

    public final long L() {
        return this.zzg;
    }

    public final long M() {
        return this.zzh;
    }

    public final long N() {
        return this.zzi;
    }

    public final boolean O() {
        return (this.zza & 64) != 0;
    }

    public final zzibc P() {
        return this.zzk;
    }

    public final int Q() {
        return this.zzk.size();
    }

    public final int R() {
        return this.zzl.size();
    }

    public final zzibc S() {
        return this.zzm;
    }

    public final int T() {
        return this.zzm.size();
    }

    public final /* synthetic */ void V(String str) {
        str.getClass();
        this.zzb = str;
    }

    public final /* synthetic */ void W(long j) {
        this.zza |= 1;
        this.zzc = j;
    }

    public final /* synthetic */ void X(int i) {
        this.zza |= 2;
        this.zzd = i;
    }

    public final /* synthetic */ void Y() {
        this.zza |= 4;
        this.zze = true;
    }

    public final /* synthetic */ void Z(boolean z) {
        this.zza |= 8;
        this.zzf = true;
    }

    public final /* synthetic */ void a0(long j) {
        this.zza |= 16;
        this.zzg = j;
    }

    public final /* synthetic */ void b0(long j) {
        this.zzh = j;
    }

    public final /* synthetic */ void c0(long j) {
        this.zza |= 32;
        this.zzi = j;
    }

    public final /* synthetic */ void d0(long j) {
        this.zza |= 64;
        this.zzj = j;
    }

    public final void e0(long j) {
        zzibc zzibcVar = this.zzk;
        if (!zzibcVar.zza()) {
            int size = zzibcVar.size();
            this.zzk = zzibcVar.e(size + size);
        }
        this.zzk.h(j);
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
                                    synchronized (zzfxs.class) {
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
                return new zzfxs();
            }
            return new zzico(zzn, "\u0004\f\u0000\u0001\u0001\f\f\u0000\u0003\u0000\u0001Ȉ\u0002ဂ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဂ\u0004\u0007\u0002\bဂ\u0005\tဂ\u0006\n%\u000b%\f%", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        return (byte) 1;
    }
}
