package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzef {

    /* renamed from: a, reason: collision with root package name */
    public int f6437a;
    public long[] b;

    public zzef(int i) {
        this.b = new long[i];
    }

    public final void a() {
        int i = this.f6437a;
        long[] jArr = this.b;
        if (i == jArr.length) {
            this.b = Arrays.copyOf(jArr, i + i);
        }
        long[] jArr2 = this.b;
        int i2 = this.f6437a;
        this.f6437a = i2 + 1;
        jArr2[i2] = 0;
    }

    public final void b(long[] jArr) {
        int i = this.f6437a;
        int length = jArr.length;
        int i2 = i + length;
        long[] jArr2 = this.b;
        int length2 = jArr2.length;
        if (i2 > length2) {
            this.b = Arrays.copyOf(jArr2, Math.max(length2 + length2, i2));
        }
        System.arraycopy(jArr, 0, this.b, this.f6437a, length);
        this.f6437a = i2;
    }

    public final long c(int i) {
        if (i >= 0 && i < this.f6437a) {
            return this.b[i];
        }
        int i2 = this.f6437a;
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 24 + String.valueOf(i2).length()), "Invalid index ", i, ", size is ", i2));
    }
}
