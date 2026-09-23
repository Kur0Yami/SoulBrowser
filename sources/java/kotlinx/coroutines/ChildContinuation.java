package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/ChildContinuation;", "Lkotlinx/coroutines/JobCancellingNode;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
/* loaded from: classes4.dex */
public final class ChildContinuation extends JobCancellingNode {
    public final CancellableContinuationImpl i;

    public ChildContinuation(CancellableContinuationImpl cancellableContinuationImpl) {
        this.i = cancellableContinuationImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        j(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    public final void j(Throwable th) {
        JobSupport k = k();
        CancellableContinuationImpl cancellableContinuationImpl = this.i;
        Throwable p = cancellableContinuationImpl.p(k);
        if (cancellableContinuationImpl.w()) {
            Continuation continuation = cancellableContinuationImpl.h;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            dispatchedContinuation.getClass();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.l;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
                Symbol symbol = DispatchedContinuationKt.b;
                if (Intrinsics.areEqual(obj, symbol)) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, symbol, p)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != symbol) {
                            break;
                        }
                    }
                    return;
                } else {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
            }
        }
        cancellableContinuationImpl.l(p);
        if (!cancellableContinuationImpl.w()) {
            cancellableContinuationImpl.n();
        }
    }
}
