package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Map;

@GwtIncompatible
/* loaded from: classes3.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements RangeMap<K, V>, Serializable {

    /* renamed from: com.google.common.collect.ImmutableRangeMap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ImmutableList<Range<Comparable<?>>> {
        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.g(i, 0);
            if (i != 0) {
                if (i != -1) {
                    throw null;
                }
                throw null;
            }
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return 0;
        }
    }

    /* renamed from: com.google.common.collect.ImmutableRangeMap$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ImmutableRangeMap<Comparable<?>, Object> {
        @Override // com.google.common.collect.ImmutableRangeMap, com.google.common.collect.RangeMap
        public final /* bridge */ /* synthetic */ Map a() {
            return a();
        }
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static final class Builder<K extends Comparable<?>, V> {
    }

    /* loaded from: classes3.dex */
    public static final class SerializedForm<K extends Comparable<?>, V> implements Serializable {
    }

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        ImmutableList immutableList = RegularImmutableList.i;
    }

    @Override // com.google.common.collect.RangeMap
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ImmutableMap a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RangeMap)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return Maps.g(a());
    }
}
