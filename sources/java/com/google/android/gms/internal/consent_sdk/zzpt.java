package com.google.android.gms.internal.consent_sdk;

import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzpt extends zzpq {
    public final OutputStream g;

    public zzpt(OutputStream outputStream, int i) {
        super(i);
        if (outputStream != null) {
            this.g = outputStream;
            return;
        }
        throw new NullPointerException("out");
    }

    public final void C() {
        this.g.write(this.d, 0, this.f);
        this.f = 0;
    }

    public final void D(int i) {
        if (this.e - this.f < i) {
            C();
        }
    }

    public final void E(byte[] bArr, int i) {
        int i2 = this.f;
        int i3 = this.e;
        int i4 = i3 - i2;
        byte[] bArr2 = this.d;
        if (i4 >= i) {
            System.arraycopy(bArr, 0, bArr2, i2, i);
            this.f += i;
            return;
        }
        System.arraycopy(bArr, 0, bArr2, i2, i4);
        this.f = i3;
        C();
        int i5 = i - i4;
        if (i5 <= i3) {
            System.arraycopy(bArr, i4, bArr2, 0, i5);
            this.f = i5;
        } else {
            this.g.write(bArr, i4, i5);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpe
    public final void a(byte[] bArr, int i) {
        E(bArr, i);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void f(byte b) {
        if (this.f == this.e) {
            C();
        }
        int i = this.f;
        this.d[i] = b;
        this.f = i + 1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void g(int i, boolean z) {
        D(11);
        A(i << 3);
        int i2 = this.f;
        this.d[i2] = z ? (byte) 1 : (byte) 0;
        this.f = i2 + 1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void h(byte[] bArr, int i) {
        v(i);
        E(bArr, i);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void i(int i, zzpm zzpmVar) {
        v((i << 3) | 2);
        j(zzpmVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void j(zzpm zzpmVar) {
        v(zzpmVar.g());
        zzpmVar.m(this);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void k(int i, int i2) {
        D(14);
        A((i << 3) | 5);
        y(i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void l(int i) {
        D(4);
        y(i);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void m(int i, long j) {
        D(18);
        A((i << 3) | 1);
        z(j);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void n(long j) {
        D(8);
        z(j);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void o(int i, int i2) {
        D(20);
        A(i << 3);
        if (i2 >= 0) {
            A(i2);
        } else {
            B(i2);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void p(int i) {
        if (i >= 0) {
            v(i);
        } else {
            x(i);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void q(zzrq zzrqVar) {
        v(zzrqVar.zzn());
        zzrqVar.a(this);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void r(int i, String str) {
        v((i << 3) | 2);
        s(str);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void s(String str) {
        try {
            int length = str.length() * 3;
            int c2 = zzpv.c(length);
            int i = c2 + length;
            int i2 = this.e;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int a2 = zzsy.a(str, bArr, 0, length);
                v(a2);
                E(bArr, a2);
                return;
            }
            if (i > i2 - this.f) {
                C();
            }
            int c3 = zzpv.c(str.length());
            int i3 = this.f;
            byte[] bArr2 = this.d;
            try {
                if (c3 == c2) {
                    int i4 = i3 + c3;
                    this.f = i4;
                    int a3 = zzsy.a(str, bArr2, i4, i2 - i4);
                    this.f = i3;
                    A((a3 - i3) - c3);
                    this.f = a3;
                } else {
                    int b = zzsy.b(str);
                    A(b);
                    this.f = zzsy.a(str, bArr2, this.f, b);
                }
            } catch (zzsx e) {
                this.f = i3;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new zzps(e2);
            }
        } catch (zzsx e3) {
            e(str, e3);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void t(int i, int i2) {
        v((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void u(int i, int i2) {
        D(20);
        A(i << 3);
        A(i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void v(int i) {
        D(5);
        A(i);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void w(int i, long j) {
        D(20);
        A(i << 3);
        B(j);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void x(long j) {
        D(10);
        B(j);
    }
}
