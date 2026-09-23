package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingCollection<E> extends ForwardingObject implements Collection<E> {
    public boolean add(Object obj) {
        return e0().add(obj);
    }

    public boolean addAll(Collection collection) {
        return e0().addAll(collection);
    }

    public void clear() {
        e0().clear();
    }

    public boolean contains(Object obj) {
        return e0().contains(obj);
    }

    public boolean containsAll(Collection collection) {
        return e0().containsAll(collection);
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0 */
    public abstract Collection e0();

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return e0().isEmpty();
    }

    public Iterator iterator() {
        return e0().iterator();
    }

    public final Object[] n0() {
        return toArray(new Object[size()]);
    }

    public boolean remove(Object obj) {
        return e0().remove(obj);
    }

    public boolean removeAll(Collection collection) {
        return e0().removeAll(collection);
    }

    public boolean retainAll(Collection collection) {
        return e0().retainAll(collection);
    }

    public final String s0() {
        int size = size();
        CollectPreconditions.b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('[');
        boolean z = true;
        for (E e : this) {
            if (!z) {
                sb.append(", ");
            }
            if (e == this) {
                sb.append("(this Collection)");
            } else {
                sb.append(e);
            }
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // java.util.Collection
    public final int size() {
        return e0().size();
    }

    public Object[] toArray() {
        return e0().toArray();
    }

    public Object[] toArray(Object[] objArr) {
        return e0().toArray(objArr);
    }
}
