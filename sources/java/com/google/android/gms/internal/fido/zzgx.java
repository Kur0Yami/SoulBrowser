package com.google.android.gms.internal.fido;

import androidx.work.impl.workers.a;
import java.io.ByteArrayInputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class zzgx implements Iterable<Byte>, Serializable {
    public static final zzgx f = new zzgu(zzhc.f10326a);

    /* renamed from: c, reason: collision with root package name */
    public int f10323c;

    static {
        int i = zzgn.f10321a;
    }

    public static int r(int i, int i2, int i3) {
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

    public static zzgx s(byte[] bArr, int i) {
        r(0, i, bArr.length);
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return new zzgu(bArr2);
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public abstract boolean equals(Object obj);

    public abstract int g();

    public final int hashCode() {
        int i = this.f10323c;
        if (i == 0) {
            int g = g();
            i = k(g, g);
            if (i == 0) {
                i = 1;
            }
            this.f10323c = i;
        }
        return i;
    }

    public abstract void i(byte[] bArr, int i);

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new zzgo(this);
    }

    public abstract int k(int i, int i2);

    public abstract zzgx m(int i, int i2);

    public abstract ByteArrayInputStream p();

    public abstract ByteBuffer q();

    public final byte[] t() {
        int g = g();
        if (g == 0) {
            return zzhc.f10326a;
        }
        byte[] bArr = new byte[g];
        i(bArr, g);
        return bArr;
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int g = g();
        if (g() <= 50) {
            concat = zzhe.a(this);
        } else {
            concat = zzhe.a(m(0, 47)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(g);
        sb.append(" contents=\"");
        return android.support.v4.media.a.p(sb, concat, "\">");
    }
}
