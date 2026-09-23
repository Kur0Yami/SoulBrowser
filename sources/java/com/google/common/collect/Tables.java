package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Table;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Tables {

    /* loaded from: classes3.dex */
    public static abstract class AbstractCell<R, C, V> implements Table.Cell<R, C, V> {
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Table.Cell) {
                Table.Cell cell = (Table.Cell) obj;
                if (Objects.equals(b(), cell.b()) && Objects.equals(a(), cell.a()) && Objects.equals(getValue(), cell.getValue())) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(b(), a(), getValue());
        }

        public final String toString() {
            return "(" + b() + "," + a() + ")=" + getValue();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ImmutableCell<R, C, V> extends AbstractCell<R, C, V> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12407c;
        public final Object f;
        public final Object g;

        public ImmutableCell(Object obj, Object obj2, Object obj3) {
            this.f12407c = obj;
            this.f = obj2;
            this.g = obj3;
        }

        @Override // com.google.common.collect.Table.Cell
        public final Object a() {
            return this.f;
        }

        @Override // com.google.common.collect.Table.Cell
        public final Object b() {
            return this.f12407c;
        }

        @Override // com.google.common.collect.Table.Cell
        public final Object getValue() {
            return this.g;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformedTable<R, C, V1, V2> extends AbstractTable<R, C, V2> {
        @Override // com.google.common.collect.Table
        public final Map B() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final Iterator a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final void b() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final Collection e() {
            throw null;
        }

        @Override // com.google.common.collect.Table
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransposeTable<C, R, V> extends AbstractTable<C, R, V> {
        @Override // com.google.common.collect.Table
        public final Map B() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final Iterator a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final void b() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractTable
        public final boolean c(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Table
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableRowSortedMap<R, C, V> extends UnmodifiableTable<R, C, V> implements RowSortedTable<R, C, V> {
        @Override // com.google.common.collect.Tables.UnmodifiableTable, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public final Map B() {
            throw null;
        }

        @Override // com.google.common.collect.Tables.UnmodifiableTable, com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnmodifiableTable<R, C, V> extends ForwardingTable<R, C, V> implements Serializable {
        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map B() {
            return DesugarCollections.unmodifiableMap(Maps.h(super.B(), new e(3)));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public final Set u() {
            return DesugarCollections.unmodifiableSet(super.u());
        }
    }
}
