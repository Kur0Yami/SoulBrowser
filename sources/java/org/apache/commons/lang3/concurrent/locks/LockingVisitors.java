package org.apache.commons.lang3.concurrent.locks;

import j$.util.Objects;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.StampedLock;
import org.apache.commons.lang3.builder.AbstractSupplier;

/* loaded from: classes4.dex */
public class LockingVisitors {

    /* loaded from: classes4.dex */
    public static class LockVisitor<O, L> {

        /* loaded from: classes4.dex */
        public static class LVBuilder<O, L, B extends LVBuilder<O, L, B>> extends AbstractSupplier<LockVisitor<O, L>, B, RuntimeException> {
            public LockVisitor a() {
                new LockVisitor(this);
                throw null;
            }

            @Override // org.apache.commons.lang3.function.FailableSupplier
            public /* bridge */ /* synthetic */ Object get() {
                a();
                throw null;
            }
        }

        public LockVisitor(LVBuilder lVBuilder) {
            Objects.requireNonNull(null, "object");
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static class ReadWriteLockVisitor<O> extends LockVisitor<O, ReadWriteLock> {

        /* loaded from: classes4.dex */
        public static class Builder<O> extends LockVisitor.LVBuilder<O, ReadWriteLock, Builder<O>> {
            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder
            public final LockVisitor a() {
                new LockVisitor(this);
                throw null;
            }

            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder, org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                new LockVisitor(this);
                throw null;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class ReentrantLockVisitor<O> extends LockVisitor<O, ReentrantLock> {

        /* loaded from: classes4.dex */
        public static class Builder<O> extends LockVisitor.LVBuilder<O, ReentrantLock, Builder<O>> {
            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder
            public final LockVisitor a() {
                new LockVisitor(this);
                throw null;
            }

            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder, org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                new LockVisitor(this);
                throw null;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class StampedLockVisitor<O> extends LockVisitor<O, StampedLock> {

        /* loaded from: classes4.dex */
        public static class Builder<O> extends LockVisitor.LVBuilder<O, StampedLock, Builder<O>> {
            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder
            public final LockVisitor a() {
                new LockVisitor(this);
                throw null;
            }

            @Override // org.apache.commons.lang3.concurrent.locks.LockingVisitors.LockVisitor.LVBuilder, org.apache.commons.lang3.function.FailableSupplier
            public final Object get() {
                new LockVisitor(this);
                throw null;
            }
        }
    }
}
