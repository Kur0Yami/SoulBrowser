package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes.dex */
public abstract class zzbf {

    /* renamed from: a, reason: collision with root package name */
    public static final zzbf f4601a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzbf] */
    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
    }

    public abstract int a();

    public abstract zzbe b(int i, zzbe zzbeVar, long j);

    public abstract int c();

    public abstract zzbd d(int i, zzbd zzbdVar, boolean z);

    public abstract int e(Object obj);

    public final boolean equals(Object obj) {
        int j;
        if (this != obj) {
            if (obj instanceof zzbf) {
                zzbf zzbfVar = (zzbf) obj;
                if (zzbfVar.a() == a() && zzbfVar.c() == c()) {
                    zzbe zzbeVar = new zzbe();
                    zzbd zzbdVar = new zzbd();
                    zzbe zzbeVar2 = new zzbe();
                    zzbd zzbdVar2 = new zzbd();
                    int i = 0;
                    while (true) {
                        if (i < a()) {
                            if (!b(i, zzbeVar, 0L).equals(zzbfVar.b(i, zzbeVar2, 0L))) {
                                break;
                            }
                            i++;
                        } else {
                            int i2 = 0;
                            while (true) {
                                if (i2 < c()) {
                                    if (!d(i2, zzbdVar, true).equals(zzbfVar.d(i2, zzbdVar2, true))) {
                                        break;
                                    }
                                    i2++;
                                } else {
                                    int k = k(true);
                                    if (k == zzbfVar.k(true) && (j = j(true)) == zzbfVar.j(true)) {
                                        while (k != j) {
                                            int h = h(k, 0, true);
                                            if (h == zzbfVar.h(k, 0, true)) {
                                                k = h;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public abstract Object f(int i);

    public final boolean g() {
        if (a() == 0) {
            return true;
        }
        return false;
    }

    public int h(int i, int i2, boolean z) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == j(z)) {
                        return k(z);
                    }
                    return i + 1;
                }
                throw new IllegalStateException();
            }
            return i;
        }
        if (i == j(z)) {
            return -1;
        }
        return i + 1;
    }

    public final int hashCode() {
        int i;
        zzbe zzbeVar = new zzbe();
        zzbd zzbdVar = new zzbd();
        int a2 = a() + 217;
        int i2 = 0;
        while (true) {
            i = a2 * 31;
            if (i2 >= a()) {
                break;
            }
            a2 = i + b(i2, zzbeVar, 0L).hashCode();
            i2++;
        }
        int c2 = c() + i;
        for (int i3 = 0; i3 < c(); i3++) {
            c2 = (c2 * 31) + d(i3, zzbdVar, true).hashCode();
        }
        int k = k(true);
        while (k != -1) {
            c2 = (c2 * 31) + k;
            k = h(k, 0, true);
        }
        return c2;
    }

    public int i(int i) {
        if (i == k(false)) {
            return -1;
        }
        return i - 1;
    }

    public int j(boolean z) {
        if (g()) {
            return -1;
        }
        return a() - 1;
    }

    public int k(boolean z) {
        if (g()) {
            return -1;
        }
        return 0;
    }

    public final int l(int i, zzbd zzbdVar, zzbe zzbeVar, int i2, boolean z) {
        int i3 = d(i, zzbdVar, false).f4558c;
        if (b(i3, zzbeVar, 0L).l == i) {
            int h = h(i3, i2, z);
            if (h == -1) {
                return -1;
            }
            return b(h, zzbeVar, 0L).k;
        }
        return i + 1;
    }

    public final Pair m(zzbe zzbeVar, zzbd zzbdVar, int i, long j) {
        Pair n = n(zzbeVar, zzbdVar, i, j, 0L);
        n.getClass();
        return n;
    }

    public final Pair n(zzbe zzbeVar, zzbd zzbdVar, int i, long j, long j2) {
        zzgqa.i(i, a());
        b(i, zzbeVar, j2);
        if (j == -9223372036854775807L) {
            zzbeVar.getClass();
            j = 0;
        }
        int i2 = zzbeVar.k;
        d(i2, zzbdVar, false);
        while (i2 < zzbeVar.l) {
            zzbdVar.getClass();
            if (j == 0) {
                break;
            }
            int i3 = i2 + 1;
            d(i3, zzbdVar, false).getClass();
            if (j < 0) {
                break;
            }
            i2 = i3;
        }
        d(i2, zzbdVar, true);
        zzbdVar.getClass();
        long j3 = zzbdVar.d;
        if (j3 != -9223372036854775807L) {
            j = Math.min(j, j3 - 1);
        }
        long max = Math.max(0L, j);
        Object obj = zzbdVar.b;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    public zzbd o(Object obj, zzbd zzbdVar) {
        return d(e(obj), zzbdVar, true);
    }
}
