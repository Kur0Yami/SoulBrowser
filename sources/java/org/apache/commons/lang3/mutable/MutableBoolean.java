package org.apache.commons.lang3.mutable;

import java.io.Serializable;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

/* loaded from: classes4.dex */
public class MutableBoolean implements Mutable<Boolean>, Serializable, Comparable<MutableBoolean> {
    @Override // java.lang.Comparable
    public final int compareTo(MutableBoolean mutableBoolean) {
        mutableBoolean.getClass();
        List list = BooleanUtils.f22338a;
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableBoolean) {
            return true;
        }
        return false;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Boolean.FALSE;
    }

    public final int hashCode() {
        return Boolean.FALSE.hashCode();
    }

    public final String toString() {
        return String.valueOf(false);
    }
}
