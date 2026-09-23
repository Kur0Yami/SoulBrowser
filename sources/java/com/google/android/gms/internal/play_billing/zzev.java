package com.google.android.gms.internal.play_billing;

import androidx.work.impl.workers.a;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes3.dex */
public abstract class zzev implements Iterable, Serializable {
    public static final zzev f = new zzet(zzgb.b);

    /* renamed from: c, reason: collision with root package name */
    public int f11491c;

    static {
        int i = zzei.f11487a;
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

    public static zzev r(byte[] bArr, int i, int i2) {
        try {
            q(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new zzet(bArr2);
        } catch (zzgd e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static /* bridge */ /* synthetic */ boolean s(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        int i4 = i + i3;
        q(i, i4, bArr.length);
        q(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public abstract byte a(int i);

    public abstract byte c(int i);

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzev) {
                zzev zzevVar = (zzev) obj;
                int i = i();
                if (i == zzevVar.i()) {
                    if (i != 0) {
                        int i2 = this.f11491c;
                        int i3 = zzevVar.f11491c;
                        if (i2 != 0 && i3 != 0 && i2 != i3) {
                            return false;
                        }
                        return p(zzevVar);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public abstract int g(int i, int i2);

    public final int hashCode() {
        int i = this.f11491c;
        if (i == 0) {
            int i2 = i();
            i = g(i2, i2);
            if (i == 0) {
                i = 1;
            }
            this.f11491c = i;
        }
        return i;
    }

    public abstract int i();

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzen(this);
    }

    public abstract zzev k(int i, int i2);

    public abstract void m(zzem zzemVar);

    public abstract boolean p(zzev zzevVar);

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int i = i();
        if (i() <= 50) {
            concat = zzia.a(this);
        } else {
            concat = zzia.a(k(0, 47)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(i);
        sb.append(" contents=\"");
        return android.support.v4.media.a.p(sb, concat, "\">");
    }
}
