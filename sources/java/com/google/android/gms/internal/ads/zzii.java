package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes.dex */
public abstract class zzii extends zzbf {
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzxz f8988c;

    public zzii(zzxz zzxzVar) {
        this.f8988c = zzxzVar;
        this.b = zzxzVar.b.length;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbe b(int i, zzbe zzbeVar, long j) {
        int q = q(i);
        int u = u(q);
        int t = t(q);
        s(q).b(i - u, zzbeVar, j);
        Object v = v(q);
        if (!zzbe.m.equals(zzbeVar.f4587a)) {
            v = Pair.create(v, zzbeVar.f4587a);
        }
        zzbeVar.f4587a = v;
        zzbeVar.k += t;
        zzbeVar.l += t;
        return zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbd d(int i, zzbd zzbdVar, boolean z) {
        int p = p(i);
        int u = u(p);
        s(p).d(i - t(p), zzbdVar, z);
        zzbdVar.f4558c += u;
        if (z) {
            Object v = v(p);
            Object obj = zzbdVar.b;
            obj.getClass();
            zzbdVar.b = Pair.create(v, obj);
        }
        return zzbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int e(Object obj) {
        int e;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int r = r(obj2);
            if (r != -1 && (e = s(r).e(obj3)) != -1) {
                return t(r) + e;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final Object f(int i) {
        int p = p(i);
        return Pair.create(v(p), s(p).f(i - t(p)));
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int h(int i, int i2, boolean z) {
        int i3;
        int q = q(i);
        int u = u(q);
        zzbf s = s(q);
        int i4 = i - u;
        if (i2 == 2) {
            i3 = 0;
        } else {
            i3 = i2;
        }
        int h = s.h(i4, i3, z);
        if (h != -1) {
            return u + h;
        }
        int w = w(q, z);
        while (w != -1 && s(w).g()) {
            w = w(w, z);
        }
        if (w != -1) {
            return s(w).k(z) + u(w);
        }
        if (i2 != 2) {
            return -1;
        }
        return k(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int i(int i) {
        int q = q(i);
        int u = u(q);
        int i2 = s(q).i(i - u);
        if (i2 != -1) {
            return u + i2;
        }
        int x = x(q, false);
        while (x != -1 && s(x).g()) {
            x = x(x, false);
        }
        if (x == -1) {
            return -1;
        }
        return s(x).j(false) + u(x);
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int j(boolean z) {
        int i;
        int i2 = this.b;
        if (i2 != 0) {
            if (z) {
                int[] iArr = this.f8988c.b;
                int length = iArr.length;
                if (length > 0) {
                    i = iArr[length - 1];
                } else {
                    i = -1;
                }
            } else {
                i = i2 - 1;
            }
            while (s(i).g()) {
                i = x(i, z);
                if (i == -1) {
                }
            }
            return s(i).j(z) + u(i);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int k(boolean z) {
        if (this.b != 0) {
            int i = 0;
            if (z) {
                int[] iArr = this.f8988c.b;
                if (iArr.length > 0) {
                    i = iArr[0];
                } else {
                    i = -1;
                }
            }
            while (s(i).g()) {
                i = w(i, z);
                if (i == -1) {
                }
            }
            return s(i).k(z) + u(i);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final zzbd o(Object obj, zzbd zzbdVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int r = r(obj2);
        int u = u(r);
        s(r).o(obj3, zzbdVar);
        zzbdVar.f4558c += u;
        zzbdVar.b = obj;
        return zzbdVar;
    }

    public abstract int p(int i);

    public abstract int q(int i);

    public abstract int r(Object obj);

    public abstract zzbf s(int i);

    public abstract int t(int i);

    public abstract int u(int i);

    public abstract Object v(int i);

    public final int w(int i, boolean z) {
        if (z) {
            zzxz zzxzVar = this.f8988c;
            int i2 = zzxzVar.f9380c[i] + 1;
            int[] iArr = zzxzVar.b;
            if (i2 >= iArr.length) {
                return -1;
            }
            return iArr[i2];
        }
        if (i >= this.b - 1) {
            return -1;
        }
        return i + 1;
    }

    public final int x(int i, boolean z) {
        if (z) {
            zzxz zzxzVar = this.f8988c;
            int i2 = zzxzVar.f9380c[i] - 1;
            if (i2 < 0) {
                return -1;
            }
            return zzxzVar.b[i2];
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }
}
