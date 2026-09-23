package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes3.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Comparator m = new Object();
    public final boolean f;
    public Node g;
    public final Node j;
    public EntrySet k;
    public KeySet l;
    public int h = 0;
    public int i = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f12689c = m;

    /* renamed from: com.google.gson.internal.LinkedTreeMap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* loaded from: classes3.dex */
    public class EntrySet extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$EntrySet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends LinkedTreeMap<Object, Object>.LinkedTreeMapIterator<Map.Entry<Object, Object>> {
        }

        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            LinkedTreeMap.this.clear();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0027 A[RETURN] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean contains(java.lang.Object r5) {
            /*
                r4 = this;
                boolean r0 = r5 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L29
                com.google.gson.internal.LinkedTreeMap r0 = com.google.gson.internal.LinkedTreeMap.this
                java.util.Map$Entry r5 = (java.util.Map.Entry) r5
                java.lang.Object r2 = r5.getKey()
                r3 = 0
                if (r2 == 0) goto L15
                com.google.gson.internal.LinkedTreeMap$Node r0 = r0.a(r2, r1)     // Catch: java.lang.ClassCastException -> L15
                goto L16
            L15:
                r0 = r3
            L16:
                if (r0 == 0) goto L25
                java.lang.Object r2 = r0.l
                java.lang.Object r5 = r5.getValue()
                boolean r5 = j$.util.Objects.equals(r2, r5)
                if (r5 == 0) goto L25
                r3 = r0
            L25:
                if (r3 == 0) goto L29
                r5 = 1
                return r5
            L29:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.EntrySet.contains(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new LinkedTreeMapIterator();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean remove(java.lang.Object r6) {
            /*
                r5 = this;
                boolean r0 = r6 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 != 0) goto L6
                goto L28
            L6:
                java.util.Map$Entry r6 = (java.util.Map.Entry) r6
                java.lang.Object r0 = r6.getKey()
                com.google.gson.internal.LinkedTreeMap r2 = com.google.gson.internal.LinkedTreeMap.this
                r3 = 0
                if (r0 == 0) goto L16
                com.google.gson.internal.LinkedTreeMap$Node r0 = r2.a(r0, r1)     // Catch: java.lang.ClassCastException -> L16
                goto L17
            L16:
                r0 = r3
            L17:
                if (r0 == 0) goto L26
                java.lang.Object r4 = r0.l
                java.lang.Object r6 = r6.getValue()
                boolean r6 = j$.util.Objects.equals(r4, r6)
                if (r6 == 0) goto L26
                r3 = r0
            L26:
                if (r3 != 0) goto L29
            L28:
                return r1
            L29:
                r6 = 1
                r2.c(r3, r6)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.EntrySet.remove(java.lang.Object):boolean");
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return LinkedTreeMap.this.h;
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySet extends AbstractSet<K> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$KeySet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends LinkedTreeMap<Object, Object>.LinkedTreeMapIterator<Object> {
            @Override // com.google.gson.internal.LinkedTreeMap.LinkedTreeMapIterator, java.util.Iterator
            public final Object next() {
                return a().j;
            }
        }

        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new LinkedTreeMapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            Node node = null;
            if (obj != null) {
                try {
                    node = linkedTreeMap.a(obj, false);
                } catch (ClassCastException unused) {
                }
            }
            if (node != null) {
                linkedTreeMap.c(node, true);
            }
            if (node == null) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return LinkedTreeMap.this.h;
        }
    }

    /* loaded from: classes3.dex */
    public abstract class LinkedTreeMapIterator<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public Node f12692c;
        public Node f = null;
        public int g;

        public LinkedTreeMapIterator() {
            this.f12692c = LinkedTreeMap.this.j.h;
            this.g = LinkedTreeMap.this.i;
        }

        public final Node a() {
            Node node = this.f12692c;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (node != linkedTreeMap.j) {
                if (linkedTreeMap.i == this.g) {
                    this.f12692c = node.h;
                    this.f = node;
                    return node;
                }
                throw new ConcurrentModificationException();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f12692c != LinkedTreeMap.this.j) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            return a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node node = this.f;
            if (node != null) {
                LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
                linkedTreeMap.c(node, true);
                this.f = null;
                this.g = linkedTreeMap.i;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public LinkedTreeMap(boolean z) {
        this.f = z;
        this.j = new Node(z);
    }

    public final Node a(Object obj, boolean z) {
        int i;
        Node node;
        Comparable comparable;
        Node node2;
        Node node3 = this.g;
        Comparator comparator = m;
        Comparator comparator2 = this.f12689c;
        if (node3 != null) {
            if (comparator2 == comparator) {
                comparable = (Comparable) obj;
            } else {
                comparable = null;
            }
            while (true) {
                Object obj2 = node3.j;
                if (comparable != null) {
                    i = comparable.compareTo(obj2);
                } else {
                    i = comparator2.compare(obj, obj2);
                }
                if (i == 0) {
                    return node3;
                }
                if (i < 0) {
                    node2 = node3.f;
                } else {
                    node2 = node3.g;
                }
                if (node2 == null) {
                    break;
                }
                node3 = node2;
            }
        } else {
            i = 0;
        }
        Node node4 = node3;
        if (!z) {
            return null;
        }
        Node node5 = this.j;
        if (node4 == null) {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            node = new Node(this.f, node4, obj, node5, node5.i);
            this.g = node;
        } else {
            node = new Node(this.f, node4, obj, node5, node5.i);
            if (i < 0) {
                node4.f = node;
            } else {
                node4.g = node;
            }
            b(node4, true);
        }
        this.h++;
        this.i++;
        return node;
    }

    public final void b(Node node, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        while (node != null) {
            Node node2 = node.f;
            Node node3 = node.g;
            int i5 = 0;
            if (node2 != null) {
                i = node2.m;
            } else {
                i = 0;
            }
            if (node3 != null) {
                i2 = node3.m;
            } else {
                i2 = 0;
            }
            int i6 = i - i2;
            if (i6 == -2) {
                Node node4 = node3.f;
                Node node5 = node3.g;
                if (node5 != null) {
                    i4 = node5.m;
                } else {
                    i4 = 0;
                }
                if (node4 != null) {
                    i5 = node4.m;
                }
                int i7 = i5 - i4;
                if (i7 != -1 && (i7 != 0 || z)) {
                    f(node3);
                    e(node);
                } else {
                    e(node);
                }
                if (z) {
                    return;
                }
            } else if (i6 == 2) {
                Node node6 = node2.f;
                Node node7 = node2.g;
                if (node7 != null) {
                    i3 = node7.m;
                } else {
                    i3 = 0;
                }
                if (node6 != null) {
                    i5 = node6.m;
                }
                int i8 = i5 - i3;
                if (i8 != 1 && (i8 != 0 || z)) {
                    e(node2);
                    f(node);
                } else {
                    f(node);
                }
                if (z) {
                    return;
                }
            } else if (i6 == 0) {
                node.m = i + 1;
                if (z) {
                    return;
                }
            } else {
                node.m = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            node = node.f12693c;
        }
    }

    public final void c(Node node, boolean z) {
        Node node2;
        Node node3;
        int i;
        if (z) {
            Node node4 = node.i;
            node4.h = node.h;
            node.h.i = node4;
        }
        Node node5 = node.f;
        Node node6 = node.g;
        Node node7 = node.f12693c;
        int i2 = 0;
        if (node5 != null && node6 != null) {
            if (node5.m > node6.m) {
                Node node8 = node5.g;
                while (true) {
                    Node node9 = node8;
                    node3 = node5;
                    node5 = node9;
                    if (node5 == null) {
                        break;
                    } else {
                        node8 = node5.g;
                    }
                }
            } else {
                Node node10 = node6.f;
                while (true) {
                    node2 = node6;
                    node6 = node10;
                    if (node6 == null) {
                        break;
                    } else {
                        node10 = node6.f;
                    }
                }
                node3 = node2;
            }
            c(node3, false);
            Node node11 = node.f;
            if (node11 != null) {
                i = node11.m;
                node3.f = node11;
                node11.f12693c = node3;
                node.f = null;
            } else {
                i = 0;
            }
            Node node12 = node.g;
            if (node12 != null) {
                i2 = node12.m;
                node3.g = node12;
                node12.f12693c = node3;
                node.g = null;
            }
            node3.m = Math.max(i, i2) + 1;
            d(node, node3);
            return;
        }
        if (node5 != null) {
            d(node, node5);
            node.f = null;
        } else if (node6 != null) {
            d(node, node6);
            node.g = null;
        } else {
            d(node, null);
        }
        b(node7, false);
        this.h--;
        this.i++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.g = null;
        this.h = 0;
        this.i++;
        Node node = this.j;
        node.i = node;
        node.h = node;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Node node = null;
        if (obj != null) {
            try {
                node = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (node == null) {
            return false;
        }
        return true;
    }

    public final void d(Node node, Node node2) {
        Node node3 = node.f12693c;
        node.f12693c = null;
        if (node2 != null) {
            node2.f12693c = node3;
        }
        if (node3 != null) {
            if (node3.f == node) {
                node3.f = node2;
                return;
            } else {
                node3.g = node2;
                return;
            }
        }
        this.g = node2;
    }

    public final void e(Node node) {
        int i;
        int i2;
        Node node2 = node.f;
        Node node3 = node.g;
        Node node4 = node3.f;
        Node node5 = node3.g;
        node.g = node4;
        if (node4 != null) {
            node4.f12693c = node;
        }
        d(node, node3);
        node3.f = node;
        node.f12693c = node3;
        int i3 = 0;
        if (node2 != null) {
            i = node2.m;
        } else {
            i = 0;
        }
        if (node4 != null) {
            i2 = node4.m;
        } else {
            i2 = 0;
        }
        int max = Math.max(i, i2) + 1;
        node.m = max;
        if (node5 != null) {
            i3 = node5.m;
        }
        node3.m = Math.max(max, i3) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.k;
        if (entrySet == null) {
            EntrySet entrySet2 = new EntrySet();
            this.k = entrySet2;
            return entrySet2;
        }
        return entrySet;
    }

    public final void f(Node node) {
        int i;
        int i2;
        Node node2 = node.f;
        Node node3 = node.g;
        Node node4 = node2.f;
        Node node5 = node2.g;
        node.f = node5;
        if (node5 != null) {
            node5.f12693c = node;
        }
        d(node, node2);
        node2.g = node;
        node.f12693c = node2;
        int i3 = 0;
        if (node3 != null) {
            i = node3.m;
        } else {
            i = 0;
        }
        if (node5 != null) {
            i2 = node5.m;
        } else {
            i2 = 0;
        }
        int max = Math.max(i, i2) + 1;
        node.m = max;
        if (node4 != null) {
            i3 = node4.m;
        }
        node2.m = Math.max(max, i3) + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.gson.internal.LinkedTreeMap$Node r3 = r2.a(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto Lf
            java.lang.Object r3 = r3.l
            return r3
        Lf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        KeySet keySet = this.l;
        if (keySet == null) {
            KeySet keySet2 = new KeySet();
            this.l = keySet2;
            return keySet2;
        }
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null && !this.f) {
                throw new NullPointerException("value == null");
            }
            Node a2 = a(obj, true);
            Object obj3 = a2.l;
            a2.l = obj2;
            return obj3;
        }
        throw new NullPointerException("key == null");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.gson.internal.LinkedTreeMap$Node r3 = r2.a(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto L10
            r1 = 1
            r2.c(r3, r1)
        L10:
            if (r3 == 0) goto L15
            java.lang.Object r3 = r3.l
            return r3
        L15:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.remove(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.h;
    }

    /* loaded from: classes3.dex */
    public static final class Node<K, V> implements Map.Entry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public Node f12693c;
        public Node f;
        public Node g;
        public Node h;
        public Node i;
        public final Object j;
        public final boolean k;
        public Object l;
        public int m;

        public Node(boolean z) {
            this.j = null;
            this.k = z;
            this.i = this;
            this.h = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object obj2 = this.j;
                if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                    Object obj3 = this.l;
                    if (obj3 == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (obj3.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.j;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.l;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int hashCode;
            int i = 0;
            Object obj = this.j;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            Object obj2 = this.l;
            if (obj2 != null) {
                i = obj2.hashCode();
            }
            return i ^ hashCode;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (obj == null && !this.k) {
                throw new NullPointerException("value == null");
            }
            Object obj2 = this.l;
            this.l = obj;
            return obj2;
        }

        public final String toString() {
            return this.j + "=" + this.l;
        }

        public Node(boolean z, Node node, Object obj, Node node2, Node node3) {
            this.f12693c = node;
            this.j = obj;
            this.k = z;
            this.m = 1;
            this.h = node2;
            this.i = node3;
            node3.h = this;
            node2.i = this;
        }
    }
}
