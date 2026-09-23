package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public abstract class zzfc extends zzem {
    public static final boolean b = zzij.e;

    /* renamed from: a, reason: collision with root package name */
    public Object f11494a;

    public static int x(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int y(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public final void a() {
        if (b() == 0) {
        } else {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract int b();

    public abstract void c(byte b2);

    public abstract void d(int i, boolean z);

    public abstract void e(byte[] bArr, int i);

    public abstract void f(int i, zzev zzevVar);

    public abstract void g(zzev zzevVar);

    public abstract void h(int i, int i2);

    public abstract void i(int i);

    public abstract void j(int i, long j);

    public abstract void k(long j);

    public abstract void l(int i, int i2);

    public abstract void m(int i);

    public abstract void n(zzhc zzhcVar);

    public abstract void o(int i, zzhc zzhcVar);

    public abstract void p(int i, zzev zzevVar);

    public abstract void q(int i, String str);

    public abstract void r(String str);

    public abstract void s(int i, int i2);

    public abstract void t(int i, int i2);

    public abstract void u(int i);

    public abstract void v(int i, long j);

    public abstract void w(long j);
}
