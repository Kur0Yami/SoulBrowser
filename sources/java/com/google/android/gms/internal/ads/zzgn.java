package com.google.android.gms.internal.ads;

import kotlin.UByte;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzgn {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8147a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f8148c;
    public int d = 0;

    public zzgn(byte[] bArr, int i, int i2) {
        this.f8147a = bArr;
        this.f8148c = i;
        this.b = i2;
        i();
    }

    public final void a() {
        int i = 1;
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 == 8) {
            this.d = 0;
            int i3 = this.f8148c;
            if (true == h(i3 + 1)) {
                i = 2;
            }
            this.f8148c = i3 + i;
        }
        i();
    }

    public final void b(int i) {
        int i2 = this.f8148c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f8148c = i4;
        int i5 = (i - (i3 * 8)) + this.d;
        this.d = i5;
        if (i5 > 7) {
            this.f8148c = i4 + 1;
            this.d = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.f8148c) {
                if (h(i2)) {
                    this.f8148c++;
                    i2 += 2;
                }
            } else {
                i();
                return;
            }
        }
    }

    public final boolean c(int i) {
        int i2;
        int i3 = this.f8148c;
        int i4 = i / 8;
        int i5 = i3 + i4;
        int i6 = (this.d + i) - (i4 * 8);
        if (i6 > 7) {
            i5++;
            i6 -= 8;
        }
        while (true) {
            i3++;
            i2 = this.b;
            if (i3 > i5 || i5 >= i2) {
                break;
            }
            if (h(i3)) {
                i5++;
                i3 += 2;
            }
        }
        if (i5 < i2) {
            return true;
        }
        if (i5 == i2 && i6 == 0) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        int i = this.f8147a[this.f8148c] & (Uuid.SIZE_BITS >> this.d);
        a();
        if (i != 0) {
            return true;
        }
        return false;
    }

    public final int e(int i) {
        int i2;
        int i3;
        byte[] bArr;
        this.d += i;
        int i4 = 0;
        while (true) {
            i2 = this.d;
            i3 = 2;
            bArr = this.f8147a;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.d = i5;
            int i6 = this.f8148c;
            i4 |= (bArr[i6] & UByte.MAX_VALUE) << i5;
            if (true != h(i6 + 1)) {
                i3 = 1;
            }
            this.f8148c = i6 + i3;
        }
        int i7 = this.f8148c;
        int i8 = i4 | ((bArr[i7] & UByte.MAX_VALUE) >> (8 - i2));
        int i9 = 32 - i;
        if (i2 == 8) {
            this.d = 0;
            if (true != h(i7 + 1)) {
                i3 = 1;
            }
            this.f8148c = i7 + i3;
        }
        int i10 = ((-1) >>> i9) & i8;
        i();
        return i10;
    }

    public final int f() {
        int g = g();
        int i = g % 2;
        int i2 = 1;
        int i3 = g + 1;
        if (i == 0) {
            i2 = -1;
        }
        return (i3 / 2) * i2;
    }

    public final int g() {
        int i = 0;
        int i2 = 0;
        while (!d()) {
            i2++;
        }
        int i3 = 1 << i2;
        if (i2 > 0) {
            i = e(i2);
        }
        return (i3 - 1) + i;
    }

    public final boolean h(int i) {
        if (i >= 2 && i < this.b) {
            byte[] bArr = this.f8147a;
            if (bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void i() {
        int i;
        int i2 = this.f8148c;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.b) || (i2 == i && this.d == 0))) {
            z = true;
        }
        zzgqa.f(z);
    }
}
