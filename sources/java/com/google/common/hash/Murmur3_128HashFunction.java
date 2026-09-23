package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;

@Immutable
/* loaded from: classes3.dex */
final class Murmur3_128HashFunction extends AbstractHashFunction implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final HashFunction f12459c = null;

    /* loaded from: classes3.dex */
    public static final class Murmur3_128Hasher extends AbstractStreamingHasher {
    }

    static {
        int i = Hashing.f12453a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Murmur3_128HashFunction) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Murmur3_128HashFunction.class.hashCode();
    }

    public final String toString() {
        return "Hashing.murmur3_128(0)";
    }
}
