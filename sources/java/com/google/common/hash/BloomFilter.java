package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Predicate;
import j$.util.Objects;
import java.io.Serializable;

@Beta
/* loaded from: classes3.dex */
public final class BloomFilter<T> implements Predicate<T>, Serializable {

    /* loaded from: classes3.dex */
    public static final class SerialForm<T> implements Serializable {
    }

    /* loaded from: classes3.dex */
    public interface Strategy extends Serializable {
    }

    static {
        Math.log(2.0d);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        throw null;
    }

    @Override // com.google.common.base.Predicate
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        return Objects.hash(0, null, null, null);
    }
}
