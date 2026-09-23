package com.google.android.gms.internal.cast;

import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzqg extends zzyd implements zzzj {
    private static final zzqg zzs;
    private int zzb;
    private zzrp zzd;
    private boolean zze;
    private long zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private zzui zzl;
    private int zzm;
    private int zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;
    private boolean zzr;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.cast.zzyd, com.google.android.gms.internal.cast.zzqg] */
    static {
        ?? zzydVar = new zzyd();
        zzs = zzydVar;
        zzyd.h(zzqg.class, zzydVar);
    }

    public static zzqf n() {
        return (zzqf) zzs.d();
    }

    public static zzqf o(zzqg zzqgVar) {
        zzya d = zzs.d();
        zzyd zzydVar = d.f9881c;
        if (!zzydVar.equals(zzqgVar)) {
            if (!d.f.l()) {
                zzyd zzydVar2 = (zzyd) zzydVar.j(4, null);
                zzzp.f9899c.a(zzydVar2.getClass()).c(zzydVar2, d.f);
                d.f = zzydVar2;
            }
            zzyd zzydVar3 = d.f;
            zzzp.f9899c.a(zzydVar3.getClass()).c(zzydVar3, zzqgVar);
        }
        return (zzqf) d;
    }

    public static zzqg p() {
        return zzs;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzs;
                        }
                        throw null;
                    }
                    return new zzya(zzs);
                }
                return new zzyd();
            }
            return new zzzr(zzs, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003စ\u0002\u0004ဆ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007င\u0006\bင\u0007\tဉ\b\n᠌\t\u000bင\n\fဇ\u000b\rင\f\u000eင\r\u000fဇ\u000e", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", zzlh.f9762a, "zzi", zzlf.f9761a, "zzj", "zzk", "zzl", "zzm", zzmj.f9777a, "zzn", "zzo", "zzp", "zzq", "zzr"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void q(zzrp zzrpVar) {
        this.zzd = zzrpVar;
        this.zzb |= 1;
    }

    public final /* synthetic */ void r(boolean z) {
        this.zzb |= 2;
        this.zze = z;
    }

    public final /* synthetic */ void s(long j) {
        this.zzb |= 4;
        this.zzf = j;
    }

    public final /* synthetic */ void t(int i) {
        this.zzb |= 64;
        this.zzj = i;
    }

    public final /* synthetic */ void u(int i) {
        this.zzb |= Uuid.SIZE_BITS;
        this.zzk = i;
    }

    public final /* synthetic */ void v(int i) {
        this.zzb |= 1024;
        this.zzn = i;
    }

    public final /* synthetic */ void w(boolean z) {
        this.zzb |= 2048;
        this.zzo = z;
    }

    public final /* synthetic */ void x(int i) {
        this.zzb |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        this.zzp = i;
    }

    public final /* synthetic */ void y(int i) {
        this.zzb |= 8192;
        this.zzq = i;
    }

    public final /* synthetic */ void z(boolean z) {
        this.zzb |= 16384;
        this.zzr = z;
    }
}
