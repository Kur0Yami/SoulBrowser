package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class WorkInitializer {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f2889a;
    public final EventStore b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkScheduler f2890c;
    public final SynchronizationGuard d;

    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.f2889a = executor;
        this.b = eventStore;
        this.f2890c = workScheduler;
        this.d = synchronizationGuard;
    }
}
