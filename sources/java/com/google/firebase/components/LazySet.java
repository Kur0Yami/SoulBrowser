package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class LazySet<T> implements Provider<Set<T>> {

    /* renamed from: a, reason: collision with root package name */
    public volatile Set f12629a;
    public volatile Set b;

    public final synchronized void a() {
        try {
            Iterator it = this.f12629a.iterator();
            while (it.hasNext()) {
                this.b.add(((Provider) it.next()).get());
            }
            this.f12629a = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                        a();
                    }
                } finally {
                }
            }
        }
        return DesugarCollections.unmodifiableSet(this.b);
    }
}
