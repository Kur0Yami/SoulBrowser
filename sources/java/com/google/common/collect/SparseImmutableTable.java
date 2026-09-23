package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import com.google.errorprone.annotations.Immutable;
import j$.util.Objects;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    public final ImmutableMap g;
    public final int[] h;
    public final int[] i;

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        ImmutableList immutableList = RegularImmutableList.i;
        int i = ImmutableSet.g;
        RegularImmutableSet regularImmutableSet = RegularImmutableSet.n;
        new SparseImmutableTable(immutableList, regularImmutableSet, regularImmutableSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SparseImmutableTable(ImmutableList immutableList, ImmutableSet immutableSet, ImmutableSet immutableSet2) {
        boolean z;
        ImmutableMap.Builder builder = new ImmutableMap.Builder(immutableSet.size());
        Iterator<E> it = immutableSet.iterator();
        int i = 0;
        while (it.hasNext()) {
            builder.d(it.next(), Integer.valueOf(i));
            i++;
        }
        ImmutableMap b = builder.b(true);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        UnmodifiableIterator it2 = immutableSet.iterator();
        while (it2.hasNext()) {
            linkedHashMap.put(it2.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        UnmodifiableIterator it3 = immutableSet2.iterator();
        while (it3.hasNext()) {
            linkedHashMap2.put(it3.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            Table.Cell cell = (Table.Cell) immutableList.get(i2);
            Object b2 = cell.b();
            Object a2 = cell.a();
            Object value = cell.getValue();
            Integer num = (Integer) ((RegularImmutableMap) b).get(b2);
            Objects.requireNonNull(num);
            iArr[i2] = num.intValue();
            Map map = (Map) linkedHashMap.get(b2);
            Objects.requireNonNull(map);
            Map map2 = map;
            iArr2[i2] = map2.size();
            Object put = map2.put(a2, value);
            if (put == null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Map map3 = (Map) linkedHashMap2.get(a2);
                Objects.requireNonNull(map3);
                map3.put(b2, value);
            } else {
                throw new IllegalArgumentException(Strings.a("Duplicate key: (row=%s, column=%s), values: [%s, %s].", b2, a2, value, put));
            }
        }
        this.h = iArr;
        this.i = iArr2;
        ImmutableMap.Builder builder2 = new ImmutableMap.Builder(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            builder2.d(entry.getKey(), ImmutableMap.b((Map) entry.getValue()));
        }
        this.g = builder2.b(true);
        ImmutableMap.Builder builder3 = new ImmutableMap.Builder(linkedHashMap2.size());
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            builder3.d(entry2.getKey(), ImmutableMap.b((Map) entry2.getValue()));
        }
        builder3.b(true);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public final Map B() {
        return ImmutableMap.b(this.g);
    }

    @Override // com.google.common.collect.ImmutableTable
    /* renamed from: j */
    public final ImmutableMap B() {
        return ImmutableMap.b(this.g);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    public final Table.Cell k(int i) {
        Map.Entry entry = (Map.Entry) this.g.entrySet().a().get(this.h[i]);
        ImmutableMap immutableMap = (ImmutableMap) entry.getValue();
        Map.Entry entry2 = (Map.Entry) immutableMap.entrySet().a().get(this.i[i]);
        Object key = entry.getKey();
        Object key2 = entry2.getKey();
        Object value = entry2.getValue();
        Preconditions.h(key, "rowKey");
        Preconditions.h(key2, "columnKey");
        Preconditions.h(value, "value");
        return new Tables.ImmutableCell(key, key2, value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RegularImmutableTable
    public final Object l(int i) {
        ImmutableMap immutableMap = (ImmutableMap) this.g.values().a().get(this.h[i]);
        return immutableMap.values().a().get(this.i[i]);
    }

    @Override // com.google.common.collect.Table
    public final int size() {
        return this.h.length;
    }
}
