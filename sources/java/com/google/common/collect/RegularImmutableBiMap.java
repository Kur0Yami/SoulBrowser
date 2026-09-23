package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.RegularImmutableMap;

@GwtCompatible
/* loaded from: classes3.dex */
final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    public static final RegularImmutableBiMap m = new RegularImmutableBiMap();
    public final transient Object h;
    public final transient Object[] i;
    public final transient int j;
    public final transient int k;
    public final transient RegularImmutableBiMap l;

    public RegularImmutableBiMap() {
        this.h = null;
        this.i = new Object[0];
        this.j = 0;
        this.k = 0;
        this.l = this;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet c() {
        return new RegularImmutableMap.EntrySet(this, this.i, this.j, this.k);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.i, this.j, this.k));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        Object q = RegularImmutableMap.q(this.h, this.i, this.k, this.j, obj);
        if (q == null) {
            return null;
        }
        return q;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean h() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableBiMap
    public final ImmutableBiMap o() {
        return this.l;
    }

    @Override // java.util.Map
    public final int size() {
        return this.k;
    }

    public RegularImmutableBiMap(Object obj, Object[] objArr, int i, RegularImmutableBiMap regularImmutableBiMap) {
        this.h = obj;
        this.i = objArr;
        this.j = 1;
        this.k = i;
        this.l = regularImmutableBiMap;
    }

    public RegularImmutableBiMap(Object[] objArr, int i) {
        this.i = objArr;
        this.k = i;
        this.j = 0;
        int r = i >= 2 ? ImmutableSet.r(i) : 0;
        Object p = RegularImmutableMap.p(objArr, i, r, 0);
        if (!(p instanceof Object[])) {
            this.h = p;
            Object p2 = RegularImmutableMap.p(objArr, i, r, 1);
            if (!(p2 instanceof Object[])) {
                this.l = new RegularImmutableBiMap(p2, objArr, i, this);
                return;
            }
            throw ((ImmutableMap.Builder.DuplicateKey) ((Object[]) p2)[2]).a();
        }
        throw ((ImmutableMap.Builder.DuplicateKey) ((Object[]) p)[2]).a();
    }
}
