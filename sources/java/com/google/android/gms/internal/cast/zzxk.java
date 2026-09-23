package com.google.android.gms.internal.cast;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class zzxk implements Iterable, Serializable {
    public static final zzxk f = new zzxj(zzym.b);

    /* renamed from: c, reason: collision with root package name */
    public int f9869c;

    static {
        int i = zzxb.f9867a;
    }

    public static void d(int i) {
        if (((i - 47) | 47) >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.r(i, "End index: 47 >= ", new StringBuilder(String.valueOf(47).length() + 15 + String.valueOf(i).length())));
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public abstract boolean equals(Object obj);

    public abstract int g();

    public final int hashCode() {
        int i = this.f9869c;
        if (i == 0) {
            int g = g();
            i = m(g, g);
            if (i == 0) {
                i = 1;
            }
            this.f9869c = i;
        }
        return i;
    }

    public abstract zzxk i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzxe(this);
    }

    public abstract void k(zzxd zzxdVar);

    public abstract int m(int i, int i2);

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g = g();
        if (g() <= 50) {
            concat = zzaab.a(this);
        } else {
            concat = zzaab.a(i()).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g);
        sb.append(" contents=\"");
        return android.support.v4.media.a.p(sb, concat, "\">");
    }
}
