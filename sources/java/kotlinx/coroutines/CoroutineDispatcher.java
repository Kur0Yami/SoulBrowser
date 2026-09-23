package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {

    /* renamed from: c, reason: collision with root package name */
    public static final Key f21577c = new AbstractCoroutineContextKey(ContinuationInterceptor.INSTANCE, Key.AnonymousClass1.f21578c);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @ExperimentalStdlibApi
    /* loaded from: classes4.dex */
    public static final class Key extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {

        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.CoroutineDispatcher$Key$1, reason: invalid class name */
        /* loaded from: classes4.dex */
        final class AnonymousClass1 extends Lambda implements Function1<CoroutineContext.Element, CoroutineDispatcher> {

            /* renamed from: c, reason: collision with root package name */
            public static final AnonymousClass1 f21578c = new Lambda(1);

            @Override // kotlin.jvm.functions.Function1
            public final CoroutineDispatcher invoke(CoroutineContext.Element element) {
                CoroutineContext.Element element2 = element;
                if (element2 instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) element2;
                }
                return null;
            }
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.INSTANCE);
    }

    public abstract void S(CoroutineContext coroutineContext, Runnable runnable);

    public void T(CoroutineContext coroutineContext, Runnable runnable) {
        S(coroutineContext, runnable);
    }

    public boolean W(CoroutineContext coroutineContext) {
        return !(this instanceof Unconfined);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final Continuation interceptContinuation(Continuation continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        dispatchedContinuation.getClass();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.l;
        do {
        } while (atomicReferenceFieldUpdater.get(dispatchedContinuation) == DispatchedContinuationKt.b);
        Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
        if (obj instanceof CancellableContinuationImpl) {
            cancellableContinuationImpl = (CancellableContinuationImpl) obj;
        } else {
            cancellableContinuationImpl = null;
        }
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.n();
        }
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + DebugStringsKt.a(this);
    }
}
