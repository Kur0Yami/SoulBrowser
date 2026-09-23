package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ListMultimap<K, V> {
    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final /* bridge */ /* synthetic */ Collection a(Object obj) {
        a(obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final /* bridge */ /* synthetic */ Collection get(Object obj) {
        get(obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection h(Collection collection, Object obj) {
        List list = (List) collection;
        if (list instanceof RandomAccess) {
            return new AbstractMapBasedMultimap.WrappedList(obj, list, null);
        }
        return new AbstractMapBasedMultimap.WrappedList(obj, list, null);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public abstract List f();

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public List a(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public List get(Object obj) {
        throw null;
    }
}
