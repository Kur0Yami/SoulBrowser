package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import j$.util.Objects;
import java.util.Arrays;
import java.util.LinkedHashSet;

@GwtIncompatible
/* loaded from: classes3.dex */
final class CompactLinkedHashSet<E> extends CompactHashSet<E> {
    public transient int[] j;
    public transient int[] k;
    public transient int l;
    public transient int m;

    @Override // com.google.common.collect.CompactHashSet
    public final int a(int i, int i2) {
        if (i >= size()) {
            return i2;
        }
        return i;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final int c() {
        int c2 = super.c();
        this.j = new int[c2];
        this.k = new int[c2];
        return c2;
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (s()) {
            return;
        }
        this.l = -2;
        this.m = -2;
        int[] iArr = this.j;
        if (iArr != null && this.k != null) {
            Arrays.fill(iArr, 0, size(), 0);
            Arrays.fill(this.k, 0, size(), 0);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashSet
    public final LinkedHashSet g() {
        LinkedHashSet g = super.g();
        this.j = null;
        this.k = null;
        return g;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final int k() {
        return this.l;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final int m(int i) {
        Objects.requireNonNull(this.k);
        return r0[i] - 1;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final void p() {
        super.p();
        this.l = -2;
        this.m = -2;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final void q(Object obj, int i, int i2, int i3) {
        super.q(obj, i, i2, i3);
        x(this.m, i);
        x(i, -2);
    }

    @Override // com.google.common.collect.CompactHashSet
    public final void r(int i, int i2) {
        int size = size() - 1;
        super.r(i, i2);
        Objects.requireNonNull(this.j);
        x(r4[i] - 1, m(i));
        if (i < size) {
            Objects.requireNonNull(this.j);
            x(r4[size] - 1, i);
            x(i, m(size));
        }
        int[] iArr = this.j;
        Objects.requireNonNull(iArr);
        iArr[size] = 0;
        int[] iArr2 = this.k;
        Objects.requireNonNull(iArr2);
        iArr2[size] = 0;
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] objArr = new Object[size()];
        ObjectArrays.b(this, objArr);
        return objArr;
    }

    @Override // com.google.common.collect.CompactHashSet
    public final void v(int i) {
        super.v(i);
        int[] iArr = this.j;
        Objects.requireNonNull(iArr);
        this.j = Arrays.copyOf(iArr, i);
        int[] iArr2 = this.k;
        Objects.requireNonNull(iArr2);
        this.k = Arrays.copyOf(iArr2, i);
    }

    public final void x(int i, int i2) {
        if (i == -2) {
            this.l = i2;
        } else {
            int[] iArr = this.k;
            Objects.requireNonNull(iArr);
            iArr[i] = i2 + 1;
        }
        if (i2 == -2) {
            this.m = i;
            return;
        }
        int[] iArr2 = this.j;
        Objects.requireNonNull(iArr2);
        iArr2[i2] = i + 1;
    }

    @Override // com.google.common.collect.CompactHashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        return ObjectArrays.c(this, objArr);
    }
}
