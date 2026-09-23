package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingList<E> extends ForwardingCollection<E> implements List<E> {
    public void add(int i, Object obj) {
        y0();
        Collections.EMPTY_LIST.add(i, obj);
    }

    public boolean addAll(int i, Collection collection) {
        y0();
        return Collections.EMPTY_LIST.addAll(i, collection);
    }

    @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public /* bridge */ /* synthetic */ Object e0() {
        y0();
        return Collections.EMPTY_LIST;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            y0();
            if (!Collections.EMPTY_LIST.equals(obj)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        y0();
        return Collections.EMPTY_LIST.get(i);
    }

    @Override // com.google.common.collect.ForwardingCollection
    /* renamed from: h0 */
    public /* bridge */ /* synthetic */ Collection e0() {
        y0();
        return Collections.EMPTY_LIST;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        y0();
        return Collections.EMPTY_LIST.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        y0();
        return Collections.EMPTY_LIST.indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        y0();
        return Collections.EMPTY_LIST.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        y0();
        return Collections.EMPTY_LIST.listIterator();
    }

    @Override // java.util.List
    public final Object remove(int i) {
        y0();
        return Collections.EMPTY_LIST.remove(i);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        y0();
        return Collections.EMPTY_LIST.set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        y0();
        return Collections.EMPTY_LIST.subList(i, i2);
    }

    public abstract List y0();

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        y0();
        return Collections.EMPTY_LIST.listIterator(i);
    }
}
