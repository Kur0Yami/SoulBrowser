package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
final class ReverseNaturalOrdering extends Ordering<Comparable<?>> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final ReverseNaturalOrdering f12387c = new Object();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering g() {
        return NaturalOrdering.g;
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
