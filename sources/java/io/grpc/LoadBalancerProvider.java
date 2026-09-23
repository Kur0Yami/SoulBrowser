package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.LoadBalancer;

@ExperimentalApi
/* loaded from: classes3.dex */
public abstract class LoadBalancerProvider extends LoadBalancer.Factory {

    /* loaded from: classes3.dex */
    public static final class UnknownConfig {
        public final String toString() {
            return "service config is unused";
        }
    }

    public abstract String a();

    public abstract int b();

    public abstract boolean c();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(a(), "policy");
        b.a(b(), "priority");
        b.d("available", c());
        return b.toString();
    }
}
