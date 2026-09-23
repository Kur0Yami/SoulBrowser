package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: classes.dex */
public final class SchemaManager_Factory implements Factory<SchemaManager> {

    /* renamed from: a, reason: collision with root package name */
    public final Provider f2913a;

    public SchemaManager_Factory(Provider provider) {
        this.f2913a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SchemaManager((Context) this.f2913a.get(), Integer.valueOf(SchemaManager.h).intValue(), "com.google.android.datatransport.events");
    }
}
