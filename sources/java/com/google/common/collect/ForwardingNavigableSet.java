package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Sets;
import java.util.Iterator;
import java.util.NavigableSet;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {

    /* loaded from: classes3.dex */
    public class StandardDescendingSet extends Sets.DescendingSet<E> {
    }

    @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet
    /* renamed from: C0, reason: merged with bridge method [inline-methods] */
    public abstract NavigableSet e0();

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        return e0().ceiling(obj);
    }

    @Override // java.util.NavigableSet
    public Iterator descendingIterator() {
        return e0().descendingIterator();
    }

    @Override // java.util.NavigableSet
    public NavigableSet descendingSet() {
        return e0().descendingSet();
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        return e0().floor(obj);
    }

    @Override // java.util.NavigableSet
    public NavigableSet headSet(Object obj, boolean z) {
        return e0().headSet(obj, z);
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        return e0().higher(obj);
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        return e0().lower(obj);
    }

    @Override // java.util.NavigableSet
    public Object pollFirst() {
        return e0().pollFirst();
    }

    @Override // java.util.NavigableSet
    public Object pollLast() {
        return e0().pollLast();
    }

    @Override // java.util.NavigableSet
    public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return e0().subSet(obj, z, obj2, z2);
    }

    @Override // java.util.NavigableSet
    public NavigableSet tailSet(Object obj, boolean z) {
        return e0().tailSet(obj, z);
    }
}
