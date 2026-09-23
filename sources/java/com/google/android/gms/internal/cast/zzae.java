package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.DefaultClock;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzae {

    /* renamed from: a, reason: collision with root package name */
    public final long f9617a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f9618c;
    public final AtomicInteger d;
    public final int e;

    public zzae(zzad zzadVar) {
        this.e = zzadVar.f9616a;
        long currentTimeMillis = DefaultClock.getInstance().currentTimeMillis();
        this.f9617a = currentTimeMillis;
        this.b = currentTimeMillis;
        this.d = new AtomicInteger(1);
    }
}
