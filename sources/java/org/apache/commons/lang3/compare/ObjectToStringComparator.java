package org.apache.commons.lang3.compare;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes4.dex */
public final class ObjectToStringComparator implements Comparator<Object>, Serializable {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return -1;
        }
        String obj3 = obj.toString();
        String obj4 = obj2.toString();
        if (obj3 == obj4) {
            return 0;
        }
        if (obj3 == null) {
            return 1;
        }
        if (obj4 == null) {
            return -1;
        }
        return obj3.compareTo(obj4);
    }
}
