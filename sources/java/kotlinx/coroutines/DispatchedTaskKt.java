package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ThreadContextKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,218:1\n196#1,17:236\n1#2:219\n251#3:220\n252#3,2:231\n254#3:235\n103#4,10:221\n114#4,2:233\n57#5,2:253\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n186#1:236,17\n174#1:220\n174#1:231,2\n174#1:235\n174#1:221,10\n174#1:233,2\n216#1:253,2\n*E\n"})
/* loaded from: classes4.dex */
public final class DispatchedTaskKt {
    public static final void a(CancellableContinuationImpl cancellableContinuationImpl, Continuation continuation, boolean z) {
        Object f;
        UndispatchedCoroutine undispatchedCoroutine;
        Object obj = CancellableContinuationImpl.k.get(cancellableContinuationImpl);
        Throwable e = cancellableContinuationImpl.e(obj);
        if (e != null) {
            Result.Companion companion = Result.INSTANCE;
            f = ResultKt.createFailure(e);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            f = cancellableContinuationImpl.f(obj);
        }
        Object m30constructorimpl = Result.m30constructorimpl(f);
        if (z) {
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            Continuation continuation2 = dispatchedContinuation.i;
            Object obj2 = dispatchedContinuation.k;
            CoroutineContext f2 = continuation2.getF();
            Object c2 = ThreadContextKt.c(f2, obj2);
            if (c2 != ThreadContextKt.f21896a) {
                undispatchedCoroutine = CoroutineContextKt.d(continuation2, f2, c2);
            } else {
                undispatchedCoroutine = null;
            }
            try {
                dispatchedContinuation.i.resumeWith(m30constructorimpl);
                Unit unit = Unit.INSTANCE;
                if (undispatchedCoroutine != null && !undispatchedCoroutine.m0()) {
                    return;
                }
                ThreadContextKt.a(f2, c2);
                return;
            } catch (Throwable th) {
                if (undispatchedCoroutine == null || undispatchedCoroutine.m0()) {
                    ThreadContextKt.a(f2, c2);
                }
                throw th;
            }
        }
        continuation.resumeWith(m30constructorimpl);
    }
}
