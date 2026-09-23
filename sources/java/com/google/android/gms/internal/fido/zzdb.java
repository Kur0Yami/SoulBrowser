package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Comparator;
import java.util.SortedSet;

/* loaded from: classes3.dex */
final class zzdb {
    public static boolean a(Comparator comparator, Collection collection) {
        Comparator comparator2;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            comparator2 = ((SortedSet) collection).comparator();
            if (comparator2 == null) {
                comparator2 = zzcq.f10288c;
            }
        } else if (collection instanceof zzda) {
            comparator2 = ((zzda) collection).comparator();
        } else {
            return false;
        }
        return comparator.equals(comparator2);
    }
}
