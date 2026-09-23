package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfqm {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7568a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final Clock f7569c;
    public final long d = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U)).longValue() * 1000;
    public final double e;
    public final int f;

    public zzfqm(Object obj, Clock clock, double d, int i) {
        this.f7568a = obj;
        this.f7569c = clock;
        this.b = clock.currentTimeMillis();
        this.e = d;
        this.f = i;
    }

    public final long a() {
        return (this.d + Math.min(Math.max(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F)).longValue(), -900000L), 10000L)) - (this.f7569c.currentTimeMillis() - this.b);
    }
}
