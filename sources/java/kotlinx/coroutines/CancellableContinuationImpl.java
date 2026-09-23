package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u00052\u00020\u0006R\u000b\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004R\u0013\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t8\u0002X\u0082\u0004R\u0013\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\t8\u0002X\u0082\u0004¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/CancellableContinuationImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/DispatchedTask;", "Lkotlinx/coroutines/CancellableContinuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/Waiter;", "Lkotlinx/atomicfu/AtomicInt;", "_decisionAndIndex", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/DisposableHandle;", "_parentHandle", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_state", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,658:1\n226#1,2:662\n228#1,8:665\n226#1,10:673\n226#1,10:684\n1#2:659\n20#3:660\n20#3:661\n18#3:683\n17#3:694\n18#3,3:695\n17#3:698\n18#3,3:699\n18#3:707\n17#3,4:708\n18#4:664\n9#4:706\n57#5,2:702\n57#5,2:704\n57#5,2:712\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n242#1:662,2\n242#1:665,8\n245#1:673,10\n250#1:684,10\n68#1:660\n154#1:661\n248#1:683\n273#1:694\n274#1:695,3\n283#1:698\n284#1:699,3\n385#1:707\n388#1:708,4\n242#1:664\n346#1:706\n325#1:702,2\n335#1:704,2\n609#1:712,2\n*E\n"})
/* loaded from: classes4.dex */
public class CancellableContinuationImpl<T> extends DispatchedTask<T> implements CancellableContinuation<T>, CoroutineStackFrame, Waiter {
    public static final /* synthetic */ AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(CancellableContinuationImpl.class, "_decisionAndIndex$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_state$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(CancellableContinuationImpl.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final Continuation h;
    public final CoroutineContext i;

    public CancellableContinuationImpl(int i, Continuation continuation) {
        super(i);
        this.h = continuation;
        this.i = continuation.get$context();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = Active.f21564c;
    }

    public static Object C(NotCompleted notCompleted, Object obj, int i, Function1 function1) {
        CancelHandler cancelHandler;
        if (obj instanceof CompletedExceptionally) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (function1 == null && !(notCompleted instanceof CancelHandler)) {
            return obj;
        }
        if (notCompleted instanceof CancelHandler) {
            cancelHandler = (CancelHandler) notCompleted;
        } else {
            cancelHandler = null;
        }
        return new CompletedContinuation(obj, cancelHandler, function1, (Throwable) null, 16);
    }

    public static void x(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public final void A(Object obj, int i, Function1 function1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                Object C = C((NotCompleted) obj2, obj, i, function1);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, C)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!w()) {
                    n();
                }
                o(i);
                return;
            }
            if (obj2 instanceof CancelledContinuation) {
                CancelledContinuation cancelledContinuation = (CancelledContinuation) obj2;
                if (CancelledContinuation.f21570c.compareAndSet(cancelledContinuation, 0, 1)) {
                    if (function1 != null) {
                        j(function1, cancelledContinuation.f21573a);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
        }
    }

    public final void B(CoroutineDispatcher coroutineDispatcher, Object obj) {
        DispatchedContinuation dispatchedContinuation;
        CoroutineDispatcher coroutineDispatcher2;
        int i;
        Continuation continuation = this.h;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            coroutineDispatcher2 = dispatchedContinuation.h;
        } else {
            coroutineDispatcher2 = null;
        }
        if (coroutineDispatcher2 == coroutineDispatcher) {
            i = 4;
        } else {
            i = this.g;
        }
        A(obj, i, null);
    }

    public final Symbol D(Object obj, Function1 function1) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof NotCompleted) {
                Object C = C((NotCompleted) obj2, obj, this.g, function1);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, C)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                boolean w = w();
                Symbol symbol = CancellableContinuationImplKt.f21569a;
                if (!w) {
                    n();
                }
                return symbol;
            }
            return null;
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final void a(Object obj, CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof NotCompleted)) {
                if (!(obj2 instanceof CompletedExceptionally)) {
                    if (obj2 instanceof CompletedContinuation) {
                        CompletedContinuation completedContinuation = (CompletedContinuation) obj2;
                        if (completedContinuation.e == null) {
                            CompletedContinuation a2 = CompletedContinuation.a(completedContinuation, null, cancellationException, 15);
                            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, a2)) {
                                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                                    cancellationException2 = cancellationException;
                                }
                            }
                            CancelHandler cancelHandler = completedContinuation.b;
                            if (cancelHandler != null) {
                                i(cancelHandler, cancellationException);
                            }
                            Function1 function1 = completedContinuation.f21572c;
                            if (function1 != null) {
                                j(function1, cancellationException);
                                return;
                            }
                            return;
                        }
                        throw new IllegalStateException("Must be called at most once");
                    }
                    cancellationException2 = cancellationException;
                    CompletedContinuation completedContinuation2 = new CompletedContinuation(obj2, (CancelHandler) null, (Function1) null, cancellationException2, 14);
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, completedContinuation2)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    return;
                    cancellationException = cancellationException2;
                } else {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed");
            }
        }
    }

    @Override // kotlinx.coroutines.Waiter
    public final void b(Segment segment, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = j;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        v(segment);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    /* renamed from: c, reason: from getter */
    public final Continuation getH() {
        return this.h;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Symbol d(Object obj, Function1 function1) {
        return D(obj, function1);
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Throwable e(Object obj) {
        Throwable e = super.e(obj);
        if (e != null) {
            return e;
        }
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object f(Object obj) {
        if (obj instanceof CompletedContinuation) {
            return ((CompletedContinuation) obj).f21571a;
        }
        return obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.h;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* renamed from: getContext, reason: from getter */
    public final CoroutineContext get$context() {
        return this.i;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object h() {
        return k.get(this);
    }

    public final void i(CancelHandler cancelHandler, Throwable th) {
        try {
            cancelHandler.e(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.a(this.i, new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void j(Function1 function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            CoroutineExceptionHandlerKt.a(this.i, new RuntimeException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void k(Segment segment, Throwable th) {
        CoroutineContext coroutineContext = this.i;
        int i = j.get(this) & 536870911;
        if (i != 536870911) {
            try {
                segment.g(i, coroutineContext);
                return;
            } catch (Throwable th2) {
                CoroutineExceptionHandlerKt.a(coroutineContext, new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2));
                return;
            }
        }
        throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
    }

    public final void l(Throwable th) {
        boolean z;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof NotCompleted)) {
                return;
            }
            if (!(obj instanceof CancelHandler) && !(obj instanceof Segment)) {
                z = false;
            } else {
                z = true;
            }
            CancelledContinuation cancelledContinuation = new CancelledContinuation(this, th, z);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, cancelledContinuation)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            NotCompleted notCompleted = (NotCompleted) obj;
            if (notCompleted instanceof CancelHandler) {
                i((CancelHandler) obj, th);
            } else if (notCompleted instanceof Segment) {
                k((Segment) obj, th);
            }
            if (!w()) {
                n();
            }
            o(this.g);
            return;
        }
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void m(Object obj, Function1 function1) {
        A(obj, this.g, function1);
    }

    public final void n() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
        DisposableHandle disposableHandle = (DisposableHandle) atomicReferenceFieldUpdater.get(this);
        if (disposableHandle == null) {
            return;
        }
        disposableHandle.c();
        atomicReferenceFieldUpdater.set(this, NonDisposableHandle.f21602c);
    }

    public final void o(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        boolean z;
        boolean z2;
        do {
            atomicIntegerFieldUpdater = j;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 == 1) {
                    boolean z3 = false;
                    if (i == 4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Continuation continuation = this.h;
                    if (!z && (continuation instanceof DispatchedContinuation)) {
                        if (i != 1 && i != 2) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        int i4 = this.g;
                        if (i4 == 1 || i4 == 2) {
                            z3 = true;
                        }
                        if (z2 == z3) {
                            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
                            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.h;
                            CoroutineContext coroutineContext = dispatchedContinuation.i.get$context();
                            if (coroutineDispatcher.W(coroutineContext)) {
                                coroutineDispatcher.S(coroutineContext, this);
                                return;
                            }
                            EventLoop a2 = ThreadLocalEventLoop.a();
                            if (a2.f >= 4294967296L) {
                                a2.Z(this);
                                return;
                            }
                            a2.a0(true);
                            try {
                                DispatchedTaskKt.a(this, continuation, true);
                                do {
                                } while (a2.b0());
                            } finally {
                                try {
                                    return;
                                } finally {
                                }
                            }
                            return;
                        }
                    }
                    DispatchedTaskKt.a(this, continuation, z);
                    return;
                }
                throw new IllegalStateException("Already resumed");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    public Throwable p(JobSupport jobSupport) {
        return jobSupport.j();
    }

    public final Object q() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        Job job;
        boolean w = w();
        do {
            atomicIntegerFieldUpdater = j;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 == 2) {
                    if (w) {
                        z();
                    }
                    Object obj = k.get(this);
                    if (!(obj instanceof CompletedExceptionally)) {
                        int i3 = this.g;
                        if ((i3 == 1 || i3 == 2) && (job = (Job) this.i.get(Job.Key.f21595c)) != null && !job.isActive()) {
                            CancellationException j2 = job.j();
                            a(obj, j2);
                            throw j2;
                        }
                        return f(obj);
                    }
                    throw ((CompletedExceptionally) obj).f21573a;
                }
                throw new IllegalStateException("Already suspended");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 536870912 + (536870911 & i)));
        if (((DisposableHandle) l.get(this)) == null) {
            s();
        }
        if (w) {
            z();
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    public final void r() {
        DisposableHandle s = s();
        if (s != null && !(k.get(this) instanceof NotCompleted)) {
            s.c();
            l.set(this, NonDisposableHandle.f21602c);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m33exceptionOrNullimpl = Result.m33exceptionOrNullimpl(obj);
        if (m33exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m33exceptionOrNullimpl, false);
        }
        A(obj, this.g, null);
    }

    public final DisposableHandle s() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Job job = (Job) this.i.get(Job.Key.f21595c);
        if (job == null) {
            return null;
        }
        DisposableHandle a2 = Job.DefaultImpls.a(job, new ChildContinuation(this), 2);
        do {
            atomicReferenceFieldUpdater = l;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, a2)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return a2;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void t(Object obj) {
        o(this.g);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(y());
        sb.append('(');
        sb.append(DebugStringsKt.b(this.h));
        sb.append("){");
        Object obj = k.get(this);
        if (obj instanceof NotCompleted) {
            str = "Active";
        } else if (obj instanceof CancelledContinuation) {
            str = "Cancelled";
        } else {
            str = "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(DebugStringsKt.a(this));
        return sb.toString();
    }

    public final void u(Function1 function1) {
        CancelHandler invokeOnCancel;
        if (function1 instanceof CancelHandler) {
            invokeOnCancel = (CancelHandler) function1;
        } else {
            invokeOnCancel = new InvokeOnCancel(function1);
        }
        v(invokeOnCancel);
    }

    public final void v(NotCompleted notCompleted) {
        boolean z;
        boolean z2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof Active) {
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, notCompleted)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            boolean z3 = true;
            if (obj instanceof CancelHandler) {
                z = true;
            } else {
                z = obj instanceof Segment;
            }
            if (!z) {
                if (obj instanceof CompletedExceptionally) {
                    CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
                    if (CompletedExceptionally.b.compareAndSet(completedExceptionally, 0, 1)) {
                        if (obj instanceof CancelledContinuation) {
                            Throwable th = completedExceptionally.f21573a;
                            if (notCompleted instanceof CancelHandler) {
                                i((CancelHandler) notCompleted, th);
                                return;
                            } else {
                                Intrinsics.checkNotNull(notCompleted, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                k((Segment) notCompleted, th);
                                return;
                            }
                        }
                        return;
                    }
                    x(notCompleted, obj);
                    throw null;
                }
                if (obj instanceof CompletedContinuation) {
                    CompletedContinuation completedContinuation = (CompletedContinuation) obj;
                    if (completedContinuation.b == null) {
                        if (notCompleted instanceof Segment) {
                            return;
                        }
                        Intrinsics.checkNotNull(notCompleted, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        CancelHandler cancelHandler = (CancelHandler) notCompleted;
                        Throwable th2 = completedContinuation.e;
                        if (th2 != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            i(cancelHandler, th2);
                            return;
                        }
                        CompletedContinuation a2 = CompletedContinuation.a(completedContinuation, cancelHandler, null, 29);
                        while (true) {
                            if (atomicReferenceFieldUpdater.compareAndSet(this, obj, a2)) {
                                break;
                            } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                                z3 = false;
                                break;
                            }
                        }
                        if (z3) {
                            return;
                        }
                    } else {
                        x(notCompleted, obj);
                        throw null;
                    }
                } else {
                    if (notCompleted instanceof Segment) {
                        return;
                    }
                    Intrinsics.checkNotNull(notCompleted, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                    CompletedContinuation completedContinuation2 = new CompletedContinuation(obj, (CancelHandler) notCompleted, (Function1) null, (Throwable) null, 28);
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, obj, completedContinuation2)) {
                            break;
                        } else if (atomicReferenceFieldUpdater.get(this) != obj) {
                            z3 = false;
                            break;
                        }
                    }
                    if (z3) {
                        return;
                    }
                }
            } else {
                x(notCompleted, obj);
                throw null;
            }
        }
    }

    public final boolean w() {
        if (this.g == 2) {
            Continuation continuation = this.h;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            dispatchedContinuation.getClass();
            if (DispatchedContinuation.l.get(dispatchedContinuation) != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public String y() {
        return "CancellableContinuation";
    }

    public final void z() {
        DispatchedContinuation dispatchedContinuation;
        Continuation continuation = this.h;
        Throwable th = null;
        if (continuation instanceof DispatchedContinuation) {
            dispatchedContinuation = (DispatchedContinuation) continuation;
        } else {
            dispatchedContinuation = null;
        }
        if (dispatchedContinuation != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.l;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
                Symbol symbol = DispatchedContinuationKt.b;
                if (obj != symbol) {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, symbol, this)) {
                    if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != symbol) {
                        break;
                    }
                }
            }
            if (th != null) {
                n();
                l(th);
            }
        }
    }
}
