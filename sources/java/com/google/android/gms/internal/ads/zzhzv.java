package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzv extends zzhzs {
    public final OutputStream g;

    public zzhzv(OutputStream outputStream, int i) {
        super(i);
        this.g = outputStream;
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void A(long j) {
        G(8);
        F(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void B(String str) {
        try {
            int length = str.length() * 3;
            int b = zzhzw.b(length);
            int i = b + length;
            int i2 = this.e;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int c2 = zzidr.c(str, bArr, 0, length);
                x(c2);
                I(bArr, 0, c2);
                return;
            }
            if (i > i2 - this.f) {
                H();
            }
            int b2 = zzhzw.b(str.length());
            int i3 = this.f;
            byte[] bArr2 = this.d;
            try {
                try {
                    if (b2 == b) {
                        int i4 = i3 + b2;
                        this.f = i4;
                        int c3 = zzidr.c(str, bArr2, i4, i2 - i4);
                        this.f = i3;
                        C((c3 - i3) - b2);
                        this.f = c3;
                    } else {
                        int b3 = zzidr.b(str);
                        C(b3);
                        this.f = zzidr.c(str, bArr2, this.f, b3);
                    }
                } catch (zzidq e) {
                    this.f = i3;
                    throw e;
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new zzhzu(e2);
            }
        } catch (zzidq e3) {
            f(str, e3);
        }
    }

    public final void G(int i) {
        if (this.e - this.f < i) {
            H();
        }
    }

    public final void H() {
        this.g.write(this.d, 0, this.f);
        this.f = 0;
    }

    public final void I(byte[] bArr, int i, int i2) {
        int i3 = this.f;
        int i4 = this.e;
        int i5 = i4 - i3;
        byte[] bArr2 = this.d;
        if (i5 >= i2) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.f += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i5);
        int i6 = i + i5;
        this.f = i4;
        H();
        int i7 = i2 - i5;
        if (i7 <= i4) {
            System.arraycopy(bArr, i6, bArr2, 0, i7);
            this.f = i7;
        } else {
            this.g.write(bArr, i6, i7);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzc
    public final void a(byte[] bArr, int i, int i2) {
        I(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void g(int i, int i2) {
        x((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void h(int i, int i2) {
        G(20);
        C(i << 3);
        if (i2 >= 0) {
            C(i2);
        } else {
            D(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void i(int i, int i2) {
        G(20);
        C(i << 3);
        C(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void j(int i, int i2) {
        G(14);
        C((i << 3) | 5);
        E(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void k(int i, long j) {
        G(20);
        C(i << 3);
        D(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void m(int i, long j) {
        G(18);
        C((i << 3) | 1);
        F(j);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void n(int i, boolean z) {
        G(11);
        C(i << 3);
        int i2 = this.f;
        this.d[i2] = z ? (byte) 1 : (byte) 0;
        this.f = i2 + 1;
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
        I(bArr, 0, i);
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
        if (this.f == this.e) {
            H();
        }
        int i = this.f;
        this.d[i] = b;
        this.f = i + 1;
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
        G(5);
        C(i);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void y(int i) {
        G(4);
        E(i);
    }

    @Override // com.google.android.gms.internal.ads.zzhzw
    public final void z(long j) {
        G(10);
        D(j);
    }
}
