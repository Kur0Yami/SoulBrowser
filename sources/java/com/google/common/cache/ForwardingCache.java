package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ForwardingObject;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingCache<K, V> extends ForwardingObject implements Cache<K, V> {

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingCache<K, V> extends ForwardingCache<K, V> {
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.cache.ForwardingCache
        /* renamed from: h0 */
        public final Cache e0() {
            return null;
        }
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Cache e0();
}
