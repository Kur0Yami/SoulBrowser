package kotlinx.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.internal.ScopeCoroutine;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUndispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n+ 2 ProbesSupport.kt\nkotlinx/coroutines/internal/ProbesSupportKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,110:1\n38#1:111\n39#1,11:113\n38#1:124\n39#1,2:126\n41#1,9:133\n80#1,4:143\n97#1,6:147\n103#1,5:155\n80#1,4:160\n97#1,6:164\n103#1,5:172\n8#2:112\n8#2:125\n8#2:142\n91#3,5:128\n57#4,2:153\n57#4,2:170\n57#4,2:177\n57#4,2:179\n*S KotlinDebug\n*F\n+ 1 Undispatched.kt\nkotlinx/coroutines/intrinsics/UndispatchedKt\n*L\n14#1:111\n14#1:113,11\n25#1:124\n25#1:126,2\n25#1:133,9\n60#1:143,4\n60#1:147,6\n60#1:155,5\n71#1:160,4\n71#1:164,6\n71#1:172,5\n14#1:112\n25#1:125\n38#1:142\n26#1:128,5\n60#1:153,2\n71#1:170,2\n102#1:177,2\n103#1:179,2\n*E\n"})
/* loaded from: classes4.dex */
public final class UndispatchedKt {
    public static final Object a(ScopeCoroutine scopeCoroutine, ScopeCoroutine scopeCoroutine2, Function2 function2) {
        Object completedExceptionally;
        try {
            completedExceptionally = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(scopeCoroutine2, scopeCoroutine);
        } catch (Throwable th) {
            completedExceptionally = new CompletedExceptionally(th, false);
        }
        if (completedExceptionally == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object X = scopeCoroutine.X(completedExceptionally);
        if (X == JobSupportKt.b) {
            return IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (!(X instanceof CompletedExceptionally)) {
            return JobSupportKt.a(X);
        }
        throw ((CompletedExceptionally) X).f21573a;
    }
}
