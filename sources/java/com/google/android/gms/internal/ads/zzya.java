package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes.dex */
public final class zzya extends zzbf {
    public static final Object g = new Object();
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9381c;
    public final boolean d;
    public final zzak e;
    public final zzaf f;

    static {
        zzz zzzVar = new zzz();
        zzzVar.f9404a = "SinglePeriodTimeline";
        zzzVar.b = Uri.EMPTY;
        zzzVar.a();
    }

    public zzya(long j, long j2, boolean z, zzak zzakVar, zzaf zzafVar) {
        this.b = j;
        this.f9381c = j2;
        this.d = z;
        zzakVar.getClass();
        this.e = zzakVar;
        this.f = zzafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbe b(int i, zzbe zzbeVar, long j) {
        zzgqa.i(i, 1);
        Object obj = zzbe.m;
        zzbeVar.a(this.e, this.d, false, this.f, this.f9381c);
        return zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbd d(int i, zzbd zzbdVar, boolean z) {
        Object obj;
        zzgqa.i(i, 1);
        if (z) {
            obj = g;
        } else {
            obj = null;
        }
        Object obj2 = obj;
        zzc zzcVar = zzc.b;
        zzbdVar.a(null, obj2, 0, this.b, false);
        return zzbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int e(Object obj) {
        if (g.equals(obj)) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final Object f(int i) {
        zzgqa.i(i, 1);
        return g;
    }
}
