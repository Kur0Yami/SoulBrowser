package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ServiceManager implements ServiceManagerBridge {

    /* renamed from: com.google.common.util.concurrent.ServiceManager$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ListenerCallQueue.Event<Listener> {
        public final String toString() {
            return "healthy()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.ServiceManager$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements ListenerCallQueue.Event<Listener> {
        public final String toString() {
            return "stopped()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class EmptyServiceManagerWarning extends Throwable {
    }

    /* loaded from: classes3.dex */
    public static final class FailedService extends Throwable {
    }

    /* loaded from: classes3.dex */
    public static abstract class Listener {
    }

    /* loaded from: classes3.dex */
    public static final class NoOpService extends AbstractService {
    }

    /* loaded from: classes3.dex */
    public static final class ServiceListener extends Service.Listener {
    }

    /* loaded from: classes3.dex */
    public static final class ServiceManagerState {

        /* renamed from: com.google.common.util.concurrent.ServiceManager$ServiceManagerState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements ListenerCallQueue.Event<Listener> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class AwaitHealthGuard extends Monitor.Guard {
        }

        /* loaded from: classes3.dex */
        public final class StoppedGuard extends Monitor.Guard {
        }
    }

    static {
        new LazyLogger(ServiceManager.class);
    }

    public final String toString() {
        new MoreObjects.ToStringHelper("ServiceManager");
        Collections2.b(Predicates.g(Predicates.f(NoOpService.class)));
        throw null;
    }
}
