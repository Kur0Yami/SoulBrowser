package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzagp {

    /* renamed from: a, reason: collision with root package name */
    public final zzago f4014a;
    public final zzaga b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4015c;
    public final int d;
    public final long e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public long l;
    public long[] m;
    public int[] n;

    public zzagp(int i, zzago zzagoVar, zzaga zzagaVar) {
        int i2;
        int i3;
        int i4 = zzagoVar.d;
        this.f4014a = zzagoVar;
        int a2 = zzagoVar.a();
        boolean z = true;
        if (a2 != 1) {
            if (a2 == 2) {
                a2 = 2;
            } else {
                z = false;
            }
        }
        zzgqa.a(z);
        if (a2 == 2) {
            i2 = 1667497984;
        } else {
            i2 = 1651965952;
        }
        int i5 = ((i / 10) + 48) | (((i % 10) + 48) << 8);
        this.f4015c = i2 | i5;
        this.e = zzfj.u(i4, zzagoVar.b * 1000000, zzagoVar.f4013c, RoundingMode.DOWN);
        this.b = zzagaVar;
        if (a2 == 2) {
            i3 = 1650720768 | i5;
        } else {
            i3 = -1;
        }
        this.d = i3;
        this.l = -1L;
        this.m = new long[512];
        this.n = new int[512];
        this.f = i4;
    }

    public final zzafp a(long j) {
        if (this.k != 0) {
            int i = (int) (j / ((this.e * 1) / this.f));
            int p = zzfj.p(this.n, i, true, true);
            if (this.n[p] == i) {
                zzafs b = b(p);
                return new zzafp(b, b);
            }
            zzafs b2 = b(p);
            int i2 = p + 1;
            if (i2 < this.m.length) {
                return new zzafp(b2, b(i2));
            }
            return new zzafp(b2, b2);
        }
        zzafs zzafsVar = new zzafs(0L, this.l);
        return new zzafp(zzafsVar, zzafsVar);
    }

    public final zzafs b(int i) {
        return new zzafs(((this.e * 1) / this.f) * this.n[i], this.m[i]);
    }
}
