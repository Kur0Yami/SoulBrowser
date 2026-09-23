package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import com.google.errorprone.annotations.Immutable;
import java.util.Map;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
final class DenseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {

    /* loaded from: classes3.dex */
    public final class Column extends ImmutableArrayMap<R, V> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean h() {
            return true;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final Object p(int i) {
            throw null;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final ImmutableMap q() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ColumnMap extends ImmutableArrayMap<C, ImmutableMap<R, V>> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean h() {
            return false;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final Object p(int i) {
            throw null;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final ImmutableMap q() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ImmutableArrayMap<K, V> extends ImmutableMap.IteratorBasedImmutableMap<K, V> {
        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        public final ImmutableSet d() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final Object get(Object obj) {
            Integer num = (Integer) q().get(obj);
            if (num == null) {
                return null;
            }
            p(num.intValue());
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
        public final UnmodifiableIterator o() {
            return new AbstractIterator<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.DenseImmutableTable.ImmutableArrayMap.1
                public int g = -1;
                public final int h;

                {
                    this.h = ImmutableArrayMap.this.q().size();
                }

                @Override // com.google.common.collect.AbstractIterator
                public final Object a() {
                    int i = this.g + 1;
                    this.g = i;
                    if (i >= this.h) {
                        this.f12232c = AbstractIterator.State.g;
                        return null;
                    }
                    ImmutableArrayMap.this.p(i);
                    throw null;
                }
            };
        }

        public abstract Object p(int i);

        public abstract ImmutableMap q();

        @Override // java.util.Map
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class Row extends ImmutableArrayMap<C, V> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean h() {
            return true;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final Object p(int i) {
            throw null;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final ImmutableMap q() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class RowMap extends ImmutableArrayMap<R, ImmutableMap<C, V>> {
        @Override // com.google.common.collect.ImmutableMap
        public final boolean h() {
            return false;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final Object p(int i) {
            throw null;
        }

        @Override // com.google.common.collect.DenseImmutableTable.ImmutableArrayMap
        public final ImmutableMap q() {
            throw null;
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public final Map B() {
        return ImmutableMap.b(null);
    }

    @Override // com.google.common.collect.ImmutableTable
    public final Object i(Object obj, Object obj2) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableTable
    /* renamed from: j */
    public final ImmutableMap B() {
        return ImmutableMap.b(null);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public final Table.Cell k(int i) {
        throw null;
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public final Object l(int i) {
        throw null;
    }

    @Override // com.google.common.collect.Table
    public final int size() {
        throw null;
    }
}
