package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.lang.Enum;
import java.util.Set;

@J2ktIncompatible
@GwtCompatible
/* loaded from: classes3.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends AbstractBiMap<K, V> {
    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public final void clear() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public final boolean containsValue(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public final Set entrySet() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public final Set keySet() {
        return null;
    }

    @Override // com.google.common.collect.AbstractBiMap
    public final void n0(Object obj) {
        ((Enum) obj).getClass();
    }

    @Override // com.google.common.collect.AbstractBiMap
    public final void s0(Object obj) {
        ((Enum) obj).getClass();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public final Set values() {
        throw null;
    }
}
