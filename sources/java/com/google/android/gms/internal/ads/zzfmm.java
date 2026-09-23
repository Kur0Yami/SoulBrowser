package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public abstract class zzfmm {
    public static final ListenableFuture d = zzgyq.f;

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7481a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfmn f7482c;

    public zzfmm(zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, zzfmn zzfmnVar) {
        this.f7481a = zzgywVar;
        this.b = scheduledExecutorService;
        this.f7482c = zzfmnVar;
    }

    public final zzfml a(ListenableFuture listenableFuture, Object obj) {
        return new zzfml(this, obj, null, listenableFuture, Collections.singletonList(listenableFuture), listenableFuture);
    }

    public abstract String b(Object obj);
}
