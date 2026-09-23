package io.grpc;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@ExperimentalApi
/* loaded from: classes3.dex */
public final class EquivalentAddressGroup {

    @ExperimentalApi
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface Attr {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EquivalentAddressGroup)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "[null/null]";
    }
}
