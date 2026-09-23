package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class ConcurrentUtils {

    /* loaded from: classes4.dex */
    public static final class ConstantFuture<T> implements Future<T> {
        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return false;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return null;
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return null;
        }
    }
}
