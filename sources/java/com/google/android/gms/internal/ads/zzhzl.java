package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class zzhzl implements Iterable<Byte>, Serializable {
    public static final zzhzl f = new zzhzj(zzibe.b);

    /* renamed from: c, reason: collision with root package name */
    public int f8894c = 0;

    static {
        int i = zzhyy.f8889a;
    }

    public static zzhzl B(byte[] bArr, int i, int i2) {
        try {
            return C(bArr, i, i2);
        } catch (zzibg e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static zzhzl C(byte[] bArr, int i, int i2) {
        c(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzhzj(bArr2);
    }

    public static zzhzl D(ArrayList arrayList) {
        int size;
        if (!android.support.v4.media.a.A(arrayList)) {
            int size2 = arrayList.size();
            size = 0;
            int i = 0;
            while (i < size2) {
                arrayList.get(i);
                i++;
                size++;
            }
        } else {
            size = arrayList.size();
        }
        if (size == 0) {
            return f;
        }
        return m(arrayList.iterator(), size);
    }

    public static void a(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(androidx.work.impl.workers.a.r(i, "Index < 0: ", new StringBuilder(String.valueOf(i).length() + 11)));
            }
            throw new ArrayIndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i2).length()), "Index > length: ", i, ", ", i2));
        }
    }

    public static int c(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 44 + String.valueOf(i2).length()), "Beginning index larger than ending index: ", i, ", ", i2));
                }
                throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i2).length() + 15 + String.valueOf(i3).length()), "End index: ", i2, " >= ", i3));
            }
            throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 21), "Beginning index: ", i, " < 0"));
        }
        return i4;
    }

    public static zzhzl m(Iterator it, int i) {
        if (i > 0) {
            if (i == 1) {
                return (zzhzl) it.next();
            }
            int i2 = i >>> 1;
            zzhzl m = m(it, i2);
            zzhzl m2 = m(it, i - i2);
            if (Integer.MAX_VALUE - m.k() >= m2.k()) {
                if (m2.k() == 0) {
                    return m;
                }
                if (m.k() == 0) {
                    return m2;
                }
                int k = m2.k() + m.k();
                if (k < 128) {
                    int k2 = m.k();
                    int k3 = m2.k();
                    int i3 = k2 + k3;
                    byte[] bArr = new byte[i3];
                    c(0, k2, m.k());
                    c(0, k2, i3);
                    if (k2 > 0) {
                        m.p(bArr, 0, 0, k2);
                    }
                    c(0, k3, m2.k());
                    c(k2, i3, i3);
                    if (k3 > 0) {
                        m2.p(bArr, 0, k2, k3);
                    }
                    try {
                        return new zzhzj(bArr);
                    } catch (zzibg e) {
                        throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
                    }
                }
                if (m instanceof zzict) {
                    zzict zzictVar = (zzict) m;
                    zzhzl zzhzlVar = zzictVar.h;
                    zzhzl zzhzlVar2 = zzictVar.i;
                    if (m2.k() + zzhzlVar2.k() < 128) {
                        int k4 = zzhzlVar2.k();
                        int k5 = m2.k();
                        int i4 = k4 + k5;
                        byte[] bArr2 = new byte[i4];
                        c(0, k4, zzhzlVar2.k());
                        c(0, k4, i4);
                        if (k4 > 0) {
                            zzhzlVar2.p(bArr2, 0, 0, k4);
                        }
                        c(0, k5, m2.k());
                        c(k4, i4, i4);
                        if (k5 > 0) {
                            m2.p(bArr2, 0, k4, k5);
                        }
                        try {
                            return new zzict(zzhzlVar, new zzhzj(bArr2));
                        } catch (zzibg e2) {
                            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e2);
                        }
                    }
                    if (zzhzlVar.q() > zzhzlVar2.q() && zzictVar.k > m2.q()) {
                        return new zzict(zzhzlVar, new zzict(zzhzlVar2, m2));
                    }
                }
                if (k >= zzict.F(Math.max(m.q(), m2.q()) + 1)) {
                    return new zzict(m, m2);
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                zzicr.a(m, arrayDeque);
                zzicr.a(m2, arrayDeque);
                zzhzl zzhzlVar3 = (zzhzl) arrayDeque.pop();
                while (!arrayDeque.isEmpty()) {
                    zzhzlVar3 = new zzict((zzhzl) arrayDeque.pop(), zzhzlVar3);
                }
                return zzhzlVar3;
            }
            int k6 = m.k();
            int k7 = m2.k();
            throw new IllegalArgumentException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(k6).length() + 31 + String.valueOf(k7).length()), "ByteString would be too long: ", k6, "+", k7));
        }
        throw new IllegalArgumentException(android.support.v4.media.a.f(i, "length (", ") must be >= 1"));
    }

    public final byte[] E() {
        int k = k();
        if (k == 0) {
            return zzibe.b;
        }
        byte[] bArr = new byte[k];
        p(bArr, 0, 0, k);
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhzl)) {
            return false;
        }
        zzhzl zzhzlVar = (zzhzl) obj;
        int k = k();
        if (k != zzhzlVar.k()) {
            return false;
        }
        if (k == 0) {
            return true;
        }
        int i = this.f8894c;
        int i2 = zzhzlVar.f8894c;
        if (i != 0 && i2 != 0 && i != i2) {
            return false;
        }
        return v(zzhzlVar);
    }

    public abstract byte g(int i);

    public final int hashCode() {
        int i = this.f8894c;
        if (i == 0) {
            int k = k();
            i = w(k, 0, k);
            if (i == 0) {
                i = 1;
            }
            this.f8894c = i;
        }
        return i;
    }

    public abstract byte i(int i);

    public abstract int k();

    public abstract void p(byte[] bArr, int i, int i2, int i3);

    public abstract int q();

    public abstract boolean r();

    public abstract zzhzl s(int i, int i2);

    public abstract ByteBuffer t();

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int k = k();
        if (k() <= 50) {
            concat = zzidd.a(this);
        } else {
            concat = zzidd.a(s(0, 47)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(k);
        sb.append(" contents=\"");
        return android.support.v4.media.a.p(sb, concat, "\">");
    }

    public abstract void u(zzhzw zzhzwVar);

    public abstract boolean v(zzhzl zzhzlVar);

    public abstract int w(int i, int i2, int i3);

    public abstract zzhzq x();

    @Override // java.lang.Iterable
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public zzhzg iterator() {
        return new zzhzd(this);
    }
}
