package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzeq {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f6806a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f6807c;
    public int d;

    public zzeq(byte[] bArr, int i) {
        this.f6806a = bArr;
        this.d = i;
    }

    public final void a(zzer zzerVar) {
        byte[] bArr = zzerVar.f6834a;
        int i = zzerVar.f6835c;
        this.f6806a = bArr;
        this.b = 0;
        this.f6807c = 0;
        this.d = i;
        d(zzerVar.b * 8);
    }

    public final int b() {
        return ((this.d - this.b) * 8) - this.f6807c;
    }

    public final int c() {
        boolean z;
        if (this.f6807c == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        return this.b;
    }

    public final void d(int i) {
        int i2 = i / 8;
        this.b = i2;
        this.f6807c = i - (i2 * 8);
        m();
    }

    public final void e() {
        int i = this.f6807c + 1;
        this.f6807c = i;
        if (i == 8) {
            this.f6807c = 0;
            this.b++;
        }
        m();
    }

    public final void f(int i) {
        int i2 = i / 8;
        int i3 = this.b + i2;
        this.b = i3;
        int i4 = (i - (i2 * 8)) + this.f6807c;
        this.f6807c = i4;
        if (i4 > 7) {
            this.b = i3 + 1;
            this.f6807c = i4 - 8;
        }
        m();
    }

    public final boolean g() {
        int i = this.f6806a[this.b] & (Uuid.SIZE_BITS >> this.f6807c);
        e();
        if (i != 0) {
            return true;
        }
        return false;
    }

    public final int h(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f6807c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f6807c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f6807c = i4;
            byte[] bArr = this.f6806a;
            int i5 = this.b;
            this.b = i5 + 1;
            i3 |= (bArr[i5] & UByte.MAX_VALUE) << i4;
        }
        byte[] bArr2 = this.f6806a;
        int i6 = this.b;
        int i7 = i3 | ((bArr2[i6] & UByte.MAX_VALUE) >> (8 - i2));
        int i8 = 32 - i;
        if (i2 == 8) {
            this.f6807c = 0;
            this.b = i6 + 1;
        }
        int i9 = ((-1) >>> i8) & i7;
        m();
        return i9;
    }

    public final long i(int i) {
        if (i <= 32) {
            int h = h(i);
            String str = zzfj.f7405a;
            return 4294967295L & h;
        }
        int h2 = h(i - 32);
        int h3 = h(32);
        String str2 = zzfj.f7405a;
        return (4294967295L & h3) | ((h2 & 4294967295L) << 32);
    }

    public final void j(byte[] bArr, int i) {
        int i2;
        int i3 = 0;
        while (true) {
            i2 = i >> 3;
            if (i3 >= i2) {
                break;
            }
            byte[] bArr2 = this.f6806a;
            int i4 = this.b;
            int i5 = i4 + 1;
            this.b = i5;
            byte b = bArr2[i4];
            int i6 = this.f6807c;
            byte b2 = (byte) (b << i6);
            bArr[i3] = b2;
            bArr[i3] = (byte) (((bArr2[i5] & UByte.MAX_VALUE) >> (8 - i6)) | b2);
            i3++;
        }
        int i7 = i & 7;
        if (i7 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i2] & (KotlinVersion.MAX_COMPONENT_VALUE >> i7));
        bArr[i2] = b3;
        int i8 = this.f6807c;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.f6806a;
            int i9 = this.b;
            this.b = i9 + 1;
            b3 = (byte) (b3 | ((bArr3[i9] & UByte.MAX_VALUE) << i8));
            bArr[i2] = b3;
            i8 -= 8;
        }
        int i10 = i8 + i7;
        this.f6807c = i10;
        byte[] bArr4 = this.f6806a;
        int i11 = this.b;
        bArr[i2] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | b3);
        if (i10 == 8) {
            this.f6807c = 0;
            this.b = i11 + 1;
        }
        m();
    }

    public final void k() {
        if (this.f6807c == 0) {
            return;
        }
        this.f6807c = 0;
        this.b++;
        m();
    }

    public final void l(int i) {
        boolean z;
        if (this.f6807c == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        this.b += i;
        m();
    }

    public final void m() {
        int i;
        int i2 = this.b;
        boolean z = false;
        if (i2 >= 0 && (i2 < (i = this.d) || (i2 == i && this.f6807c == 0))) {
            z = true;
        }
        zzgqa.f(z);
    }

    public zzeq() {
        this.f6806a = zzfj.b;
    }
}
