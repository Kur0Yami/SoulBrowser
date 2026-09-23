package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class WorkInitializer_Factory implements Factory<WorkInitializer> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2891a;
    public final Provider b;

    /* renamed from: c, reason: collision with root package name */
    public final Provider f2892c;
    public final Provider d;

    public WorkInitializer_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4) {
        this.f2891a = provider;
        this.b = provider2;
        this.f2892c = provider3;
        this.d = provider4;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new WorkInitializer((Executor) this.f2891a.get(), (EventStore) this.b.get(), (WorkScheduler) this.f2892c.get(), (SynchronizationGuard) this.d.get());
    }
}
