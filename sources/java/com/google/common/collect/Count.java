package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
final class Count implements Serializable {
    public final boolean equals(Object obj) {
        if (obj instanceof Count) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return Integer.toString(0);
    }
}
