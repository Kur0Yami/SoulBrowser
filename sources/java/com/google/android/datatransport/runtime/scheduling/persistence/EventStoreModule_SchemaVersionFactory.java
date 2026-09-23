package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;

/* loaded from: classes.dex */
public final class EventStoreModule_SchemaVersionFactory implements Factory<Integer> {

    /* loaded from: classes.dex */
    public static final class InstanceHolder {

        /* renamed from: a, reason: collision with root package name */
        public static final EventStoreModule_SchemaVersionFactory f2907a = new Object();
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return Integer.valueOf(SchemaManager.h);
    }
}
