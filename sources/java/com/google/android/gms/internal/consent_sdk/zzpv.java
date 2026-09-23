package com.google.android.gms.internal.consent_sdk;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzpv extends zzpe {
    public static final Logger b = Logger.getLogger(zzpv.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f10075c = zzsw.e;

    /* renamed from: a, reason: collision with root package name */
    public Object f10076a;

    public static int b(String str) {
        int length;
        try {
            length = zzsy.b(str);
        } catch (zzsx unused) {
            length = str.getBytes(zzqs.f10085a).length;
        }
        return c(length) + length;
    }

    public static int c(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int d(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public final void e(String str, zzsx zzsxVar) {
        b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzsxVar);
        byte[] bytes = str.getBytes(zzqs.f10085a);
        try {
            int length = bytes.length;
            v(length);
            a(bytes, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzps(e);
        }
    }

    public abstract void f(byte b2);

    public abstract void g(int i, boolean z);

    public abstract void h(byte[] bArr, int i);

    public abstract void i(int i, zzpm zzpmVar);

    public abstract void j(zzpm zzpmVar);

    public abstract void k(int i, int i2);

    public abstract void l(int i);

    public abstract void m(int i, long j);

    public abstract void n(long j);

    public abstract void o(int i, int i2);

    public abstract void p(int i);

    public abstract void q(zzrq zzrqVar);

    public abstract void r(int i, String str);

    public abstract void s(String str);

    public abstract void t(int i, int i2);

    public abstract void u(int i, int i2);

    public abstract void v(int i);

    public abstract void w(int i, long j);

    public abstract void x(long j);
}
