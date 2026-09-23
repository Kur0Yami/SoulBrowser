package com.google.android.gms.internal.auth;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzha {
    public static final zzha e = new zzha(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f9564a;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f9565c;
    public boolean d;

    public zzha(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f9564a = i;
        this.b = iArr;
        this.f9565c = objArr;
        this.d = z;
    }

    public static zzha a() {
        return new zzha(0, new int[8], new Object[8], true);
    }

    public final void b(int i, Object obj) {
        if (this.d) {
            c(this.f9564a + 1);
            int[] iArr = this.b;
            int i2 = this.f9564a;
            iArr[i2] = i;
            this.f9565c[i2] = obj;
            this.f9564a = i2 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void c(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.f9564a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.f9565c = Arrays.copyOf(this.f9565c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzha)) {
            return false;
        }
        zzha zzhaVar = (zzha) obj;
        int i = this.f9564a;
        if (i == zzhaVar.f9564a) {
            int[] iArr = this.b;
            int[] iArr2 = zzhaVar.b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.f9565c;
                    Object[] objArr2 = zzhaVar.f9565c;
                    int i3 = this.f9564a;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f9564a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 * 31) + i4;
        Object[] objArr = this.f9565c;
        int i7 = this.f9564a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return (i6 * 31) + i3;
    }
}
