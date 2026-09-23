package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final class zzeui {

    /* renamed from: a, reason: collision with root package name */
    public final ListenableFuture f6947a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final Clock f6948c;

    public zzeui(ListenableFuture listenableFuture, long j, Clock clock) {
        this.f6947a = listenableFuture;
        this.f6948c = clock;
        this.b = clock.elapsedRealtime() + j;
    }
}
