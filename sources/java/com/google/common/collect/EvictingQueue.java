package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

@GwtCompatible
/* loaded from: classes3.dex */
public final class EvictingQueue<E> extends ForwardingQueue<E> implements Serializable {
    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
    public final boolean add(Object obj) {
        obj.getClass();
        return true;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        boolean z;
        int size = collection.size();
        if (size >= 0) {
            clear();
            if (size >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z, "number to skip cannot be negative");
            Iterable anonymousClass6 = new FluentIterable<Object>() { // from class: com.google.common.collect.Iterables.6
                public final /* synthetic */ Iterable f;
                public final /* synthetic */ int g;

                /* renamed from: com.google.common.collect.Iterables$6$1 */
                /* loaded from: classes3.dex */
                class AnonymousClass1 implements Iterator<Object> {

                    /* renamed from: c */
                    public boolean f12305c = true;
                    public final /* synthetic */ Iterator f;

                    public AnonymousClass1(Iterator it) {
                        r1 = it;
                    }

                    @Override // java.util.Iterator
                    public final boolean hasNext() {
                        return r1.hasNext();
                    }

                    @Override // java.util.Iterator
                    public final Object next() {
                        Object next = r1.next();
                        this.f12305c = false;
                        return next;
                    }

                    @Override // java.util.Iterator
                    public final void remove() {
                        CollectPreconditions.d(!this.f12305c);
                        r1.remove();
                    }
                }

                public AnonymousClass6(Collection collection2, int size2) {
                    r1 = collection2;
                    r2 = size2;
                }

                @Override // java.lang.Iterable
                public final Iterator iterator() {
                    boolean z2;
                    Iterable iterable = r1;
                    boolean z3 = iterable instanceof List;
                    int i = r2;
                    if (z3) {
                        List list = (List) iterable;
                        return list.subList(Math.min(list.size(), i), list.size()).iterator();
                    }
                    Iterator it = iterable.iterator();
                    it.getClass();
                    if (i >= 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Preconditions.e(z2, "numberToAdvance must be nonnegative");
                    for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
                        it.next();
                    }
                    return new Iterator<Object>() { // from class: com.google.common.collect.Iterables.6.1

                        /* renamed from: c */
                        public boolean f12305c = true;
                        public final /* synthetic */ Iterator f;

                        public AnonymousClass1(Iterator it2) {
                            r1 = it2;
                        }

                        @Override // java.util.Iterator
                        public final boolean hasNext() {
                            return r1.hasNext();
                        }

                        @Override // java.util.Iterator
                        public final Object next() {
                            Object next = r1.next();
                            this.f12305c = false;
                            return next;
                        }

                        @Override // java.util.Iterator
                        public final void remove() {
                            CollectPreconditions.d(!this.f12305c);
                            r1.remove();
                        }
                    };
                }
            };
            if (anonymousClass6 instanceof Collection) {
                return addAll((Collection) anonymousClass6);
            }
            return Iterators.a(this, anonymousClass6.iterator());
        }
        return Iterators.a(this, collection2.iterator());
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final /* bridge */ /* synthetic */ Object e0() {
        return null;
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection
    /* renamed from: h0 */
    public final /* bridge */ /* synthetic */ Collection e0() {
        return null;
    }

    @Override // com.google.common.collect.ForwardingQueue, java.util.Queue
    public final boolean offer(Object obj) {
        obj.getClass();
        return true;
    }

    @Override // com.google.common.collect.ForwardingQueue
    /* renamed from: y0 */
    public final Queue e0() {
        return null;
    }
}
