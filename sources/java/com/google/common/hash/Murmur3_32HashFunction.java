package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;

@Immutable
/* loaded from: classes3.dex */
final class Murmur3_32HashFunction extends AbstractHashFunction implements Serializable {

    /* loaded from: classes3.dex */
    public static final class Murmur3_32Hasher extends AbstractHasher {
    }

    static {
        int i = Hashing.f12453a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Murmur3_32HashFunction)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        Murmur3_32HashFunction.class.hashCode();
        throw null;
    }

    public final String toString() {
        throw null;
    }
}
