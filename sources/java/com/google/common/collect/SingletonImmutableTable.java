package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Tables;

@GwtCompatible
/* loaded from: classes3.dex */
final class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    /* renamed from: g */
    public final ImmutableSet d() {
        Preconditions.h(null, "rowKey");
        Preconditions.h(null, "columnKey");
        Preconditions.h(null, "value");
        Tables.ImmutableCell immutableCell = new Tables.ImmutableCell(null, null, null);
        int i = ImmutableSet.g;
        return new SingletonImmutableSet(immutableCell);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.AbstractTable
    /* renamed from: h */
    public final ImmutableCollection e() {
        int i = ImmutableSet.g;
        return new SingletonImmutableSet(null);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    /* renamed from: j */
    public final ImmutableMap B() {
        return ImmutableMap.l(null, ImmutableMap.l(null, null));
    }

    @Override // com.google.common.collect.Table
    public final int size() {
        return 1;
    }
}
