package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;

@Metadata(d1 = {"kotlinx/coroutines/BuildersKt__BuildersKt", "kotlinx/coroutines/BuildersKt__Builders_commonKt"}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BuildersKt {
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.Deferred] */
    public static Deferred a(ContextScope contextScope, Function2 function2) {
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineStart coroutineStart = CoroutineStart.f21581c;
        CoroutineContext c2 = CoroutineContextKt.c(contextScope, emptyCoroutineContext);
        CoroutineStart coroutineStart2 = CoroutineStart.f21581c;
        ?? abstractCoroutine = new AbstractCoroutine(c2, true);
        abstractCoroutine.l0(coroutineStart, abstractCoroutine, function2);
        return abstractCoroutine;
    }

    public static Job b(CoroutineScope coroutineScope, Function2 function2, int i) {
        AbstractCoroutine abstractCoroutine;
        CoroutineStart coroutineStart = CoroutineStart.h;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.f21581c;
        }
        CoroutineContext c2 = CoroutineContextKt.c(coroutineScope, emptyCoroutineContext);
        if (coroutineStart == CoroutineStart.f) {
            abstractCoroutine = new LazyStandaloneCoroutine(c2, function2);
        } else {
            abstractCoroutine = new AbstractCoroutine(c2, true);
        }
        abstractCoroutine.l0(coroutineStart, abstractCoroutine, function2);
        return abstractCoroutine;
    }

    public static final Object c(CoroutineContext coroutineContext, ContinuationImpl continuationImpl, Function2 function2) {
        CoroutineContext a2;
        Object a3;
        CoroutineContext coroutineContext2 = continuationImpl.get$context();
        if (!((Boolean) coroutineContext.fold(Boolean.FALSE, CoroutineContextKt$hasCopyableElements$1.f21576c)).booleanValue()) {
            a2 = coroutineContext2.plus(coroutineContext);
        } else {
            a2 = CoroutineContextKt.a(coroutineContext2, coroutineContext, false);
        }
        JobKt.b(a2);
        if (a2 == coroutineContext2) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(continuationImpl, a2);
            a3 = UndispatchedKt.a(scopeCoroutine, scopeCoroutine, function2);
        } else {
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(a2.get(companion), coroutineContext2.get(companion))) {
                UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(a2, continuationImpl);
                CoroutineContext coroutineContext3 = undispatchedCoroutine.g;
                Object c2 = ThreadContextKt.c(coroutineContext3, null);
                try {
                    Object a4 = UndispatchedKt.a(undispatchedCoroutine, undispatchedCoroutine, function2);
                    ThreadContextKt.a(coroutineContext3, c2);
                    a3 = a4;
                } catch (Throwable th) {
                    ThreadContextKt.a(coroutineContext3, c2);
                    throw th;
                }
            } else {
                ScopeCoroutine scopeCoroutine2 = new ScopeCoroutine(continuationImpl, a2);
                CancellableKt.b(function2, scopeCoroutine2, scopeCoroutine2);
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = DispatchedCoroutine.i;
                while (true) {
                    int i = atomicIntegerFieldUpdater.get(scopeCoroutine2);
                    if (i != 0) {
                        if (i == 2) {
                            a3 = JobSupportKt.a(scopeCoroutine2.S());
                            if (a3 instanceof CompletedExceptionally) {
                                throw ((CompletedExceptionally) a3).f21573a;
                            }
                        } else {
                            throw new IllegalStateException("Already suspended");
                        }
                    } else if (atomicIntegerFieldUpdater.compareAndSet(scopeCoroutine2, 0, 1)) {
                        a3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        break;
                    }
                }
            }
        }
        if (a3 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuationImpl);
        }
        return a3;
    }
}
