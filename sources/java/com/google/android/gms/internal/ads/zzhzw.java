package com.google.android.gms.internal.ads;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzhzw extends zzhzc {
    public static final Logger b = Logger.getLogger(zzhzw.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f8899c = zzidm.e;

    /* renamed from: a, reason: collision with root package name */
    public Object f8900a;

    public static int b(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int c(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int d(String str) {
        int length;
        try {
            length = zzidr.b(str);
        } catch (zzidq unused) {
            length = str.getBytes(zzibe.f8915a).length;
        }
        return b(length) + length;
    }

    public abstract void A(long j);

    public abstract void B(String str);

    public final void e() {
        if (l() == 0) {
        } else {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void f(String str, zzidq zzidqVar) {
        b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzidqVar);
        byte[] bytes = str.getBytes(zzibe.f8915a);
        try {
            int length = bytes.length;
            x(length);
            a(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzhzu(e);
        }
    }

    public abstract void g(int i, int i2);

    public abstract void h(int i, int i2);

    public abstract void i(int i, int i2);

    public abstract void j(int i, int i2);

    public abstract void k(int i, long j);

    public abstract int l();

    public abstract void m(int i, long j);

    public abstract void n(int i, boolean z);

    public abstract void o(int i, String str);

    public abstract void p(int i, zzhzl zzhzlVar);

    public abstract void q(zzhzl zzhzlVar);

    public abstract void r(byte[] bArr, int i);

    public abstract void s(int i, zzicc zziccVar);

    public abstract void t(int i, zzhzl zzhzlVar);

    public abstract void u(zzicc zziccVar);

    public abstract void v(byte b2);

    public abstract void w(int i);

    public abstract void x(int i);

    public abstract void y(int i);

    public abstract void z(long j);
}
