package io.grpc;

import io.grpc.ServiceProviders;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public final class LoadBalancerRegistry {

    /* renamed from: a, reason: collision with root package name */
    public static final List f21041a;

    /* loaded from: classes3.dex */
    public static final class LoadBalancerPriorityAccessor implements ServiceProviders.PriorityAccessor<LoadBalancerProvider> {
    }

    static {
        Logger logger = Logger.getLogger(LoadBalancerRegistry.class.getName());
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.add(Class.forName("io.grpc.internal.PickFirstLoadBalancerProvider"));
        } catch (ClassNotFoundException e) {
            logger.log(Level.WARNING, "Unable to find pick-first LoadBalancer", (Throwable) e);
        }
        try {
            arrayList.add(Class.forName("io.grpc.util.SecretRoundRobinLoadBalancerProvider$Provider"));
        } catch (ClassNotFoundException e2) {
            logger.log(Level.FINE, "Unable to find round-robin LoadBalancer", (Throwable) e2);
        }
        f21041a = DesugarCollections.unmodifiableList(arrayList);
    }
}
