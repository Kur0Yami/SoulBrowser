package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001R\u000b\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004R\u000b\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004R\u000b\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004R\u0011\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004R\u0011\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Semaphore;", "Lkotlinx/atomicfu/AtomicInt;", "_availablePermits", "Lkotlinx/atomicfu/AtomicLong;", "deqIdx", "enqIdx", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/sync/SemaphoreSegment;", "head", "tail", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,392:1\n200#1,10:406\n200#1,10:416\n1#2:393\n328#3,12:394\n68#4,3:426\n42#4,8:429\n68#4,3:440\n42#4,8:443\n370#5:437\n370#5:438\n362#5:439\n373#5:451\n362#5:452\n370#5:453\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n192#1:406,10\n216#1:416,10\n182#1:394,12\n284#1:426,3\n284#1:429,8\n317#1:440,3\n317#1:443,8\n288#1:437\n294#1:438\n308#1:439\n323#1:451\n329#1:452\n332#1:453\n*E\n"})
/* loaded from: classes4.dex */
public class SemaphoreImpl implements Semaphore {
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head$volatile");

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f21944c = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater e = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* renamed from: a, reason: collision with root package name */
    public final Function1 f21945a;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreImpl() {
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = 1;
        this.f21945a = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Throwable th) {
                SemaphoreImpl.this.d();
                return Unit.INSTANCE;
            }
        };
    }

    public final boolean c(Waiter waiter) {
        Object a2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) atomicReferenceFieldUpdater.get(this);
        long andIncrement = e.getAndIncrement(this);
        SemaphoreImpl$addAcquireToQueue$createNewSegment$1 semaphoreImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreImpl$addAcquireToQueue$createNewSegment$1.f21946c;
        long j = andIncrement / SemaphoreKt.f;
        loop0: while (true) {
            a2 = ConcurrentLinkedListKt.a(semaphoreSegment, j, semaphoreImpl$addAcquireToQueue$createNewSegment$1);
            if (!SegmentOrClosed.b(a2)) {
                Segment a3 = SegmentOrClosed.a(a2);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.g >= a3.g) {
                        break loop0;
                    }
                    if (!a3.i()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, a3)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (a3.e()) {
                                a3.d();
                            }
                        }
                    }
                    if (segment.e()) {
                        segment.d();
                    }
                }
            } else {
                break;
            }
        }
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(a2);
        AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.i;
        int i = (int) (andIncrement % SemaphoreKt.f);
        while (!atomicReferenceArray.compareAndSet(i, null, waiter)) {
            if (atomicReferenceArray.get(i) != null) {
                Symbol symbol = SemaphoreKt.b;
                Symbol symbol2 = SemaphoreKt.f21950c;
                while (!atomicReferenceArray.compareAndSet(i, symbol, symbol2)) {
                    if (atomicReferenceArray.get(i) != symbol) {
                        return false;
                    }
                }
                if (waiter instanceof CancellableContinuation) {
                    Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                    ((CancellableContinuation) waiter).m(Unit.INSTANCE, this.f21945a);
                    return true;
                }
                if (waiter instanceof SelectInstance) {
                    ((SelectInstance) waiter).d(Unit.INSTANCE);
                    return true;
                }
                throw new IllegalStateException(("unexpected: " + waiter).toString());
            }
        }
        waiter.b(semaphoreSegment2, i);
        return true;
    }

    public final void d() {
        boolean z;
        int i;
        Object a2;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            z = true;
            if (andIncrement < 1) {
                if (andIncrement < 0) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
                    SemaphoreSegment semaphoreSegment = (SemaphoreSegment) atomicReferenceFieldUpdater.get(this);
                    long andIncrement2 = f21944c.getAndIncrement(this);
                    long j = andIncrement2 / SemaphoreKt.f;
                    SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1.f21948c;
                    while (true) {
                        a2 = ConcurrentLinkedListKt.a(semaphoreSegment, j, semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1);
                        if (!SegmentOrClosed.b(a2)) {
                            Segment a3 = SegmentOrClosed.a(a2);
                            while (true) {
                                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                                if (segment.g >= a3.g) {
                                    break;
                                }
                                if (!a3.i()) {
                                    break;
                                }
                                while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, a3)) {
                                    if (atomicReferenceFieldUpdater.get(this) != segment) {
                                        if (a3.e()) {
                                            a3.d();
                                        }
                                    }
                                }
                                if (segment.e()) {
                                    segment.d();
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.a(a2);
                    semaphoreSegment2.a();
                    AtomicReferenceArray atomicReferenceArray = semaphoreSegment2.i;
                    boolean z2 = false;
                    if (semaphoreSegment2.g <= j) {
                        int i2 = (int) (andIncrement2 % SemaphoreKt.f);
                        Object andSet = atomicReferenceArray.getAndSet(i2, SemaphoreKt.b);
                        if (andSet == null) {
                            int i3 = SemaphoreKt.f21949a;
                            int i4 = 0;
                            while (true) {
                                if (i4 < i3) {
                                    if (atomicReferenceArray.get(i2) == SemaphoreKt.f21950c) {
                                        break;
                                    } else {
                                        i4++;
                                    }
                                } else {
                                    Symbol symbol = SemaphoreKt.b;
                                    Symbol symbol2 = SemaphoreKt.d;
                                    while (true) {
                                        if (atomicReferenceArray.compareAndSet(i2, symbol, symbol2)) {
                                            z2 = true;
                                            break;
                                        } else if (atomicReferenceArray.get(i2) != symbol) {
                                            break;
                                        }
                                    }
                                    z = true ^ z2;
                                }
                            }
                        } else if (andSet != SemaphoreKt.e) {
                            if (andSet instanceof CancellableContinuation) {
                                Intrinsics.checkNotNull(andSet, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                                Symbol d2 = cancellableContinuation.d(Unit.INSTANCE, this.f21945a);
                                if (d2 != null) {
                                    cancellableContinuation.t(d2);
                                }
                            } else if (andSet instanceof SelectInstance) {
                                z = ((SelectInstance) andSet).c(this, Unit.INSTANCE);
                            } else {
                                throw new IllegalStateException(("unexpected: " + andSet).toString());
                            }
                        }
                    }
                    z = false;
                } else {
                    return;
                }
            } else {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= 1) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 1));
                throw new IllegalStateException("The number of released permits cannot be greater than 1".toString());
            }
        } while (!z);
    }
}
