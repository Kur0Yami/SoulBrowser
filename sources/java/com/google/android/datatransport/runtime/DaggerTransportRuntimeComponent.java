package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory;
import com.google.android.datatransport.runtime.TransportRuntimeComponent;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_PackageNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import javax.inject.Provider;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class DaggerTransportRuntimeComponent extends TransportRuntimeComponent {

    /* renamed from: c, reason: collision with root package name */
    public Provider f2821c;
    public InstanceFactory f;
    public Provider g;
    public SchemaManager_Factory h;
    public Provider i;
    public Provider j;
    public SchedulingModule_WorkSchedulerFactory k;
    public DefaultScheduler_Factory l;
    public Uploader_Factory m;
    public WorkInitializer_Factory n;
    public Provider o;

    /* loaded from: classes.dex */
    public static final class Builder implements TransportRuntimeComponent.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Context f2822a;

        /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, com.google.android.datatransport.runtime.DaggerTransportRuntimeComponent] */
        public final DaggerTransportRuntimeComponent a() {
            Context context = this.f2822a;
            if (context != null) {
                ?? obj = new Object();
                obj.f2821c = DoubleCheck.a(ExecutionModule_ExecutorFactory.InstanceHolder.f2824a);
                InstanceFactory instanceFactory = new InstanceFactory(context);
                obj.f = instanceFactory;
                obj.g = DoubleCheck.a(new MetadataBackendRegistry_Factory(obj.f, new CreationContextFactory_Factory(instanceFactory, TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a())));
                InstanceFactory instanceFactory2 = obj.f;
                obj.h = new SchemaManager_Factory(instanceFactory2);
                obj.i = DoubleCheck.a(new EventStoreModule_PackageNameFactory(instanceFactory2));
                obj.j = DoubleCheck.a(new SQLiteEventStore_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), obj.h, obj.i));
                SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactory = new SchedulingModule_WorkSchedulerFactory(obj.f, obj.j, new Object(), TimeModule_UptimeClockFactory.a());
                obj.k = schedulingModule_WorkSchedulerFactory;
                Provider provider = obj.f2821c;
                Provider provider2 = obj.g;
                Provider provider3 = obj.j;
                obj.l = new DefaultScheduler_Factory(provider, provider2, schedulingModule_WorkSchedulerFactory, provider3, provider3);
                InstanceFactory instanceFactory3 = obj.f;
                TimeModule_EventClockFactory a2 = TimeModule_EventClockFactory.a();
                TimeModule_UptimeClockFactory a3 = TimeModule_UptimeClockFactory.a();
                Provider provider4 = obj.j;
                obj.m = new Uploader_Factory(instanceFactory3, provider2, provider3, schedulingModule_WorkSchedulerFactory, provider, provider3, a2, a3, provider4);
                obj.n = new WorkInitializer_Factory(obj.f2821c, provider4, obj.k, provider4);
                obj.o = DoubleCheck.a(new TransportRuntime_Factory(TimeModule_EventClockFactory.a(), TimeModule_UptimeClockFactory.a(), obj.l, obj.m, obj.n));
                return obj;
            }
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
    }

    @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent
    public final EventStore a() {
        return (EventStore) this.j.get();
    }

    @Override // com.google.android.datatransport.runtime.TransportRuntimeComponent
    public final TransportRuntime b() {
        return (TransportRuntime) this.o.get();
    }
}
