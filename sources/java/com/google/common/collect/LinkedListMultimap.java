package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public class LinkedListMultimap<K, V> extends AbstractMultimap<K, V> implements ListMultimap<K, V>, Serializable {
    public transient Node i;
    public transient Node j;

    /* renamed from: com.google.common.collect.LinkedListMultimap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractSequentialList<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Object f12315c;
        public final /* synthetic */ LinkedListMultimap f;

        public AnonymousClass1(LinkedListMultimap linkedListMultimap, Object obj) {
            this.f12315c = obj;
            this.f = linkedListMultimap;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            new ValueForKeyIterator();
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            this.f.getClass();
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class DistinctKeyIterator implements Iterator<K> {

        /* renamed from: c, reason: collision with root package name */
        public final HashSet f12319c;
        public Node f;
        public Node g;

        public DistinctKeyIterator() {
            this.f12319c = new HashSet(Maps.c(LinkedListMultimap.this.keySet().size()));
            this.f = LinkedListMultimap.this.i;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Node node;
            Node node2 = this.f;
            if (node2 != null) {
                this.g = node2;
                K key = node2.getKey();
                HashSet hashSet = this.f12319c;
                hashSet.add(key);
                do {
                    node = this.f.f12320c;
                    this.f = node;
                    if (node == null) {
                        break;
                    }
                } while (!hashSet.add(node.getKey()));
                return this.g.getKey();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            boolean z;
            if (this.g != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.m(z, "no calls to next() since the last call to remove()");
            new ValueForKeyIterator(this.g.getKey());
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class KeyList<K, V> {
    }

    /* loaded from: classes3.dex */
    public static final class Node<K, V> extends AbstractMap.SimpleEntry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public Node f12320c;
        public Node f;
    }

    /* loaded from: classes3.dex */
    public final class NodeIterator implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public int f12321c;
        public Node f;
        public Node g;
        public Node h;

        public NodeIterator(int i) {
            Preconditions.i(i, 0);
            if (i >= 0) {
                this.h = LinkedListMultimap.this.j;
                this.f12321c = 0;
                while (true) {
                    int i2 = i + 1;
                    if (i >= 0) {
                        break;
                    }
                    a();
                    Node node = this.h;
                    if (node != null) {
                        this.g = node;
                        this.f = node;
                        this.h = node.f;
                        this.f12321c--;
                        i = i2;
                    } else {
                        throw new NoSuchElementException();
                    }
                }
            } else {
                this.f = LinkedListMultimap.this.i;
                while (true) {
                    int i3 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    a();
                    Node node2 = this.f;
                    if (node2 != null) {
                        this.g = node2;
                        this.h = node2;
                        this.f = node2.f12320c;
                        this.f12321c++;
                        i = i3;
                    } else {
                        throw new NoSuchElementException();
                    }
                }
            }
            this.g = null;
        }

        public final void a() {
            throw null;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            a();
            if (this.f != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            a();
            if (this.h != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            a();
            Node node = this.f;
            if (node != null) {
                this.g = node;
                this.h = node;
                this.f = node.f12320c;
                this.f12321c++;
                return node;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f12321c;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            a();
            Node node = this.h;
            if (node != null) {
                this.g = node;
                this.f = node;
                this.h = node.f;
                this.f12321c--;
                return node;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f12321c - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            boolean z;
            a();
            if (this.g != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.m(z, "no calls to next() since the last call to remove()");
            Node node = this.g;
            if (node != this.f) {
                this.h = node.f;
                this.f12321c--;
            } else {
                this.f = node.f12320c;
            }
            Node node2 = node.f;
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            if (node2 != null) {
                node2.f12320c = node.f12320c;
            } else {
                linkedListMultimap.i = node.f12320c;
            }
            Node node3 = node.f12320c;
            if (node3 != null) {
                node3.f = node2;
            } else {
                linkedListMultimap.j = node2;
            }
            node.getKey();
            throw null;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.common.collect.Multimap
    public final /* bridge */ /* synthetic */ Collection a(Object obj) {
        a(obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Map b() {
        return new Multimaps.AsMap(this);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection c() {
        return new AbstractSequentialList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.LinkedListMultimap.1EntriesImpl
            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public final ListIterator listIterator(int i) {
                return new NodeIterator(i);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                throw null;
            }
        };
    }

    @Override // com.google.common.collect.Multimap
    public final void clear() {
        this.i = null;
        this.j = null;
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public final boolean containsKey(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final boolean containsValue(Object obj) {
        Collection collection = this.g;
        if (collection == null) {
            collection = new AbstractSequentialList<Object>() { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl
                @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
                public final ListIterator listIterator(int i) {
                    final NodeIterator nodeIterator = new NodeIterator(i);
                    return new TransformedListIterator<Map.Entry<Object, Object>, Object>(nodeIterator) { // from class: com.google.common.collect.LinkedListMultimap.1ValuesImpl.1
                        @Override // com.google.common.collect.TransformedIterator
                        public final Object a(Object obj2) {
                            return ((Map.Entry) obj2).getValue();
                        }

                        @Override // com.google.common.collect.TransformedListIterator, java.util.ListIterator
                        public final void set(Object obj2) {
                            boolean z;
                            NodeIterator nodeIterator2 = nodeIterator;
                            if (nodeIterator2.g != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            Preconditions.l(z);
                            nodeIterator2.g.setValue(obj2);
                        }
                    };
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    throw null;
                }
            };
            this.g = collection;
        }
        return ((List) collection).contains(obj);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set d() {
        return new Sets.ImprovedAbstractSet<Object>() { // from class: com.google.common.collect.LinkedListMultimap.1KeySetImpl
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                LinkedListMultimap.this.getClass();
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new DistinctKeyIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                LinkedListMultimap.this.a(obj);
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                LinkedListMultimap.this.getClass();
                throw null;
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Iterator e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Multimap
    public final Collection get(Object obj) {
        return new AnonymousClass1(this, obj);
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Collection i() {
        return (List) super.i();
    }

    @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final boolean isEmpty() {
        if (this.i == null) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public final int size() {
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public final List a(Object obj) {
        new ValueForKeyIterator(obj);
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public final List get(Object obj) {
        return new AnonymousClass1(this, obj);
    }

    /* loaded from: classes3.dex */
    public final class ValueForKeyIterator implements ListIterator<V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12322c;

        public ValueForKeyIterator(Object obj) {
            this.f12322c = obj;
            throw null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap$SimpleEntry, com.google.common.collect.LinkedListMultimap$Node] */
        @Override // java.util.ListIterator
        public final void add(Object obj) {
            ?? simpleEntry = new AbstractMap.SimpleEntry(this.f12322c, obj);
            LinkedListMultimap linkedListMultimap = LinkedListMultimap.this;
            if (linkedListMultimap.i != null) {
                Node node = linkedListMultimap.j;
                Objects.requireNonNull(node);
                node.f12320c = simpleEntry;
                simpleEntry.f = linkedListMultimap.j;
                linkedListMultimap.j = simpleEntry;
                throw null;
            }
            linkedListMultimap.j = simpleEntry;
            linkedListMultimap.i = simpleEntry;
            throw null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return 0;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return 0 - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            Preconditions.m(false, "no calls to next() since the last call to remove()");
            throw null;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            Preconditions.l(false);
            throw null;
        }

        public ValueForKeyIterator() {
            throw null;
        }
    }
}
