package org.apache.commons.lang3.mutable;

import java.io.Serializable;

/* loaded from: classes4.dex */
public class MutableObject<T> implements Mutable<T>, Serializable {
    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        return true;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "null";
    }
}
