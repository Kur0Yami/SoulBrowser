package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
final class SortedIterables {
    public static boolean a(Comparator comparator, Collection collection) {
        Comparator comparator2;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            comparator2 = ((SortedSet) collection).comparator();
            if (comparator2 == null) {
                comparator2 = NaturalOrdering.g;
            }
        } else if (collection instanceof SortedIterable) {
            comparator2 = ((SortedIterable) collection).comparator();
        } else {
            return false;
        }
        return comparator.equals(comparator2);
    }
}
