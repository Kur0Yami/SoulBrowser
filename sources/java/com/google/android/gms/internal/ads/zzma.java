package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzma {
    public static final zzwg t = new zzwg(new Object(), -1);

    /* renamed from: a, reason: collision with root package name */
    public final zzbf f9110a;
    public final zzwg b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9111c;
    public final long d;
    public final int e;
    public final zzit f;
    public final boolean g;
    public final zzyh h;
    public final zzaae i;
    public final List j;
    public final zzwg k;
    public final boolean l;
    public final int m;
    public final int n;
    public final zzav o;
    public volatile long p;
    public volatile long q;
    public volatile long r;
    public volatile long s;

    public zzma(zzbf zzbfVar, zzwg zzwgVar, long j, long j2, int i, zzit zzitVar, boolean z, zzyh zzyhVar, zzaae zzaaeVar, List list, zzwg zzwgVar2, boolean z2, int i2, int i3, zzav zzavVar, long j3, long j4, long j5, long j6) {
        this.f9110a = zzbfVar;
        this.b = zzwgVar;
        this.f9111c = j;
        this.d = j2;
        this.e = i;
        this.f = zzitVar;
        this.g = z;
        this.h = zzyhVar;
        this.i = zzaaeVar;
        this.j = list;
        this.k = zzwgVar2;
        this.l = z2;
        this.m = i2;
        this.n = i3;
        this.o = zzavVar;
        this.p = j3;
        this.q = j4;
        this.r = j5;
        this.s = j6;
    }

    public static zzma a(zzaae zzaaeVar) {
        zzbf zzbfVar = zzbf.f4601a;
        zzyh zzyhVar = zzyh.d;
        zzgtd zzgtdVar = zzguy.i;
        zzav zzavVar = zzav.d;
        zzwg zzwgVar = t;
        return new zzma(zzbfVar, zzwgVar, -9223372036854775807L, 0L, 1, null, false, zzyhVar, zzaaeVar, zzgtdVar, zzwgVar, false, 1, 0, zzavVar, 0L, 0L, 0L, 0L);
    }

    public final zzma b(zzwg zzwgVar, long j, long j2, long j3, long j4, zzyh zzyhVar, zzaae zzaaeVar, List list) {
        zzwg zzwgVar2 = this.k;
        boolean z = this.l;
        int i = this.m;
        int i2 = this.n;
        zzav zzavVar = this.o;
        long j5 = this.p;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        return new zzma(this.f9110a, zzwgVar, j2, j3, this.e, this.f, this.g, zzyhVar, zzaaeVar, list, zzwgVar2, z, i, i2, zzavVar, j5, j4, j, elapsedRealtime);
    }

    public final zzma c(zzbf zzbfVar) {
        return new zzma(zzbfVar, this.b, this.f9111c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    public final zzma d(int i) {
        return new zzma(this.f9110a, this.b, this.f9111c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    public final zzma e(zzit zzitVar) {
        return new zzma(this.f9110a, this.b, this.f9111c, this.d, this.e, zzitVar, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    public final zzma f(boolean z) {
        return new zzma(this.f9110a, this.b, this.f9111c, this.d, this.e, this.f, z, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    public final zzma g(zzwg zzwgVar) {
        return new zzma(this.f9110a, this.b, this.f9111c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, zzwgVar, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    public final zzma h(int i, int i2, boolean z) {
        return new zzma(this.f9110a, this.b, this.f9111c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, z, i, i2, this.o, this.p, this.q, this.r, this.s);
    }

    public final boolean i() {
        return this.e == 3 && this.l && this.n == 0;
    }
}
