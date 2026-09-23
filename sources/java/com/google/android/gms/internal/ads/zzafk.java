package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzafk {

    /* renamed from: a, reason: collision with root package name */
    public int f3979a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public int f3980c;
    public int d;
    public int e;
    public int f;
    public int g;

    public final boolean a(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i & (-2097152)) == -2097152 && (i2 = (i >>> 19) & 3) != 1 && (i3 = (i >>> 17) & 3) != 0 && (i4 = (i >>> 12) & 15) != 0 && i4 != 15 && (i5 = (i >>> 10) & 3) != 3) {
            int i8 = i4 - 1;
            this.f3979a = i2;
            this.b = zzafl.f3981a[3 - i3];
            int i9 = zzafl.b[i5];
            this.d = i9;
            int i10 = 2;
            if (i2 == 2) {
                i9 /= 2;
                this.d = i9;
            } else if (i2 == 0) {
                i9 /= 4;
                this.d = i9;
            }
            int i11 = (i >>> 9) & 1;
            int i12 = 1152;
            if (i3 != 1) {
                if (i3 != 2) {
                    i12 = 384;
                }
            } else if (i2 != 3) {
                i12 = 576;
            }
            this.g = i12;
            if (i3 == 3) {
                if (i2 == 3) {
                    i7 = zzafl.f3982c[i8];
                } else {
                    i7 = zzafl.d[i8];
                }
                this.f = i7;
                this.f3980c = (((i7 * 12) / i9) + i11) * 4;
            } else {
                int i13 = 144;
                if (i2 == 3) {
                    if (i3 == 2) {
                        i6 = zzafl.e[i8];
                    } else {
                        i6 = zzafl.f[i8];
                    }
                    this.f = i6;
                    this.f3980c = a.d(i6, 144, i9, i11);
                } else {
                    int i14 = zzafl.g[i8];
                    this.f = i14;
                    if (i3 == 1) {
                        i13 = 72;
                    }
                    this.f3980c = a.d(i13, i14, i9, i11);
                }
            }
            if (((i >> 6) & 3) == 3) {
                i10 = 1;
            }
            this.e = i10;
            return true;
        }
        return false;
    }
}
