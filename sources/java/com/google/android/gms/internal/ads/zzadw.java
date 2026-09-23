package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzadw {

    /* renamed from: a, reason: collision with root package name */
    public final long f3939a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3940c;
    public long d = 0;
    public long e;
    public long f;
    public long g;
    public long h;

    public zzadw(long j, long j2, long j3, long j4, long j5, long j6) {
        this.f3939a = j;
        this.b = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.f3940c = j6;
        this.h = a(j2, 0L, j3, j4, j5, j6);
    }

    public static long a(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 < j5 && 1 + j2 < j3) {
            long j7 = (((float) (j5 - j4)) / ((float) (j3 - j2))) * ((float) (j - j2));
            String str = zzfj.f7405a;
            return Math.max(j4, Math.min(((j4 + j7) - j6) - (j7 / 20), j5 - 1));
        }
        return j4;
    }
}
