package org.apache.commons.text.similarity;

import j$.util.Objects;

/* loaded from: classes4.dex */
public class IntersectionResult {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(0, 0, 0);
    }

    public final String toString() {
        return "Size A: 0, Size B: 0, Intersection: 0";
    }
}
