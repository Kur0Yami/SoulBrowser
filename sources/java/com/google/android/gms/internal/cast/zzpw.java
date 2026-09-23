package com.google.android.gms.internal.cast;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzpw extends zzyd implements zzzj {
    private static final zzpw zzh;
    private int zzb;
    private zzqc zzd;
    private zzsx zze;
    private zzyl zzf = zzzq.i;
    private zzyj zzg = zzye.i;

    static {
        zzpw zzpwVar = new zzpw();
        zzh = zzpwVar;
        zzyd.h(zzpw.class, zzpwVar);
    }

    public static zzpv n() {
        return (zzpv) zzh.d();
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object j(int i, zzyd zzydVar) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzya(zzh);
                }
                return new zzpw();
            }
            return new zzzr(zzh, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zzb", "zzd", "zze", "zzf", zzsr.class, "zzg", zzpl.f9823a});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void o(zzqc zzqcVar) {
        this.zzd = zzqcVar;
        this.zzb |= 1;
    }

    public final void p(ArrayList arrayList) {
        zzyj zzyjVar = this.zzg;
        if (!zzyjVar.zza()) {
            int size = zzyjVar.size();
            this.zzg = zzyjVar.zzf(size + size);
        }
        int size2 = arrayList.size();
        int i = 0;
        while (i < size2) {
            Object obj = arrayList.get(i);
            i++;
            this.zzg.S(((zzpm) obj).f9824c);
        }
    }
}
