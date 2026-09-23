package io.grpc;

import io.grpc.NameResolver;
import io.grpc.ServiceProviders;
import java.util.logging.Logger;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public final class NameResolverRegistry {

    /* loaded from: classes3.dex */
    public final class NameResolverFactory extends NameResolver.Factory {
    }

    /* loaded from: classes3.dex */
    public static final class NameResolverPriorityAccessor implements ServiceProviders.PriorityAccessor<NameResolverProvider> {
    }

    static {
        Logger.getLogger(NameResolverRegistry.class.getName());
    }
}
