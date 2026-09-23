package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.util.concurrent.ListenerCallQueue;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class AbstractService implements Service {

    /* renamed from: com.google.common.util.concurrent.AbstractService$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ListenerCallQueue.Event<Service.Listener> {
        public final String toString() {
            return "starting()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements ListenerCallQueue.Event<Service.Listener> {
        public final String toString() {
            return "running()";
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements ListenerCallQueue.Event<Service.Listener> {
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements ListenerCallQueue.Event<Service.Listener> {
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements ListenerCallQueue.Event<Service.Listener> {
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractService$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12568a;

        static {
            int[] iArr = new int[Service.State.values().length];
            f12568a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12568a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12568a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12568a[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12568a[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12568a[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class HasReachedRunningGuard extends Monitor.Guard {
    }

    /* loaded from: classes3.dex */
    public final class IsStartableGuard extends Monitor.Guard {
    }

    /* loaded from: classes3.dex */
    public final class IsStoppableGuard extends Monitor.Guard {
    }

    /* loaded from: classes3.dex */
    public final class IsStoppedGuard extends Monitor.Guard {
    }

    /* loaded from: classes3.dex */
    public static final class StateSnapshot {
    }

    public String toString() {
        throw null;
    }
}
