package com.google.android.gms.internal.cast;

import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzxp extends zzxd {
    public static final Logger b = Logger.getLogger(zzxp.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f9871c = zzaak.e;

    /* renamed from: a, reason: collision with root package name */
    public Object f9872a;

    public static int q(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int r(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int s(String str) {
        int length;
        try {
            length = zzaam.a(str);
        } catch (zzaal unused) {
            length = str.getBytes(zzym.f9882a).length;
        }
        return q(length) + length;
    }

    public abstract void b(int i, int i2);

    public abstract void c(int i, int i2);

    public abstract void d(int i, int i2);

    public abstract void e(int i, int i2);

    public abstract void f(int i, long j);

    public abstract void g(int i, long j);

    public abstract void h(int i, boolean z);

    public abstract void i(int i, String str);

    public abstract void j(int i, zzxk zzxkVar);

    public abstract void k(byte b2);

    public abstract void l(int i);

    public abstract void m(int i);

    public abstract void n(int i);

    public abstract void o(long j);

    public abstract void p(long j);
}
