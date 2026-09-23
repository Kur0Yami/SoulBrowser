package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class MetadataBackendRegistry_Factory implements Factory<MetadataBackendRegistry> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2848a;
    public final CreationContextFactory_Factory b;

    public MetadataBackendRegistry_Factory(Provider provider, CreationContextFactory_Factory creationContextFactory_Factory) {
        this.f2848a = provider;
        this.b = creationContextFactory_Factory;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new MetadataBackendRegistry((Context) this.f2848a.get(), (CreationContextFactory) this.b.get());
    }
}
