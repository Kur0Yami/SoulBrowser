package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class zzhzq {

    /* renamed from: a, reason: collision with root package name */
    public int f8895a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public Object f8896c;

    public static zzhzq d(byte[] bArr, int i, int i2) {
        zzhzm zzhzmVar = new zzhzm(bArr, i, i2);
        try {
            zzhzmVar.B(i2);
            return zzhzmVar;
        } catch (zzibg e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int f(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static long g(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public abstract long A();

    public abstract int B(int i);

    public abstract void a(int i);

    public abstract boolean b();

    public abstract int c();

    public final void e() {
        int h;
        do {
            h = h();
            if (h != 0) {
                int i = this.f8895a;
                int i2 = this.b;
                if (i + i2 < 100) {
                    this.b = i2 + 1;
                    this.b--;
                } else {
                    throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                }
            } else {
                return;
            }
        } while (j(h));
    }

    public abstract int h();

    public abstract void i(int i);

    public abstract boolean j(int i);

    public abstract double k();

    public abstract float l();

    public abstract long m();

    public abstract long n();

    public abstract int o();

    public abstract long p();

    public abstract int q();

    public abstract boolean r();

    public abstract String s();

    public abstract String t();

    public abstract zzhzl u();

    public abstract int v();

    public abstract int w();

    public abstract int x();

    public abstract long y();

    public abstract int z();
}
