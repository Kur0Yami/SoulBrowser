package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Table;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractTable<R, C, V> implements Table<R, C, V> {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f12246c;
    public transient Collection f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.AbstractTable$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends TransformedIterator<Table.Cell<Object, Object, Object>, Object> {
        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return ((Table.Cell) obj).getValue();
        }
    }

    /* loaded from: classes3.dex */
    public final class CellSet extends AbstractSet<Table.Cell<R, C, V>> {
        public CellSet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            AbstractTable.this.b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Map map = (Map) Maps.f(AbstractTable.this.B(), cell.b());
                if (map != null && Collections2.c(map.entrySet(), new AbstractMap.SimpleImmutableEntry(cell.a(), cell.getValue()))) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return AbstractTable.this.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            boolean z;
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Map map = (Map) Maps.f(AbstractTable.this.B(), cell.b());
                if (map != null) {
                    Set entrySet = map.entrySet();
                    AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(cell.a(), cell.getValue());
                    entrySet.getClass();
                    try {
                        z = entrySet.remove(simpleImmutableEntry);
                    } catch (ClassCastException | NullPointerException unused) {
                        z = false;
                    }
                    if (z) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return AbstractTable.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public final class Values extends AbstractCollection<V> {
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            AbstractTable.this.b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractTable.this.c(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return AbstractTable.this.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return AbstractTable.this.size();
        }
    }

    public abstract Iterator a();

    public void b() {
        Iterators.b(u().iterator());
    }

    public boolean c(Object obj) {
        Iterator<V> it = B().values().iterator();
        while (it.hasNext()) {
            if (((Map) it.next()).containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public Set d() {
        return new CellSet();
    }

    public Collection e() {
        return new Values();
    }

    @Override // com.google.common.collect.Table
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Table) {
            return u().equals(((Table) obj).u());
        }
        return false;
    }

    public Iterator f() {
        return new TransformedIterator(u().iterator());
    }

    @Override // com.google.common.collect.Table
    public int hashCode() {
        return u().hashCode();
    }

    public String toString() {
        return B().toString();
    }

    @Override // com.google.common.collect.Table
    public Set u() {
        Set set = this.f12246c;
        if (set == null) {
            Set d = d();
            this.f12246c = d;
            return d;
        }
        return set;
    }
}
