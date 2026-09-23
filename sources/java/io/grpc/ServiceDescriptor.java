package io.grpc;

import com.google.common.base.MoreObjects;

/* loaded from: classes3.dex */
public final class ServiceDescriptor {

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "name");
        b.b(null, "schemaDescriptor");
        b.b(null, "methods");
        b.d = true;
        return b.toString();
    }
}
