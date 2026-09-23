package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class RegularImmutableList<E> extends ImmutableList<E> {
    public static final ImmutableList i = new RegularImmutableList(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public RegularImmutableList(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int c(int i2, Object[] objArr) {
        Object[] objArr2 = this.g;
        int i3 = this.h;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] g() {
        return this.g;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        Preconditions.g(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int i() {
        return this.h;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int k() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
