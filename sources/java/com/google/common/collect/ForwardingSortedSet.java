package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingSortedSet<E> extends ForwardingSet<E> implements SortedSet<E> {
    @Override // com.google.common.collect.ForwardingSet
    /* renamed from: B0, reason: merged with bridge method [inline-methods] */
    public abstract SortedSet e0();

    @Override // java.util.SortedSet
    public Comparator comparator() {
        return e0().comparator();
    }

    @Override // java.util.SortedSet
    public Object first() {
        return e0().first();
    }

    @Override // java.util.SortedSet
    public SortedSet headSet(Object obj) {
        return e0().headSet(obj);
    }

    @Override // java.util.SortedSet
    public Object last() {
        return e0().last();
    }

    @Override // java.util.SortedSet
    public SortedSet subSet(Object obj, Object obj2) {
        return e0().subSet(obj, obj2);
    }

    @Override // java.util.SortedSet
    public SortedSet tailSet(Object obj) {
        return e0().tailSet(obj);
    }
}
