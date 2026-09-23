package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzff {

    /* renamed from: a, reason: collision with root package name */
    public long[] f7290a = new long[10];
    public Object[] b = new Object[10];

    /* renamed from: c, reason: collision with root package name */
    public int f7291c;
    public int d;

    public final synchronized void a(long j, Object obj) {
        try {
            if (this.d > 0) {
                if (j <= this.f7290a[((this.f7291c + r0) - 1) % this.b.length]) {
                    b();
                }
            }
            int length = this.b.length;
            if (this.d >= length) {
                int i = length + length;
                long[] jArr = new long[i];
                Object[] objArr = new Object[i];
                int i2 = this.f7291c;
                int i3 = length - i2;
                System.arraycopy(this.f7290a, i2, jArr, 0, i3);
                System.arraycopy(this.b, this.f7291c, objArr, 0, i3);
                int i4 = this.f7291c;
                if (i4 > 0) {
                    System.arraycopy(this.f7290a, 0, jArr, i3, i4);
                    System.arraycopy(this.b, 0, objArr, i3, this.f7291c);
                }
                this.f7290a = jArr;
                this.b = objArr;
                this.f7291c = 0;
            }
            int i5 = this.f7291c;
            int i6 = this.d;
            Object[] objArr2 = this.b;
            int length2 = (i5 + i6) % objArr2.length;
            this.f7290a[length2] = j;
            objArr2[length2] = obj;
            this.d = i6 + 1;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        this.f7291c = 0;
        this.d = 0;
        Arrays.fill(this.b, (Object) null);
    }

    public final synchronized int c() {
        return this.d;
    }

    public final synchronized Object d() {
        if (this.d == 0) {
            return null;
        }
        return f();
    }

    public final synchronized Object e(long j) {
        Object obj;
        obj = null;
        while (this.d > 0 && j - this.f7290a[this.f7291c] >= 0) {
            obj = f();
        }
        return obj;
    }

    public final Object f() {
        boolean z;
        if (this.d > 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        Object[] objArr = this.b;
        int i = this.f7291c;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f7291c = (i + 1) % objArr.length;
        this.d--;
        return obj;
    }
}
