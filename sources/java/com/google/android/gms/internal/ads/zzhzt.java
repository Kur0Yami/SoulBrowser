package com.google.android.gms.internal.ads;

import java.util.Locale;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzt extends zzhzw {
    public final byte[] d;
    public final int e;
    public int f;

    public zzhzt(byte[] bArr, int i) {
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

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void A(long j) {
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
            throw new zzhzu(i, this.e, 8, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void B(String str) {
        int i = this.f;
        try {
            int b = zzhzw.b(str.length() * 3);
            int b2 = zzhzw.b(str.length());
            int i2 = this.e;
            byte[] bArr = this.d;
            if (b2 == b) {
                int i3 = i + b2;
                this.f = i3;
                int c2 = zzidr.c(str, bArr, i3, i2 - i3);
                this.f = i;
                x((c2 - i) - b2);
                this.f = c2;
                return;
            }
            x(zzidr.b(str));
            int i4 = this.f;
            this.f = zzidr.c(str, bArr, i4, i2 - i4);
        } catch (zzidq e) {
            this.f = i;
            f(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzhzu(e2);
        }
    }

    public final void C(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.d, this.f, i2);
            this.f += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzhzu(this.f, this.e, i2, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzc
    public final void a(byte[] bArr, int i, int i2) {
        C(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void g(int i, int i2) {
        x((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void h(int i, int i2) {
        x(i << 3);
        w(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void i(int i, int i2) {
        x(i << 3);
        x(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void j(int i, int i2) {
        x((i << 3) | 5);
        y(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void k(int i, long j) {
        x(i << 3);
        z(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final int l() {
        return this.e - this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void m(int i, long j) {
        x((i << 3) | 1);
        A(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void n(int i, boolean z) {
        x(i << 3);
        v(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void o(int i, String str) {
        x((i << 3) | 2);
        B(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void p(int i, zzhzl zzhzlVar) {
        x((i << 3) | 2);
        q(zzhzlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void q(zzhzl zzhzlVar) {
        x(zzhzlVar.k());
        zzhzlVar.u(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void r(byte[] bArr, int i) {
        x(i);
        C(bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void s(int i, zzicc zziccVar) {
        x(11);
        i(2, i);
        x(26);
        u(zziccVar);
        x(12);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void t(int i, zzhzl zzhzlVar) {
        x(11);
        i(2, i);
        p(3, zzhzlVar);
        x(12);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void u(zzicc zziccVar) {
        x(zziccVar.d());
        zziccVar.c(this);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void v(byte b) {
        int i = this.f;
        try {
            int i2 = i + 1;
            try {
                this.d[i] = b;
                this.f = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzhzu(i, this.e, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void w(int i) {
        if (i >= 0) {
            x(i);
        } else {
            z(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void x(int i) {
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
                    throw new zzhzu(i2, this.e, 1, e);
                }
            }
            throw new zzhzu(i2, this.e, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void y(int i) {
        int i2 = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzhzu(i2, this.e, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void z(long j) {
        int i;
        int i2 = this.f;
        int i3 = this.e;
        byte[] bArr = this.d;
        if (zzhzw.f8899c && i3 - i2 >= 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                zzidm.m(bArr, i2, (byte) (((int) j2) | Uuid.SIZE_BITS));
                j2 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            zzidm.m(bArr, i2, (byte) j2);
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
                    throw new zzhzu(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            try {
                bArr[i2] = (byte) j3;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                throw new zzhzu(i, i3, 1, e);
            }
        }
        this.f = i;
    }
}
