package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.Semaphore;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class Striped<L> {

    /* loaded from: classes3.dex */
    public static final class CompactStriped<L> extends PowerOfTwoStriped<L> {
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class LargeLazyStriped<L> extends PowerOfTwoStriped<L> {
    }

    /* loaded from: classes3.dex */
    public static final class PaddedLock extends ReentrantLock {
    }

    /* loaded from: classes3.dex */
    public static final class PaddedSemaphore extends Semaphore {
    }

    /* loaded from: classes3.dex */
    public static abstract class PowerOfTwoStriped<L> extends Striped<L> {
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class SmallLazyStriped<L> extends PowerOfTwoStriped<L> {

        /* loaded from: classes3.dex */
        public static final class ArrayReference<L> extends WeakReference<L> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakSafeCondition extends ForwardingCondition {
        @Override // com.google.common.util.concurrent.ForwardingCondition
        public final Condition a() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakSafeLock extends ForwardingLock {
        @Override // com.google.common.util.concurrent.ForwardingLock
        public final Lock a() {
            throw null;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock, java.util.concurrent.locks.Lock
        public final Condition newCondition() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakSafeReadWriteLock implements ReadWriteLock {
        @Override // java.util.concurrent.locks.ReadWriteLock
        public final Lock readLock() {
            throw null;
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public final Lock writeLock() {
            throw null;
        }
    }
}
