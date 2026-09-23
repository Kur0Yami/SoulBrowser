package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/CancelFutureOnCompletion;", "Lkotlinx/coroutines/JobNode;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class CancelFutureOnCompletion extends JobNode {
    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(Throwable th) {
        if (th == null) {
            return Unit.INSTANCE;
        }
        throw null;
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    public final void j(Throwable th) {
        if (th == null) {
        } else {
            throw null;
        }
    }
}
