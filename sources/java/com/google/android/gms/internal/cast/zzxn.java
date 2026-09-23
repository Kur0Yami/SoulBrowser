package com.google.android.gms.internal.cast;

import java.util.Locale;
import java.util.logging.Level;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zzxn extends zzxp {
    public final byte[] d;
    public final int e;
    public int f;

    public zzxn(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) >= 0) {
            this.d = bArr;
            this.f = 0;
            this.e = i;
            return;
        }
        Locale locale = Locale.US;
        throw new IllegalArgumentException(androidx.work.impl.workers.a.s("Array range is invalid. Buffer.length=", length, i, ", offset=0, length="));
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void b(int i, int i2) {
        m((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void c(int i, int i2) {
        m(i << 3);
        l(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void d(int i, int i2) {
        m(i << 3);
        m(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void e(int i, int i2) {
        m((i << 3) | 5);
        n(i2);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void f(int i, long j) {
        m(i << 3);
        o(j);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void g(int i, long j) {
        m((i << 3) | 1);
        p(j);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void h(int i, boolean z) {
        m(i << 3);
        k(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void i(int i, String str) {
        m((i << 3) | 2);
        int i2 = this.f;
        try {
            int q = zzxp.q(str.length() * 3);
            int q2 = zzxp.q(str.length());
            int i3 = this.e;
            byte[] bArr = this.d;
            if (q2 == q) {
                int i4 = i2 + q2;
                this.f = i4;
                int b = zzaam.b(str, bArr, i4, i3 - i4);
                this.f = i2;
                m((b - i2) - q2);
                this.f = b;
                return;
            }
            m(zzaam.a(str));
            int i5 = this.f;
            this.f = zzaam.b(str, bArr, i5, i3 - i5);
        } catch (zzaal e) {
            this.f = i2;
            zzxp.b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
            byte[] bytes = str.getBytes(zzym.f9882a);
            try {
                int length = bytes.length;
                m(length);
                t(bytes, length);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzxo(e2);
            }
        } catch (IndexOutOfBoundsException e3) {
            throw new zzxo(e3);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void j(int i, zzxk zzxkVar) {
        m((i << 3) | 2);
        m(zzxkVar.g());
        zzxkVar.k(this);
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void k(byte b) {
        int i = this.f;
        try {
            int i2 = i + 1;
            try {
                this.d[i] = b;
                this.f = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzxo(i, this.e, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void l(int i) {
        if (i >= 0) {
            m(i);
        } else {
            o(i);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void m(int i) {
        int i2;
        int i3 = this.f;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.d;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.f = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | Uuid.SIZE_BITS);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzxo(i2, this.e, 1, e);
                }
            }
            throw new zzxo(i2, this.e, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void n(int i) {
        int i2 = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(i2, this.e, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void o(long j) {
        int i;
        int i2 = this.f;
        int i3 = this.e;
        byte[] bArr = this.d;
        if (zzxp.f9871c && i3 - i2 >= 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                zzaak.f9609c.a(bArr, zzaak.f + i2, (byte) (((int) j2) | Uuid.SIZE_BITS));
                j2 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            zzaak.f9609c.a(bArr, zzaak.f + i2, (byte) j2);
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                int i4 = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j3) | Uuid.SIZE_BITS);
                    j3 >>>= 7;
                    i2 = i4;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i4;
                    throw new zzxo(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            try {
                bArr[i2] = (byte) j3;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                throw new zzxo(i, i3, 1, e);
            }
        }
        this.f = i;
    }

    @Override // com.google.android.gms.internal.cast.zzxp
    public final void p(long j) {
        int i = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.f = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(i, this.e, 8, e);
        }
    }

    public final void t(byte[] bArr, int i) {
        try {
            System.arraycopy(bArr, 0, this.d, this.f, i);
            this.f += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzxo(this.f, this.e, i, e);
        }
    }
}
