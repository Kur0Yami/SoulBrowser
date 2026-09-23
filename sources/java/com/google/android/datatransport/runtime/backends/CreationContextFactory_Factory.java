package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;

/* loaded from: classes.dex */
public final class CreationContextFactory_Factory implements Factory<CreationContextFactory> {

    /* renamed from: a, reason: collision with root package name */
    public final InstanceFactory f2844a;

    public CreationContextFactory_Factory(InstanceFactory instanceFactory, TimeModule_EventClockFactory timeModule_EventClockFactory, TimeModule_UptimeClockFactory timeModule_UptimeClockFactory) {
        this.f2844a = instanceFactory;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.datatransport.runtime.time.Clock, java.lang.Object] */
    @Override // javax.inject.Provider
    public final Object get() {
        return new CreationContextFactory((Context) this.f2844a.f2851a, new Object(), new Object());
    }
}
