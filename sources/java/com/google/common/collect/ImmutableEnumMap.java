package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;

@GwtCompatible
/* loaded from: classes3.dex */
final class ImmutableEnumMap<K extends Enum<K>, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class EnumSerializedForm<K extends Enum<K>, V> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean containsKey(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        throw null;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean h() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final UnmodifiableIterator i() {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
    public final UnmodifiableIterator o() {
        throw null;
    }

    @Override // java.util.Map
    public final int size() {
        throw null;
    }
}
