package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.cache.LocalCache;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtIncompatible
/* loaded from: classes3.dex */
public interface ReferenceEntry<K, V> {
    ReferenceEntry a();

    LocalCache.ValueReference b();

    int c();

    ReferenceEntry d();

    void e(LocalCache.ValueReference valueReference);

    long f();

    void g(long j);

    Object getKey();

    ReferenceEntry h();

    long i();

    void j(long j);

    ReferenceEntry k();

    void l(ReferenceEntry referenceEntry);

    void n(ReferenceEntry referenceEntry);

    void o(ReferenceEntry referenceEntry);

    void p(ReferenceEntry referenceEntry);

    ReferenceEntry q();
}
