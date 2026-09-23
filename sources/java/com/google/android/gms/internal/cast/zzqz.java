package com.google.android.gms.internal.cast;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzqz extends zzyd implements zzzj {
    private static final zzqz zzm;
    private int zzb;
    private zzrp zzd;
    private long zze;
    private int zzf;
    private zzyl zzg;
    private zzyl zzh;
    private zzyl zzi;
    private zzyl zzj;
    private zzyl zzk;
    private int zzl;

    static {
        zzqz zzqzVar = new zzqz();
        zzm = zzqzVar;
        zzyd.h(zzqz.class, zzqzVar);
    }

    public zzqz() {
        zzzq zzzqVar = zzzq.i;
        this.zzg = zzzqVar;
        this.zzh = zzzqVar;
        this.zzi = zzzqVar;
        this.zzj = zzzqVar;
        this.zzk = zzzqVar;
    }

    public static zzqy n() {
        return (zzqy) zzm.d();
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
                return new zzqz();
            }
            return new zzzr(zzm, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0005\u0000\u0001ဉ\u0000\u0002စ\u0001\u0003᠌\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u001b\b\u001b\tင\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", zzox.f9814a, "zzg", zzqx.class, "zzh", zzqt.class, "zzi", zzrd.class, "zzj", zzrb.class, "zzk", zzqv.class, "zzl"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(zzrp zzrpVar) {
        this.zzd = zzrpVar;
        this.zzb |= 1;
    }

    public final /* synthetic */ void p(long j) {
        this.zzb |= 2;
        this.zze = j;
    }

    public final void q(ArrayList arrayList) {
        zzyl zzylVar = this.zzg;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzg = zzylVar.zzf(size + size);
        }
        zzwz.c(arrayList, this.zzg);
    }

    public final void r(ArrayList arrayList) {
        zzyl zzylVar = this.zzh;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzh = zzylVar.zzf(size + size);
        }
        zzwz.c(arrayList, this.zzh);
    }

    public final void s(ArrayList arrayList) {
        zzyl zzylVar = this.zzi;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzi = zzylVar.zzf(size + size);
        }
        zzwz.c(arrayList, this.zzi);
    }

    public final void t(ArrayList arrayList) {
        zzyl zzylVar = this.zzj;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzj = zzylVar.zzf(size + size);
        }
        zzwz.c(arrayList, this.zzj);
    }

    public final void u(ArrayList arrayList) {
        zzyl zzylVar = this.zzk;
        if (!zzylVar.zza()) {
            int size = zzylVar.size();
            this.zzk = zzylVar.zzf(size + size);
        }
        zzwz.c(arrayList, this.zzk);
    }

    public final /* synthetic */ void v(int i) {
        this.zzb |= 8;
        this.zzl = i;
    }
}
