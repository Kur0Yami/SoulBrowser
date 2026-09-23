package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingLoadingCache<K, V> extends ForwardingCache<K, V> implements LoadingCache<K, V> {

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingLoadingCache<K, V> extends ForwardingLoadingCache<K, V> {
        @Override // com.google.common.cache.ForwardingLoadingCache, com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.cache.ForwardingLoadingCache, com.google.common.cache.ForwardingCache
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Cache e0() {
            return null;
        }
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        throw null;
    }

    @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
    public /* bridge */ /* synthetic */ Object e0() {
        return null;
    }

    @Override // com.google.common.cache.LoadingCache
    public final Object get(Object obj) {
        throw null;
    }

    @Override // com.google.common.cache.ForwardingCache
    /* renamed from: h0 */
    public /* bridge */ /* synthetic */ Cache e0() {
        return null;
    }
}
