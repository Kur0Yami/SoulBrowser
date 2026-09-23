package org.apache.commons.text.numbers;

import org.apache.commons.text.numbers.DoubleFormat;

/* loaded from: classes4.dex */
final class ParsedDecimal {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f22497a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f22498c;
    public int d;
    public char[] e;
    public int f;

    /* loaded from: classes4.dex */
    public interface FormatOptions {
    }

    public ParsedDecimal(boolean z, int[] iArr, int i, int i2) {
        this.f22497a = z;
        this.b = iArr;
        this.f22498c = i;
        this.d = i2;
    }

    public final int a(int i, DoubleFormat.AbstractDoubleFormat abstractDoubleFormat) {
        if (c(abstractDoubleFormat)) {
            char[] cArr = this.e;
            int i2 = this.f;
            this.f = i2 + 1;
            cArr[i2] = 0;
        }
        throw null;
    }

    public final int b(int i, DoubleFormat.AbstractDoubleFormat abstractDoubleFormat) {
        int i2;
        int i3 = this.f22498c;
        if (c(abstractDoubleFormat)) {
            i3++;
        }
        if (i < 1) {
            i2 = Math.abs(i) + 2;
        } else {
            int i4 = this.f22498c;
            if (i >= i4) {
                i2 = i - i4;
            } else {
                return i3 + 1;
            }
        }
        return i2 + i3;
    }

    public final boolean c(DoubleFormat.AbstractDoubleFormat abstractDoubleFormat) {
        if (!this.f22497a || this.b[0] == 0) {
            return false;
        }
        return true;
    }

    public final boolean d(int i) {
        int[] iArr = this.b;
        int i2 = iArr[i];
        if (i2 <= 5) {
            if (i2 == 5) {
                if (i >= this.f22498c - 1 && iArr[i - 1] % 2 == 0) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public final String e(DoubleFormat.AbstractDoubleFormat abstractDoubleFormat) {
        int i = this.f22498c + this.d;
        if (i < 1) {
            Math.abs(i);
        }
        this.e = new char[b(i, abstractDoubleFormat)];
        this.f = 0;
        a(i, abstractDoubleFormat);
        throw null;
    }

    public final String f(int i, DoubleFormat.AbstractDoubleFormat abstractDoubleFormat) {
        boolean z;
        int i2 = (this.f22498c + this.d) - i;
        int abs = Math.abs(i2);
        if (i2 == 0) {
            z = false;
        } else {
            z = true;
        }
        int b = b(i, abstractDoubleFormat);
        if (z) {
            if (abs > 0) {
                Math.floor(Math.log10(abs));
                throw null;
            }
            throw null;
        }
        this.e = new char[b];
        this.f = 0;
        a(i, abstractDoubleFormat);
        throw null;
    }

    public final void g(int i) {
        for (int i2 = i - 1; i2 > 0 && this.b[i2] == 0; i2--) {
            i--;
        }
        this.d = (this.f22498c - i) + this.d;
        this.f22498c = i;
    }
}
