package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

@GwtCompatible
/* loaded from: classes3.dex */
public final class AtomicLongMap<K> implements Serializable {

    /* renamed from: com.google.common.util.concurrent.AtomicLongMap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Function<AtomicLong, Long> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return Long.valueOf(((AtomicLong) obj).get());
        }
    }

    public final String toString() {
        throw null;
    }
}
