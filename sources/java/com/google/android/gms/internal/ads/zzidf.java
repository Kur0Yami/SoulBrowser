package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzidf {
    public abstract void a(int i, long j, Object obj);

    public abstract void b(int i, int i2, Object obj);

    public abstract void c(int i, long j, Object obj);

    public abstract void d(Object obj, int i, zzhzl zzhzlVar);

    public abstract void e(int i, Object obj, Object obj2);

    public abstract zzidg f();

    public abstract zzidg g(Object obj);

    public abstract zzidg h(Object obj);

    public abstract void i(Object obj, Object obj2);

    public abstract void j(Object obj);

    public final boolean k(int i, zzhzr zzhzrVar, Object obj) {
        int i2 = zzhzrVar.b;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 == 5) {
                                b(i3, zzhzrVar.F(), obj);
                                return true;
                            }
                            throw new zzibf();
                        }
                        if (i != 0) {
                            return false;
                        }
                        throw new IOException("Protocol message end-group tag did not match expected tag.");
                    }
                    zzidg f = f();
                    int i5 = i3 << 3;
                    int i6 = i + 1;
                    if (i6 >= 100) {
                        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                    }
                    while (zzhzrVar.y() != Integer.MAX_VALUE && k(i6, zzhzrVar, f)) {
                    }
                    if ((i5 | 4) == zzhzrVar.b) {
                        e(i3, obj, g(f));
                        return true;
                    }
                    throw new IOException("Protocol message end-group tag did not match expected tag.");
                }
                d(obj, i3, zzhzrVar.L());
                return true;
            }
            c(i3, zzhzrVar.E(), obj);
            return true;
        }
        a(i3, zzhzrVar.C(), obj);
        return true;
    }
}
