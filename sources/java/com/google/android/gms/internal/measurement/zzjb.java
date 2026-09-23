package com.google.android.gms.internal.measurement;

import android.support.v4.media.a;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class zzjb implements Iterable, Serializable {
    public static final zzjb f = new zziy(zzkk.b);

    /* renamed from: c, reason: collision with root package name */
    public int f10375c;

    static {
        int i = zzin.f10373a;
    }

    public static int q(int i, int i2) {
        if (((i2 - i) | i) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(a.e(i, "Beginning index larger than ending index: 0, "));
            }
            throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("End index: ", i, i2, " >= "));
        }
        return i;
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public abstract boolean equals(Object obj);

    public abstract int g();

    public final int hashCode() {
        int i = this.f10375c;
        if (i == 0) {
            int g = g();
            i = i(g, g);
            if (i == 0) {
                i = 1;
            }
            this.f10375c = i;
        }
        return i;
    }

    public abstract int i(int i, int i2);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzis(this);
    }

    public abstract zzjb k();

    public abstract String m(Charset charset);

    public abstract boolean p();

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g = g();
        if (g() <= 50) {
            concat = zzmj.a(this);
        } else {
            concat = zzmj.a(k()).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g);
        sb.append(" contents=\"");
        return a.p(sb, concat, "\">");
    }
}
