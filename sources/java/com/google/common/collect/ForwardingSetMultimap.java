package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingSetMultimap<K, V> extends ForwardingMultimap<K, V> implements SetMultimap<K, V> {
    @Override // com.google.common.collect.ForwardingMultimap
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract SetMultimap e0();

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public Set a(Object obj) {
        return e0().a(obj);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public Set get(Object obj) {
        return e0().get(obj);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public final Set i() {
        return e0().i();
    }
}
