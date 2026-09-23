package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzcvz {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f5520a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f5521c = true;

    public zzcvz(Executor executor, ScheduledExecutorService scheduledExecutorService, zzfmb zzfmbVar) {
        this.f5520a = executor;
        this.b = scheduledExecutorService;
    }
}
