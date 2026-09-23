package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,424:1\n1#2:425\n*E\n"})
/* loaded from: classes4.dex */
public final class StateFlowKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f21821a = new Symbol("NONE");
    public static final Symbol b = new Symbol("PENDING");

    public static final MutableStateFlow a(Object obj) {
        if (obj == null) {
            obj = NullSurrogateKt.f21853a;
        }
        return new StateFlowImpl(obj);
    }
}
