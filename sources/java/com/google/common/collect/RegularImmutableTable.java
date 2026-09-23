package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Table;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {

    /* loaded from: classes3.dex */
    public final class CellSet extends IndexedImmutableSet<Table.Cell<R, C, V>> {
        public CellSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                Object i = RegularImmutableTable.this.i(cell.b(), cell.a());
                if (i != null && i.equals(cell.getValue())) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i) {
            return RegularImmutableTable.this.k(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return RegularImmutableTable.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public final class Values extends ImmutableList<V> {
        public Values() {
        }

        @Override // java.util.List
        public final Object get(int i) {
            return RegularImmutableTable.this.l(i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return RegularImmutableTable.this.size();
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    /* renamed from: g */
    public final ImmutableSet d() {
        if (size() == 0) {
            int i = ImmutableSet.g;
            return RegularImmutableSet.n;
        }
        return new CellSet();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    /* renamed from: h */
    public final ImmutableCollection e() {
        if (size() == 0) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
            return RegularImmutableList.i;
        }
        return new Values();
    }

    public abstract Table.Cell k(int i);

    public abstract Object l(int i);
}
