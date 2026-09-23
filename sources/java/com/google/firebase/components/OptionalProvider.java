package com.google.firebase.components;

import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* loaded from: classes3.dex */
class OptionalProvider<T> implements Provider<T>, Deferred<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Deferred.DeferredHandler f12630c = null;
    public static final Provider d = null;

    /* renamed from: a, reason: collision with root package name */
    public Deferred.DeferredHandler f12631a;
    public volatile Provider b;

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        return this.b.get();
    }
}
