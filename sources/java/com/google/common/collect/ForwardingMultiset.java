package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multisets;
import java.util.Iterator;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingMultiset<E> extends ForwardingCollection<E> implements Multiset<E> {

    /* loaded from: classes3.dex */
    public class StandardElementSet extends Multisets.ElementSet<E> {
        @Override // com.google.common.collect.Multisets.ElementSet
        public final Multiset a() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }
    }

    @Override // com.google.common.collect.Multiset
    public boolean A(int i, Object obj) {
        return e0().A(i, obj);
    }

    @Override // com.google.common.collect.Multiset
    public int G0(Object obj) {
        return e0().G0(obj);
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        return e0().Q(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int T(int i, Object obj) {
        return e0().T(i, obj);
    }

    @Override // com.google.common.collect.Multiset
    public int add(int i, Object obj) {
        return e0().add(i, obj);
    }

    public Set entrySet() {
        return e0().entrySet();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(Object obj) {
        if (obj != this && !e0().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return e0().hashCode();
    }

    public Set j() {
        return e0().j();
    }

    @Override // com.google.common.collect.ForwardingCollection
    /* renamed from: y0 */
    public abstract Multiset e0();
}
