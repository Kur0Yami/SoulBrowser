package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public class CycleDetectingLockFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f12573a;

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ThreadLocal<List<LockGraphNode>> {
        @Override // java.lang.ThreadLocal
        public final List<LockGraphNode> initialValue() {
            return Lists.b();
        }
    }

    /* loaded from: classes3.dex */
    public interface CycleDetectingLock {
    }

    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantReadWriteLock extends ReentrantReadWriteLock implements CycleDetectingLock {
        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public final /* bridge */ /* synthetic */ Lock readLock() {
            return null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public final /* bridge */ /* synthetic */ Lock writeLock() {
            return null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public final ReentrantReadWriteLock.ReadLock readLock() {
            return null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public final ReentrantReadWriteLock.WriteLock writeLock() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class ExampleStackTrace extends IllegalStateException {
        static {
            ImmutableSet.s(3, CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), LockGraphNode.class.getName());
        }
    }

    /* loaded from: classes3.dex */
    public static final class LockGraphNode {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class Policies implements Policy {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Policies[] f12574c = {new Policies() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
        }, new Policies() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
        }, new Policies() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
        }};

        /* JADX INFO: Fake field, exist only in values array */
        Policies EF2;

        public static Policies valueOf(String str) {
            return (Policies) Enum.valueOf(Policies.class, str);
        }

        public static Policies[] values() {
            return (Policies[]) f12574c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public interface Policy {
    }

    /* loaded from: classes3.dex */
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        @Override // java.lang.Throwable
        public final String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb = new StringBuilder(message);
            for (Throwable th = null; th != null; th = th.getCause()) {
                sb.append(", ");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class WithExplicitOrdering<E extends Enum<E>> extends CycleDetectingLockFactory {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.common.collect.MapMaker] */
    static {
        ?? obj = new Object();
        obj.b();
        obj.a();
        new LazyLogger(CycleDetectingLockFactory.class);
        f12573a = new ThreadLocal();
    }

    public static void a(CycleDetectingReentrantLock cycleDetectingReentrantLock) {
        if (!cycleDetectingReentrantLock.isHeldByCurrentThread()) {
            List list = (List) f12573a.get();
            Objects.requireNonNull(list);
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    list.remove(size);
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantLock extends ReentrantLock implements CycleDetectingLock {
        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public final void lock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public final void lockInterruptibly() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public final void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.a(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, TimeUnit timeUnit) {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantReadLock extends ReentrantReadWriteLock.ReadLock {
        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public final void lock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public final void lockInterruptibly() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public final void unlock() {
            super.unlock();
            CycleDetectingLockFactory.a(null);
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, TimeUnit timeUnit) {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantWriteLock extends ReentrantReadWriteLock.WriteLock {
        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public final void lock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public final void lockInterruptibly() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public final void unlock() {
            super.unlock();
            CycleDetectingLockFactory.a(null);
            throw null;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, TimeUnit timeUnit) {
            ThreadLocal threadLocal = CycleDetectingLockFactory.f12573a;
            throw null;
        }
    }
}
