package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CompletedWithCancellation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.ThreadLocalEventLoop;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u00028\u00000\u0005R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/DispatchedContinuation;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/DispatchedTask;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/atomicfu/AtomicRef;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_reusableCancellableContinuation", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n239#1,8:377\n251#1:385\n252#1,2:396\n254#1:400\n1#2:314\n1#2:320\n1#2:361\n293#3,5:315\n298#3,12:321\n310#3:355\n293#3,5:356\n298#3,12:362\n310#3:415\n196#4,3:333\n199#4,14:341\n196#4,3:374\n199#4,14:401\n91#5,5:336\n103#5,10:386\n114#5,2:398\n103#5,13:416\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n220#1:377,8\n221#1:385\n221#1:396,2\n221#1:400\n198#1:320\n219#1:361\n198#1:315,5\n198#1:321,12\n198#1:355\n219#1:356,5\n219#1:362,12\n219#1:415\n198#1:333,3\n198#1:341,14\n219#1:374,3\n219#1:401,14\n199#1:336,5\n221#1:386,10\n221#1:398,2\n251#1:416,13\n*E\n"})
/* loaded from: classes4.dex */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public final CoroutineDispatcher h;
    public final Continuation i;
    public Object j;
    public final Object k;

    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, Continuation continuation) {
        super(-1);
        this.h = coroutineDispatcher;
        this.i = continuation;
        this.j = DispatchedContinuationKt.f21873a;
        this.k = ThreadContextKt.b(continuation.getF());
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final void a(Object obj, CancellationException cancellationException) {
        if (!(obj instanceof CompletedWithCancellation)) {
        } else {
            throw null;
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    /* renamed from: c */
    public final Continuation getH() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.i;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    /* renamed from: getContext */
    public final CoroutineContext getF() {
        return this.i.getF();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object h() {
        Object obj = this.j;
        this.j = DispatchedContinuationKt.f21873a;
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Object completedExceptionally;
        Continuation continuation = this.i;
        CoroutineContext f = continuation.getF();
        Throwable m33exceptionOrNullimpl = Result.m33exceptionOrNullimpl(obj);
        if (m33exceptionOrNullimpl == null) {
            completedExceptionally = obj;
        } else {
            completedExceptionally = new CompletedExceptionally(m33exceptionOrNullimpl, false);
        }
        CoroutineDispatcher coroutineDispatcher = this.h;
        if (coroutineDispatcher.W(f)) {
            this.j = completedExceptionally;
            this.g = 0;
            coroutineDispatcher.S(f, this);
            return;
        }
        EventLoop a2 = ThreadLocalEventLoop.a();
        if (a2.f >= 4294967296L) {
            this.j = completedExceptionally;
            this.g = 0;
            a2.Z(this);
            return;
        }
        a2.a0(true);
        try {
            CoroutineContext f2 = continuation.getF();
            Object c2 = ThreadContextKt.c(f2, this.k);
            try {
                continuation.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                do {
                } while (a2.b0());
            } finally {
                ThreadContextKt.a(f2, c2);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.h + ", " + DebugStringsKt.b(this.i) + ']';
    }
}
