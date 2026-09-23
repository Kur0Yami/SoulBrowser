package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class ImmutableAsList<E> extends ImmutableList<E> {

    @J2ktIncompatible
    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm implements Serializable {
    }

    public abstract ImmutableCollection B();

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return B().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        ((RegularContiguousSet) B()).getClass();
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        ((RegularContiguousSet) B()).getClass();
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return B().size();
    }
}
