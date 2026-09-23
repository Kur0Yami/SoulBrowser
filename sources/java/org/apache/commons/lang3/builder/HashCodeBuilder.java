package org.apache.commons.lang3.builder;

/* loaded from: classes4.dex */
public class HashCodeBuilder implements Builder<Integer> {
    static {
        new b(new a(0), 1);
    }

    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof HashCodeBuilder)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }
}
