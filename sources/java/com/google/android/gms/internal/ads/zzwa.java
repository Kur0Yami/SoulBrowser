package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzwa extends zzbf {
    public final zzak b;

    public zzwa(zzak zzakVar) {
        this.b = zzakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbe b(int i, zzbe zzbeVar, long j) {
        Object obj = zzbe.m;
        zzbeVar.a(this.b, false, true, null, -9223372036854775807L);
        zzbeVar.i = true;
        return zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbd d(int i, zzbd zzbdVar, boolean z) {
        Integer num;
        Object obj = null;
        if (z) {
            num = 0;
        } else {
            num = null;
        }
        if (z) {
            obj = zzvz.e;
        }
        Object obj2 = obj;
        zzc zzcVar = zzc.b;
        zzbdVar.a(num, obj2, 0, -9223372036854775807L, true);
        return zzbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int e(Object obj) {
        if (obj == zzvz.e) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final Object f(int i) {
        return zzvz.e;
    }
}
