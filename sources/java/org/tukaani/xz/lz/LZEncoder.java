package org.tukaani.xz.lz;

/* loaded from: classes4.dex */
public abstract class LZEncoder {

    /* renamed from: a, reason: collision with root package name */
    public int f22710a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f22711c;
    public int d;

    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.f22710a;
        if (i4 >= 0) {
            int i5 = (i4 + 1) & (-16);
            System.arraycopy(null, i5, null, 0, this.f22711c - i5);
            this.f22710a -= i5;
            this.b -= i5;
            this.f22711c -= i5;
        }
        int i6 = this.f22711c;
        int i7 = 0 - i6;
        if (i2 > i7) {
            i2 = i7;
        }
        System.arraycopy(bArr, i, null, i6, i2);
        int i8 = this.f22711c + i2;
        this.f22711c = i8;
        if (i8 >= 0) {
            this.b = i8;
        }
        int i9 = this.d;
        if (i9 > 0 && (i3 = this.f22710a) < this.b) {
            this.f22710a = i3 - i9;
            this.d = 0;
            c(i9);
        }
        return i2;
    }

    public final int b(int i) {
        int i2 = this.f22710a + 1;
        this.f22710a = i2;
        int i3 = this.f22711c - i2;
        if (i3 < i) {
            this.d++;
            return 0;
        }
        return i3;
    }

    public abstract void c(int i);
}
