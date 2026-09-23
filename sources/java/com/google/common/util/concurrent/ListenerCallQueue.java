package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class ListenerCallQueue<L> {

    /* loaded from: classes3.dex */
    public interface Event<L> {
    }

    /* loaded from: classes3.dex */
    public static final class PerListenerQueue<L> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public boolean f12592c;

        @Override // java.lang.Runnable
        public final void run() {
            try {
                synchronized (this) {
                    Preconditions.l(this.f12592c);
                    throw null;
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.f12592c = false;
                    throw th;
                }
            }
        }
    }

    static {
        new LazyLogger(ListenerCallQueue.class);
    }
}
