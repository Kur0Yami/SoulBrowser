package com.google.common.eventbus;

import java.util.ArrayDeque;
import java.util.Queue;

/* loaded from: classes3.dex */
abstract class Dispatcher {

    /* loaded from: classes3.dex */
    public static final class ImmediateDispatcher extends Dispatcher {
    }

    /* loaded from: classes3.dex */
    public static final class LegacyAsyncDispatcher extends Dispatcher {

        /* loaded from: classes3.dex */
        public static final class EventWithSubscriber {
        }
    }

    /* loaded from: classes3.dex */
    public static final class PerThreadQueuedDispatcher extends Dispatcher {

        /* renamed from: com.google.common.eventbus.Dispatcher$PerThreadQueuedDispatcher$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends ThreadLocal<Queue<Event>> {
            @Override // java.lang.ThreadLocal
            public final Queue<Event> initialValue() {
                return new ArrayDeque();
            }
        }

        /* renamed from: com.google.common.eventbus.Dispatcher$PerThreadQueuedDispatcher$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass2 extends ThreadLocal<Boolean> {
            @Override // java.lang.ThreadLocal
            public final /* bridge */ /* synthetic */ Boolean initialValue() {
                return Boolean.FALSE;
            }
        }

        /* loaded from: classes3.dex */
        public static final class Event {
        }
    }
}
