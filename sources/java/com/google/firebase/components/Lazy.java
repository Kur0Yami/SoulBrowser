package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* loaded from: classes3.dex */
public class Lazy<T> implements Provider<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f12627c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f12628a = f12627c;
    public volatile Provider b;

    public Lazy(Provider provider) {
        this.b = provider;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        Object obj;
        Object obj2 = this.f12628a;
        Object obj3 = f12627c;
        if (obj2 == obj3) {
            synchronized (this) {
                try {
                    obj = this.f12628a;
                    if (obj == obj3) {
                        obj = this.b.get();
                        this.f12628a = obj;
                        this.b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        }
        return obj2;
    }
}
