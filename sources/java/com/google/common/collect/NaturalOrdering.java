package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class NaturalOrdering extends Ordering<Comparable<?>> implements Serializable {
    public static final NaturalOrdering g = new Object();

    /* renamed from: c, reason: collision with root package name */
    public transient Ordering f12377c;
    public transient Ordering f;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering d() {
        Ordering ordering = this.f12377c;
        if (ordering == null) {
            NullsFirstOrdering nullsFirstOrdering = new NullsFirstOrdering(this);
            this.f12377c = nullsFirstOrdering;
            return nullsFirstOrdering;
        }
        return ordering;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        Ordering ordering = this.f;
        if (ordering == null) {
            NullsLastOrdering nullsLastOrdering = new NullsLastOrdering(this);
            this.f = nullsLastOrdering;
            return nullsLastOrdering;
        }
        return ordering;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering g() {
        return ReverseNaturalOrdering.f12387c;
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
