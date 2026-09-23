package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.Immutable;
import j$.util.Objects;
import java.io.Serializable;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
public final class HostAndPort implements Serializable {
    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof HostAndPort)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(null, 0);
    }

    public final String toString() {
        throw null;
    }
}
