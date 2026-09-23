package io.grpc;

import com.google.common.base.MoreObjects;
import j$.util.Objects;

@ExperimentalApi
/* loaded from: classes3.dex */
public class StatusOr<T> {
    public final boolean equals(Object obj) {
        if (!(obj instanceof StatusOr)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(null, null);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "value");
        return b.toString();
    }
}
