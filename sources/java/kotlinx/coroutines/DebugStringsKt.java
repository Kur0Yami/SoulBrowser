package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.DispatchedContinuation;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDebugStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugStrings.kt\nkotlinx/coroutines/DebugStringsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"})
/* loaded from: classes4.dex */
public final class DebugStringsKt {
    public static final String a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String b(Continuation continuation) {
        Object m30constructorimpl;
        if (continuation instanceof DispatchedContinuation) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(continuation + '@' + a(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m33exceptionOrNullimpl(m30constructorimpl) != null) {
            m30constructorimpl = continuation.getClass().getName() + '@' + a(continuation);
        }
        return (String) m30constructorimpl;
    }
}
