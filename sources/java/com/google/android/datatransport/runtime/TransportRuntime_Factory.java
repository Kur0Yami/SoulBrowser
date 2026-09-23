package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class TransportRuntime_Factory implements Factory<TransportRuntime> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2834a;
    public final Provider b;

    /* renamed from: c, reason: collision with root package name */
    public final Provider f2835c;

    public TransportRuntime_Factory(TimeModule_EventClockFactory timeModule_EventClockFactory, TimeModule_UptimeClockFactory timeModule_UptimeClockFactory, Provider provider, Provider provider2, Provider provider3) {
        this.f2834a = provider;
        this.b = provider2;
        this.f2835c = provider3;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    @Override // javax.inject.Provider
    public final Object get() {
        return new TransportRuntime(new Object(), new Object(), (Scheduler) this.f2834a.get(), (Uploader) this.b.get(), (WorkInitializer) this.f2835c.get());
    }
}
