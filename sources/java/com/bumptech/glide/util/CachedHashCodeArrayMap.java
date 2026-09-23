package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
public final class CachedHashCodeArrayMap<K, V> extends ArrayMap<K, V> {
    public int k;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final void clear() {
        this.k = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap
    public final void g(SimpleArrayMap simpleArrayMap) {
        this.k = 0;
        super.g(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object h(int i) {
        this.k = 0;
        return super.h(i);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final int hashCode() {
        if (this.k == 0) {
            this.k = super.hashCode();
        }
        return this.k;
    }

    @Override // androidx.collection.SimpleArrayMap
    public final Object i(int i, Object obj) {
        this.k = 0;
        return super.i(i, obj);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        this.k = 0;
        return super.put(obj, obj2);
    }
}
