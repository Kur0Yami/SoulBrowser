package com.google.android.gms.internal.auth;

import androidx.work.impl.workers.a;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class zzef implements Iterable, Serializable {
    public static final zzef f = new zzec(zzfa.b);

    /* renamed from: c, reason: collision with root package name */
    public int f9533c;

    static {
        int i = zzds.f9529a;
    }

    public static int q(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    throw new IndexOutOfBoundsException(a.s("Beginning index larger than ending index: ", i, i2, ", "));
                }
                throw new IndexOutOfBoundsException(a.s("End index: ", i2, i3, " >= "));
            }
            throw new IndexOutOfBoundsException(android.support.v4.media.a.f(i, "Beginning index: ", " < 0"));
        }
        return i4;
    }

    public static zzef r(byte[] bArr, int i, int i2) {
        q(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzec(bArr2);
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public abstract boolean equals(Object obj);

    public abstract int g();

    public final int hashCode() {
        int i = this.f9533c;
        if (i == 0) {
            int g = g();
            i = i(g, g);
            if (i == 0) {
                i = 1;
            }
            this.f9533c = i;
        }
        return i;
    }

    public abstract int i(int i, int i2);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzdw(this);
    }

    public abstract zzef k();

    public abstract String m(Charset charset);

    public abstract boolean p();

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g = g();
        if (g() <= 50) {
            concat = zzgx.a(this);
        } else {
            concat = zzgx.a(k()).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g);
        sb.append(" contents=\"");
        return android.support.v4.media.a.p(sb, concat, "\">");
    }
}
