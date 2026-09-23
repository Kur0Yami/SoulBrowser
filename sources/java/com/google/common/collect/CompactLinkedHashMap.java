package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import j$.util.Objects;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    public transient long[] o;
    public transient int p;
    public transient int q;

    @Override // com.google.common.collect.CompactHashMap
    public final int a(int i, int i2) {
        if (i >= size()) {
            return i2;
        }
        return i;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int b() {
        int b = super.b();
        this.o = new long[b];
        return b;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final Map c() {
        Map c2 = super.c();
        this.o = null;
        return c2;
    }

    @Override // com.google.common.collect.CompactHashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m()) {
            return;
        }
        this.p = -2;
        this.q = -2;
        long[] jArr = this.o;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashMap
    public final LinkedHashMap e(int i) {
        return new LinkedHashMap(i, 1.0f, false);
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int g() {
        return this.p;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final int h(int i) {
        return ((int) t()[i]) - 1;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void k(int i, Object obj, Object obj2, int i2, int i3) {
        super.k(i, obj, obj2, i2, i3);
        u(this.q, i);
        u(i, -2);
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void l(int i, int i2) {
        int size = size() - 1;
        super.l(i, i2);
        u(((int) (t()[i] >>> 32)) - 1, h(i));
        if (i < size) {
            u(((int) (t()[size] >>> 32)) - 1, i);
            u(i, h(size));
        }
        t()[size] = 0;
    }

    @Override // com.google.common.collect.CompactHashMap
    public final void r(int i) {
        super.r(i);
        this.o = Arrays.copyOf(t(), i);
    }

    public final long[] t() {
        long[] jArr = this.o;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    public final void u(int i, int i2) {
        if (i == -2) {
            this.p = i2;
        } else {
            t()[i] = (t()[i] & (-4294967296L)) | ((i2 + 1) & 4294967295L);
        }
        if (i2 == -2) {
            this.q = i;
        } else {
            t()[i2] = (4294967295L & t()[i2]) | ((i + 1) << 32);
        }
    }
}
