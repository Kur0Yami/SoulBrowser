package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ImmutableMap;
import j$.util.Map;
import java.util.Collection;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableBiMap<K, V> extends ImmutableMap<K, V> implements BiMap<K, V>, Map {

    /* loaded from: classes3.dex */
    public static final class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap a() {
            if (this.b == 0) {
                return RegularImmutableBiMap.m;
            }
            return new RegularImmutableBiMap(this.f12292a, this.b);
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap c() {
            if (this.b == 0) {
                return RegularImmutableBiMap.m;
            }
            return new RegularImmutableBiMap(this.f12292a, this.b);
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder d(Object obj, Object obj2) {
            super.d(obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder e(Iterable iterable) {
            super.e(iterable);
            return this;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    /* renamed from: n */
    public final ImmutableCollection values() {
        return o().keySet();
    }

    public abstract ImmutableBiMap o();

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Collection values() {
        return o().keySet();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Set values() {
        return o().keySet();
    }
}
