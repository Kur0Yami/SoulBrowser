package com.google.android.gms.internal.consent_sdk;

import androidx.work.impl.workers.a;
import java.util.Locale;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
final class zzpr extends zzpv {
    public final byte[] d;
    public final int e;
    public int f;

    public zzpr(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) >= 0) {
            this.d = bArr;
            this.f = 0;
            this.e = i;
            return;
        }
        Locale locale = Locale.US;
        throw new IllegalArgumentException(a.s("Array range is invalid. Buffer.length=", length, i, ", offset=0, length="));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpe
    public final void a(byte[] bArr, int i) {
        y(bArr, i);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void f(byte b) {
        int i = this.f;
        try {
            int i2 = i + 1;
            try {
                this.d[i] = b;
                this.f = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzps(i, this.e, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void g(int i, boolean z) {
        v(i << 3);
        f(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void h(byte[] bArr, int i) {
        v(i);
        y(bArr, i);
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
        v((i << 3) | 5);
        l(i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void l(int i) {
        int i2 = this.f;
        try {
            byte[] bArr = this.d;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzps(i2, this.e, 4, e);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void m(int i, long j) {
        v((i << 3) | 1);
        n(j);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void n(long j) {
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
            throw new zzps(i, this.e, 8, e);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void o(int i, int i2) {
        v(i << 3);
        p(i2);
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
        int i = this.f;
        try {
            int c2 = zzpv.c(str.length() * 3);
            int c3 = zzpv.c(str.length());
            int i2 = this.e;
            byte[] bArr = this.d;
            if (c3 == c2) {
                int i3 = i + c3;
                this.f = i3;
                int a2 = zzsy.a(str, bArr, i3, i2 - i3);
                this.f = i;
                v((a2 - i) - c3);
                this.f = a2;
                return;
            }
            v(zzsy.b(str));
            int i4 = this.f;
            this.f = zzsy.a(str, bArr, i4, i2 - i4);
        } catch (zzsx e) {
            this.f = i;
            e(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzps(e2);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void t(int i, int i2) {
        v((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void u(int i, int i2) {
        v(i << 3);
        v(i2);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void v(int i) {
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
                    throw new zzps(i2, this.e, 1, e);
                }
            }
            throw new zzps(i2, this.e, 1, e);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void w(int i, long j) {
        v(i << 3);
        x(j);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpv
    public final void x(long j) {
        int i;
        int i2 = this.f;
        boolean z = zzpv.f10075c;
        int i3 = this.e;
        byte[] bArr = this.d;
        if (z && i3 - i2 >= 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                zzsw.j(bArr, i2, (byte) (((int) j2) | Uuid.SIZE_BITS));
                j2 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            zzsw.j(bArr, i2, (byte) j2);
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                i = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j3) | Uuid.SIZE_BITS);
                    j3 >>>= 7;
                    i2 = i;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzps(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            bArr[i2] = (byte) j3;
        }
        this.f = i;
    }

    public final void y(byte[] bArr, int i) {
        try {
            System.arraycopy(bArr, 0, this.d, this.f, i);
            this.f += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzps(this.f, this.e, i, e);
        }
    }
}
