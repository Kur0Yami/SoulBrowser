package io.grpc;

import io.grpc.ServiceProviders;
import java.util.Comparator;
import java.util.logging.Logger;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
@Internal
/* loaded from: classes3.dex */
public final class ServerRegistry {

    /* renamed from: io.grpc.ServerRegistry$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Comparator<ServerProvider> {
        @Override // java.util.Comparator
        public final int compare(ServerProvider serverProvider, ServerProvider serverProvider2) {
            return serverProvider.a() - serverProvider2.a();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ProviderNotFoundException extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public static final class ServerPriorityAccessor implements ServiceProviders.PriorityAccessor<ServerProvider> {
    }

    static {
        Logger.getLogger(ServerRegistry.class.getName());
    }
}
