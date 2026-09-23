package io.grpc;

import com.google.common.base.MoreObjects;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class HttpConnectProxiedSocketAddress extends ProxiedSocketAddress {

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HttpConnectProxiedSocketAddress)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(null, null, null, null);
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "proxyAddr");
        b.b(null, "targetAddr");
        b.b(null, "username");
        b.d("hasPassword", false);
        return b.toString();
    }
}
