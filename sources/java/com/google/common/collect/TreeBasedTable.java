package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.common.collect.StandardTable;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

@GwtCompatible
/* loaded from: classes3.dex */
public class TreeBasedTable<R, C, V> extends StandardRowSortedTable<R, C, V> {

    /* renamed from: com.google.common.collect.TreeBasedTable$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractIterator<Object> {
        public Object g;

        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Factory<C, V> implements Supplier<Map<C, V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new TreeMap((Comparator) null);
        }
    }

    /* loaded from: classes3.dex */
    public final class TreeRow extends StandardTable<R, C, V>.Row implements SortedMap<C, V> {
        public final Object h;
        public final Object i;

        public TreeRow(Object obj, Object obj2, Object obj3) {
            super(obj);
            this.h = obj2;
            this.i = obj3;
            if (obj2 != null && obj3 != null) {
                comparator();
                throw null;
            }
        }

        @Override // com.google.common.collect.StandardTable.Row
        public final Map b() {
            f();
            return null;
        }

        @Override // com.google.common.collect.StandardTable.Row
        public final void c() {
            f();
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            TreeBasedTable.this.getClass();
            return null;
        }

        @Override // com.google.common.collect.StandardTable.Row, java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            if (e(obj) && super.containsKey(obj)) {
                return true;
            }
            return false;
        }

        public final boolean e(Object obj) {
            if (obj != null) {
                if (this.h == null) {
                    if (this.i == null) {
                        return true;
                    }
                    comparator();
                    throw null;
                }
                comparator();
                throw null;
            }
            return false;
        }

        public final void f() {
            throw null;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            d();
            Map map = this.f;
            if (map != null) {
                return ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.SortedMap
        public final SortedMap headMap(Object obj) {
            obj.getClass();
            Preconditions.d(e(obj));
            return new TreeRow(this.f12401c, this.h, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public final Set keySet() {
            return new Maps.KeySet(this);
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            d();
            Map map = this.f;
            if (map != null) {
                return ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.StandardTable.Row, java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            obj.getClass();
            Preconditions.d(e(obj));
            return super.put(obj, obj2);
        }

        @Override // java.util.SortedMap
        public final SortedMap subMap(Object obj, Object obj2) {
            boolean z;
            obj.getClass();
            if (e(obj)) {
                obj2.getClass();
                if (e(obj2)) {
                    z = true;
                    Preconditions.d(z);
                    return new TreeRow(this.f12401c, obj, obj2);
                }
            }
            z = false;
            Preconditions.d(z);
            return new TreeRow(this.f12401c, obj, obj2);
        }

        @Override // java.util.SortedMap
        public final SortedMap tailMap(Object obj) {
            obj.getClass();
            Preconditions.d(e(obj));
            return new TreeRow(this.f12401c, obj, this.i);
        }
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractTable
    public final void b() {
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final Map g(Object obj) {
        return new StandardTable.Column(obj);
    }

    @Override // com.google.common.collect.StandardTable
    public final boolean j(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final Iterator l() {
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final Map q(Object obj) {
        return new TreeRow(obj, null, null);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public final int size() {
        throw null;
    }
}
