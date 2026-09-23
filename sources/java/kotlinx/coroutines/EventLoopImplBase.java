package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.DurationKt;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b \u0018\u00002\u00020\u00012\u00020\u0002:\u0004\n\u000b\f\rR\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004R\u0013\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00038\u0002X\u0082\u0004¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "_delayed", "Lkotlinx/atomicfu/AtomicBoolean;", "_isCompleted", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_queue", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "DelayedTaskQueue", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n51#2:541\n52#2,7:547\n24#3,4:542\n16#4:546\n53#5:554\n1#6:555\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n266#1:541\n266#1:547,7\n266#1:542,4\n266#1:546\n277#1:554\n*E\n"})
/* loaded from: classes4.dex */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater k = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
    /* loaded from: classes4.dex */
    public final class DelayedResumeTask extends DelayedTask {
        public final CancellableContinuationImpl g;

        public DelayedResumeTask(long j, CancellableContinuationImpl cancellableContinuationImpl) {
            super(j);
            this.g = cancellableContinuationImpl;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.g.B(EventLoopImplBase.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.g;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DelayedRunnableTask extends DelayedTask {
        public final Runnable g;

        public DelayedRunnableTask(Runnable runnable, long j) {
            super(j);
            this.g = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.g.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.g;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u00052\u00060\u0006j\u0002`\u0007R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/internal/SynchronizedObject;", "_heap", "Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,540:1\n24#2,4:541\n24#2,4:547\n24#2,4:559\n16#3:545\n16#3:551\n16#3:563\n63#4:546\n64#4,7:552\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n434#1:541,4\n436#1:547,4\n476#1:559,4\n434#1:545\n436#1:551\n476#1:563\n436#1:546\n436#1:552,7\n*E\n"})
    /* loaded from: classes4.dex */
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {

        @Nullable
        private volatile Object _heap;

        /* renamed from: c, reason: collision with root package name */
        public long f21588c;
        public int f = -1;

        public DelayedTask(long j) {
            this.f21588c = j;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public final void b(DelayedTaskQueue delayedTaskQueue) {
            if (this._heap != EventLoop_commonKt.f21590a) {
                this._heap = delayedTaskQueue;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void c() {
            DelayedTaskQueue delayedTaskQueue;
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    Symbol symbol = EventLoop_commonKt.f21590a;
                    if (obj == symbol) {
                        return;
                    }
                    if (obj instanceof DelayedTaskQueue) {
                        delayedTaskQueue = (DelayedTaskQueue) obj;
                    } else {
                        delayedTaskQueue = null;
                    }
                    if (delayedTaskQueue != null) {
                        delayedTaskQueue.c(this);
                    }
                    this._heap = symbol;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Comparable
        public final int compareTo(DelayedTask delayedTask) {
            long j = this.f21588c - delayedTask.f21588c;
            if (j > 0) {
                return 1;
            }
            if (j < 0) {
                return -1;
            }
            return 0;
        }

        public final ThreadSafeHeap d() {
            Object obj = this._heap;
            if (obj instanceof ThreadSafeHeap) {
                return (ThreadSafeHeap) obj;
            }
            return null;
        }

        public final int e(long j, DelayedTaskQueue delayedTaskQueue, EventLoopImplBase eventLoopImplBase) {
            ThreadSafeHeapNode threadSafeHeapNode;
            boolean z;
            synchronized (this) {
                if (this._heap == EventLoop_commonKt.f21590a) {
                    return 2;
                }
                synchronized (delayedTaskQueue) {
                    try {
                        ThreadSafeHeapNode[] threadSafeHeapNodeArr = delayedTaskQueue.f21901a;
                        if (threadSafeHeapNodeArr != null) {
                            threadSafeHeapNode = threadSafeHeapNodeArr[0];
                        } else {
                            threadSafeHeapNode = null;
                        }
                        DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode;
                        if (EventLoopImplBase.k.get(eventLoopImplBase) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayedTaskQueue.f21589c = j;
                        } else {
                            long j2 = delayedTask.f21588c;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            if (j - delayedTaskQueue.f21589c > 0) {
                                delayedTaskQueue.f21589c = j;
                            }
                        }
                        long j3 = this.f21588c;
                        long j4 = delayedTaskQueue.f21589c;
                        if (j3 - j4 < 0) {
                            this.f21588c = j4;
                        }
                        delayedTaskQueue.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public final void setIndex(int i) {
            this.f = i;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f21588c + ']';
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {

        /* renamed from: c, reason: collision with root package name */
        public long f21589c;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        i0(runnable);
    }

    @Override // kotlinx.coroutines.Delay
    public final void e(long j2, CancellableContinuationImpl cancellableContinuationImpl) {
        long a2 = EventLoop_commonKt.a(j2);
        if (a2 < DurationKt.MAX_MILLIS) {
            long nanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(a2 + nanoTime, cancellableContinuationImpl);
            s0(nanoTime, delayedResumeTask);
            CancellableContinuationKt.a(cancellableContinuationImpl, delayedResumeTask);
        }
    }

    public void i0(Runnable runnable) {
        if (k0(runnable)) {
            Thread l = getL();
            if (Thread.currentThread() != l) {
                LockSupport.unpark(l);
                return;
            }
            return;
        }
        DefaultExecutor.l.i0(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k0(java.lang.Runnable r7) {
        /*
            r6 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.i
            java.lang.Object r1 = r0.get(r6)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = kotlinx.coroutines.EventLoopImplBase.k
            int r2 = r2.get(r6)
            r3 = 0
            if (r2 == 0) goto L10
            return r3
        L10:
            r2 = 1
            if (r1 != 0) goto L22
        L13:
            r1 = 0
            boolean r1 = r0.compareAndSet(r6, r1, r7)
            if (r1 == 0) goto L1b
            goto L6c
        L1b:
            java.lang.Object r1 = r0.get(r6)
            if (r1 == 0) goto L13
            goto L0
        L22:
            boolean r4 = r1 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r4 == 0) goto L4c
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r4)
            r4 = r1
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r4 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r4
            int r5 = r4.a(r7)
            if (r5 == 0) goto L6c
            if (r5 == r2) goto L3a
            r0 = 2
            if (r5 == r0) goto L50
            goto L0
        L3a:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r3 = r4.c()
        L3e:
            boolean r2 = r0.compareAndSet(r6, r1, r3)
            if (r2 == 0) goto L45
            goto L0
        L45:
            java.lang.Object r2 = r0.get(r6)
            if (r2 == r1) goto L3e
            goto L0
        L4c:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.EventLoop_commonKt.b
            if (r1 != r4) goto L51
        L50:
            return r3
        L51:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r3 = new kotlinx.coroutines.internal.LockFreeTaskQueueCore
            r4 = 8
            r3.<init>(r4, r2)
            java.lang.String r4 = "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r4)
            r4 = r1
            java.lang.Runnable r4 = (java.lang.Runnable) r4
            r3.a(r4)
            r3.a(r7)
        L66:
            boolean r4 = r0.compareAndSet(r6, r1, r3)
            if (r4 == 0) goto L6d
        L6c:
            return r2
        L6d:
            java.lang.Object r4 = r0.get(r6)
            if (r4 == r1) goto L66
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.k0(java.lang.Runnable):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if (r0 == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n0() {
        /*
            r7 = this;
            kotlin.collections.ArrayDeque r0 = r7.h
            r1 = 1
            if (r0 == 0) goto La
            boolean r0 = r0.isEmpty()
            goto Lb
        La:
            r0 = r1
        Lb:
            r2 = 0
            if (r0 != 0) goto Lf
            goto L54
        Lf:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.j
            java.lang.Object r0 = r0.get(r7)
            kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue r0 = (kotlinx.coroutines.EventLoopImplBase.DelayedTaskQueue) r0
            if (r0 == 0) goto L27
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r3 = kotlinx.coroutines.internal.ThreadSafeHeap.b
            int r0 = r3.get(r0)
            if (r0 != 0) goto L23
            r0 = r1
            goto L24
        L23:
            r0 = r2
        L24:
            if (r0 != 0) goto L27
            goto L54
        L27:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase.i
            java.lang.Object r0 = r0.get(r7)
            if (r0 != 0) goto L30
            goto L53
        L30:
            boolean r3 = r0 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r3 == 0) goto L4f
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.f
            long r3 = r3.get(r0)
            r5 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r5 = r5 & r3
            int r0 = (int) r5
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r3 = r3 & r5
            r5 = 30
            long r3 = r3 >> r5
            int r3 = (int) r3
            if (r0 != r3) goto L4e
            return r1
        L4e:
            return r2
        L4f:
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.EventLoop_commonKt.b
            if (r0 != r3) goto L54
        L53:
            return r1
        L54:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.n0():boolean");
    }

    public DisposableHandle o(long j2, Runnable runnable, CoroutineContext coroutineContext) {
        return DefaultExecutorKt.f21582a.o(j2, runnable, coroutineContext);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00dd, code lost:
    
        if (r3 == false) goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long q0() {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.q0():long");
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [kotlinx.coroutines.EventLoopImplBase$DelayedTaskQueue, java.lang.Object] */
    public final void s0(long j2, DelayedTask delayedTask) {
        int e;
        Thread l;
        int i2 = k.get(this);
        DelayedTask delayedTask2 = null;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        if (i2 != 0) {
            e = 1;
        } else {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
            if (delayedTaskQueue == null) {
                ?? obj = new Object();
                obj.f21589c = j2;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, obj) && atomicReferenceFieldUpdater.get(this) == null) {
                }
                Object obj2 = atomicReferenceFieldUpdater.get(this);
                Intrinsics.checkNotNull(obj2);
                delayedTaskQueue = (DelayedTaskQueue) obj2;
            }
            e = delayedTask.e(j2, delayedTaskQueue, this);
        }
        if (e != 0) {
            if (e != 1) {
                if (e != 2) {
                    throw new IllegalStateException("unexpected result");
                }
                return;
            } else {
                h0(j2, delayedTask);
                return;
            }
        }
        DelayedTaskQueue delayedTaskQueue2 = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
        if (delayedTaskQueue2 != null) {
            delayedTask2 = (DelayedTask) delayedTaskQueue2.b();
        }
        if (delayedTask2 == delayedTask && Thread.currentThread() != (l = getL())) {
            LockSupport.unpark(l);
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        ThreadSafeHeapNode threadSafeHeapNode;
        ThreadLocalEventLoop.f21604a.set(null);
        k.set(this, 1);
        Symbol symbol = EventLoop_commonKt.b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, null, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                break loop0;
            } else {
                if (obj instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) obj).b();
                    break;
                }
                if (obj != symbol) {
                    LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    lockFreeTaskQueueCore.a((Runnable) obj);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                break;
            }
        }
        do {
        } while (q0() <= 0);
        long nanoTime = System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) j.get(this);
            if (delayedTaskQueue != null) {
                synchronized (delayedTaskQueue) {
                    if (ThreadSafeHeap.b.get(delayedTaskQueue) > 0) {
                        threadSafeHeapNode = delayedTaskQueue.d(0);
                    } else {
                        threadSafeHeapNode = null;
                    }
                }
                DelayedTask delayedTask = (DelayedTask) threadSafeHeapNode;
                if (delayedTask != null) {
                    h0(nanoTime, delayedTask);
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
