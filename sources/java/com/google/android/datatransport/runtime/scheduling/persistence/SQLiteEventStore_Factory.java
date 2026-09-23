package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class SQLiteEventStore_Factory implements Factory<SQLiteEventStore> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2911a;
    public final Provider b;

    public SQLiteEventStore_Factory(TimeModule_EventClockFactory timeModule_EventClockFactory, TimeModule_UptimeClockFactory timeModule_UptimeClockFactory, Provider provider, Provider provider2) {
        this.f2911a = provider;
        this.b = provider2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    @Override // javax.inject.Provider
    public final Object get() {
        return new SQLiteEventStore(new Object(), new Object(), (EventStoreConfig) EventStoreModule_StoreConfigFactory.InstanceHolder.f2908a.get(), (SchemaManager) this.f2911a.get(), this.b);
    }
}
