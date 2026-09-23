package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingMultimap<K, V> extends ForwardingObject implements Multimap<K, V> {
    @Override // com.google.common.collect.Multimap
    public Map G() {
        return e0().G();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean Z(Object obj, Object obj2) {
        return e0().Z(obj, obj2);
    }

    public Collection a(Object obj) {
        return e0().a(obj);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        e0().clear();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean containsKey(Object obj) {
        return e0().containsKey(obj);
    }

    @Override // com.google.common.collect.Multimap
    public final boolean equals(Object obj) {
        if (obj != this && !e0().equals(obj)) {
            return false;
        }
        return true;
    }

    public Collection get(Object obj) {
        return e0().get(obj);
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Multimap e0();

    @Override // com.google.common.collect.Multimap
    public final int hashCode() {
        return e0().hashCode();
    }

    @Override // com.google.common.collect.Multimap
    public Collection i() {
        return e0().i();
    }

    @Override // com.google.common.collect.Multimap
    public final boolean isEmpty() {
        return e0().isEmpty();
    }

    @Override // com.google.common.collect.Multimap
    public Set keySet() {
        return e0().keySet();
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(Object obj, Object obj2) {
        return e0().remove(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        return e0().size();
    }
}
