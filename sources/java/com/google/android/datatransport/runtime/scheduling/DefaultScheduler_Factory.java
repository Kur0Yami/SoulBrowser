package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class DefaultScheduler_Factory implements Factory<DefaultScheduler> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2870a;
    public final Provider b;

    /* renamed from: c, reason: collision with root package name */
    public final SchedulingModule_WorkSchedulerFactory f2871c;
    public final Provider d;
    public final Provider e;

    public DefaultScheduler_Factory(Provider provider, Provider provider2, SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactory, Provider provider3, Provider provider4) {
        this.f2870a = provider;
        this.b = provider2;
        this.f2871c = schedulingModule_WorkSchedulerFactory;
        this.d = provider3;
        this.e = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new DefaultScheduler((Executor) this.f2870a.get(), (BackendRegistry) this.b.get(), (WorkScheduler) this.f2871c.get(), (EventStore) this.d.get(), (SynchronizationGuard) this.e.get());
    }
}
