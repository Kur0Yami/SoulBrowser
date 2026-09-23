package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ThreadContextKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/FlowCollector;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class UndispatchedContextCollector<T> implements FlowCollector<T> {

    /* renamed from: c, reason: collision with root package name */
    public final CoroutineContext f21863c;
    public final Object f;
    public final Function2 g;

    public UndispatchedContextCollector(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        this.f21863c = coroutineContext;
        this.f = ThreadContextKt.b(coroutineContext);
        this.g = new UndispatchedContextCollector$emitRef$1(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object b(Object obj, Continuation continuation) {
        Object a2 = ChannelFlowKt.a(this.f21863c, obj, this.f, this.g, continuation);
        if (a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return a2;
        }
        return Unit.INSTANCE;
    }
}
