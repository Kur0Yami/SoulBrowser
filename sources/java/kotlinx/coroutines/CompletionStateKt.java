package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCompletionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n+ 2 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,63:1\n57#2,2:64\n57#2,2:66\n*S KotlinDebug\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n*L\n17#1:64,2\n23#1:66,2\n*E\n"})
/* loaded from: classes4.dex */
public final class CompletionStateKt {
    public static final Object a(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m30constructorimpl(ResultKt.createFailure(((CompletedExceptionally) obj).f21573a));
        }
        return Result.m30constructorimpl(obj);
    }
}
