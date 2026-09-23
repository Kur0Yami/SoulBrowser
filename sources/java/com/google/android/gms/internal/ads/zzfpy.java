package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzfpy {

    /* renamed from: a, reason: collision with root package name */
    public final long f7551a;
    public final long b;
    public final Clock f;
    public long g;
    public long d = 5;
    public long e = 0;
    public final Random h = new Random();

    /* renamed from: c, reason: collision with root package name */
    public long f7552c = 0;

    public zzfpy(long j, long j2, Clock clock) {
        this.f7551a = j;
        this.b = j2;
        this.f = clock;
        a();
    }

    public final void a() {
        this.g = this.f7551a;
        this.f7552c = 0L;
        this.e = 0L;
    }

    public final long b() {
        double d = this.g;
        double d2 = 0.2d * d;
        long j = (long) (d + d2);
        return ((long) (d - d2)) + ((long) (this.h.nextDouble() * ((j - r0) + 1)));
    }

    public final void c() {
        this.e = this.f.currentTimeMillis() + b();
        double d = this.g;
        this.g = Math.min((long) (d + d), this.b);
        this.f7552c++;
    }

    public final boolean d() {
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J)).intValue() < 0 || this.f7552c <= Math.max(this.d, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(r0)).intValue()) || this.g < this.b) {
            return false;
        }
        return true;
    }

    public final synchronized void e(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.d = i;
    }
}
