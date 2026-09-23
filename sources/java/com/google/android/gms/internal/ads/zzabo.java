package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzabo {

    /* renamed from: a, reason: collision with root package name */
    public long f3877a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f3878c;
    public long d;
    public long e;
    public long f;
    public final boolean[] g = new boolean[15];
    public int h;

    public final void a() {
        this.d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.h = 0;
        Arrays.fill(this.g, false);
    }

    public final boolean b() {
        return this.d > 15 && this.h == 0;
    }

    public final void c(long j) {
        long j2 = this.d;
        if (j2 == 0) {
            this.f3877a = j;
        } else if (j2 == 1) {
            long j3 = j - this.f3877a;
            this.b = j3;
            this.f = j3;
            this.e = 1L;
        } else {
            long j4 = j - this.f3878c;
            long abs = Math.abs(j4 - this.b);
            int i = (int) (j2 % 15);
            boolean[] zArr = this.g;
            if (abs <= 1000000) {
                this.e++;
                this.f += j4;
                if (zArr[i]) {
                    zArr[i] = false;
                    this.h--;
                }
            } else if (!zArr[i]) {
                zArr[i] = true;
                this.h++;
            }
        }
        this.d++;
        this.f3878c = j;
    }
}
