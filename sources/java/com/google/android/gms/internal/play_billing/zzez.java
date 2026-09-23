package com.google.android.gms.internal.play_billing;

import androidx.work.impl.workers.a;
import java.io.IOException;
import java.util.Locale;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
final class zzez extends zzfc {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f11493c;
    public final int d;
    public int e;

    public zzez(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) >= 0) {
            this.f11493c = bArr;
            this.e = 0;
            this.d = i;
            return;
        }
        Locale locale = Locale.US;
        throw new IllegalArgumentException(a.s("Array range is invalid. Buffer.length=", length, i, ", offset=0, length="));
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final int b() {
        return this.d - this.e;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void c(byte b) {
        int i = this.e;
        try {
            int i2 = i + 1;
            try {
                this.f11493c[i] = b;
                this.e = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzfa(i, this.d, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void d(int i, boolean z) {
        u(i << 3);
        c(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void e(byte[] bArr, int i) {
        u(i);
        z(bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void f(int i, zzev zzevVar) {
        u((i << 3) | 2);
        g(zzevVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void g(zzev zzevVar) {
        u(zzevVar.i());
        zzevVar.m(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void h(int i, int i2) {
        u((i << 3) | 5);
        i(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void i(int i) {
        int i2 = this.e;
        try {
            byte[] bArr = this.f11493c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.e = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfa(i2, this.d, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void j(int i, long j) {
        u((i << 3) | 1);
        k(j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void k(long j) {
        int i = this.e;
        try {
            byte[] bArr = this.f11493c;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.e = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfa(i, this.d, 8, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void l(int i, int i2) {
        u(i << 3);
        m(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void m(int i) {
        if (i >= 0) {
            u(i);
        } else {
            w(i);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void n(zzhc zzhcVar) {
        u(zzhcVar.zzn());
        zzhcVar.a(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void o(int i, zzhc zzhcVar) {
        u(11);
        t(2, i);
        u(26);
        n(zzhcVar);
        u(12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void p(int i, zzev zzevVar) {
        u(11);
        t(2, i);
        f(3, zzevVar);
        u(12);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void q(int i, String str) {
        u((i << 3) | 2);
        r(str);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void r(String str) {
        int i = this.e;
        try {
            int x = zzfc.x(str.length() * 3);
            int x2 = zzfc.x(str.length());
            int i2 = this.d;
            byte[] bArr = this.f11493c;
            if (x2 == x) {
                int i3 = i + x2;
                this.e = i3;
                int a2 = zzio.a(str, bArr, i3, i2 - i3);
                this.e = i;
                u((a2 - i) - x2);
                this.e = a2;
                return;
            }
            u(zzio.b(str));
            int i4 = this.e;
            this.e = zzio.a(str, bArr, i4, i2 - i4);
        } catch (IndexOutOfBoundsException e) {
            throw new IOException("CodedOutputStream was writing to a flat byte array and ran out of space.", e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void s(int i, int i2) {
        u((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void t(int i, int i2) {
        u(i << 3);
        u(i2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void u(int i) {
        int i2;
        int i3 = this.e;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.f11493c;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.e = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | Uuid.SIZE_BITS);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzfa(i2, this.d, 1, e);
                }
            }
            throw new zzfa(i2, this.d, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void v(int i, long j) {
        u(i << 3);
        w(j);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final void w(long j) {
        int i;
        int i2 = this.e;
        boolean z = zzfc.b;
        int i3 = this.d;
        byte[] bArr = this.f11493c;
        if (z && i3 - i2 >= 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                zzij.f11541c.d(bArr, zzij.f + i2, (byte) (((int) j2) | Uuid.SIZE_BITS));
                j2 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            zzij.f11541c.d(bArr, zzij.f + i2, (byte) j2);
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                i = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j3) | Uuid.SIZE_BITS);
                    j3 >>>= 7;
                    i2 = i;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzfa(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            bArr[i2] = (byte) j3;
        }
        this.e = i;
    }

    public final void z(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f11493c, this.e, i2);
            this.e += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzfa(this.e, this.d, i2, e);
        }
    }
}
