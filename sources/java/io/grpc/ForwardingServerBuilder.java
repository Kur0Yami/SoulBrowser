package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.ServerBuilder;

/* loaded from: classes3.dex */
public abstract class ForwardingServerBuilder<T extends ServerBuilder<T>> extends ServerBuilder<T> {
    public abstract ServerBuilder a();

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(a(), "delegate");
        return b.toString();
    }
}
