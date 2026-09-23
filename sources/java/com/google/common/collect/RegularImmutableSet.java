package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class RegularImmutableSet<E> extends ImmutableSet<E> {
    public static final Object[] m;
    public static final RegularImmutableSet n;
    public final transient Object[] h;
    public final transient int i;
    public final transient Object[] j;
    public final transient int k;
    public final transient int l;

    static {
        Object[] objArr = new Object[0];
        m = objArr;
        n = new RegularImmutableSet(objArr, objArr, 0, 0, 0);
    }

    public RegularImmutableSet(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.h = objArr;
        this.i = i;
        this.j = objArr2;
        this.k = i2;
        this.l = i3;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        Object[] objArr2 = this.h;
        int i2 = this.l;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.j;
            if (objArr.length != 0) {
                int c2 = Hashing.c(obj);
                while (true) {
                    int i = c2 & this.k;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    c2 = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] g() {
        return this.h;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int i() {
        return this.l;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int k() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return a().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList u() {
        return ImmutableList.q(this.l, this.h);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean v() {
        return true;
    }
}
