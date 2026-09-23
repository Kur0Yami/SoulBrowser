package io.opencensus.tags;

import java.util.HashMap;
import java.util.Iterator;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class TagContext {
    public abstract Iterator a();

    public final boolean equals(Object obj) {
        if (!(obj instanceof TagContext)) {
            return false;
        }
        Iterator a2 = a();
        Iterator a3 = ((TagContext) obj).a();
        HashMap hashMap = new HashMap();
        while (a2 != null && a2.hasNext()) {
            Tag tag = (Tag) a2.next();
            if (hashMap.containsKey(tag)) {
                hashMap.put(tag, Integer.valueOf(((Integer) hashMap.get(tag)).intValue() + 1));
            } else {
                hashMap.put(tag, 1);
            }
        }
        while (a3 != null && a3.hasNext()) {
            Tag tag2 = (Tag) a3.next();
            if (!hashMap.containsKey(tag2)) {
                return false;
            }
            int intValue = ((Integer) hashMap.get(tag2)).intValue();
            if (intValue > 1) {
                hashMap.put(tag2, Integer.valueOf(intValue - 1));
            } else {
                hashMap.remove(tag2);
            }
        }
        return hashMap.isEmpty();
    }

    public final int hashCode() {
        Iterator a2 = a();
        int i = 0;
        if (a2 == null) {
            return 0;
        }
        while (a2.hasNext()) {
            Tag tag = (Tag) a2.next();
            if (tag != null) {
                i = tag.hashCode() + i;
            }
        }
        return i;
    }

    public final String toString() {
        return "TagContext";
    }
}
