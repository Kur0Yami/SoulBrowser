package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,64:1\n45#1,6:65\n45#1,6:71\n45#1,6:77\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n13#1:65,6\n25#1:71,6\n34#1:77,6\n*E\n"})
/* loaded from: classes4.dex */
public final class CancellableKt {
    public static final void a(Continuation continuation, AbstractCoroutine abstractCoroutine) {
        try {
            Continuation intercepted = IntrinsicsKt.intercepted(continuation);
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.a(Result.m30constructorimpl(Unit.INSTANCE), intercepted);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            abstractCoroutine.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(th)));
            throw th;
        }
    }

    public static void b(Function2 function2, AbstractCoroutine abstractCoroutine, AbstractCoroutine abstractCoroutine2) {
        try {
            Continuation intercepted = IntrinsicsKt.intercepted(IntrinsicsKt.createCoroutineUnintercepted(function2, abstractCoroutine, abstractCoroutine2));
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.a(Result.m30constructorimpl(Unit.INSTANCE), intercepted);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            abstractCoroutine2.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(th)));
            throw th;
        }
    }
}
