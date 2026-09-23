package io.grpc;

import io.grpc.ServiceProviders;
import java.util.Comparator;
import java.util.logging.Logger;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
@Internal
/* loaded from: classes3.dex */
public final class ManagedChannelRegistry {

    /* renamed from: io.grpc.ManagedChannelRegistry$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Comparator<ManagedChannelProvider> {
        @Override // java.util.Comparator
        public final int compare(ManagedChannelProvider managedChannelProvider, ManagedChannelProvider managedChannelProvider2) {
            return managedChannelProvider.a() - managedChannelProvider2.a();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ManagedChannelPriorityAccessor implements ServiceProviders.PriorityAccessor<ManagedChannelProvider> {
    }

    /* loaded from: classes3.dex */
    public static final class ProviderNotFoundException extends RuntimeException {
    }

    static {
        Logger.getLogger(ManagedChannelRegistry.class.getName());
    }
}
