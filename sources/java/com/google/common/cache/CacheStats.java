package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import j$.util.Objects;

@GwtCompatible
/* loaded from: classes3.dex */
public final class CacheStats {
    public final boolean equals(Object obj) {
        if (obj instanceof CacheStats) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(0L, 0L, 0L, 0L, 0L, 0L);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.c("hitCount");
        b.c("missCount");
        b.c("loadSuccessCount");
        b.c("loadExceptionCount");
        b.c("totalLoadTime");
        b.c("evictionCount");
        return b.toString();
    }
}
