package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes3.dex */
final class LexicographicalOrdering<T> extends Ordering<Iterable<T>> implements Serializable {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Iterator<T> it = ((Iterable) obj).iterator();
        Iterator<T> it2 = ((Iterable) obj2).iterator();
        if (it.hasNext()) {
            if (!it2.hasNext()) {
                return 1;
            }
            it.next();
            it2.next();
            throw null;
        }
        if (it2.hasNext()) {
            return -1;
        }
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LexicographicalOrdering)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "null.lexicographical()";
    }
}
