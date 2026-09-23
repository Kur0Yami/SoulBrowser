package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlow;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n1#2:242\n*E\n"})
/* loaded from: classes4.dex */
public abstract class ChannelFlow<T> implements FusibleFlow<T> {
    @Override // kotlinx.coroutines.flow.Flow
    public Object a(FlowCollector flowCollector, Continuation continuation) {
        Object b = CoroutineScopeKt.b(new ChannelFlow$collect$2(flowCollector, this, null), continuation);
        if (b == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return b;
        }
        return Unit.INSTANCE;
    }

    public String b() {
        return null;
    }

    public abstract Object c(ProducerScope producerScope, Continuation continuation);

    public ReceiveChannel d(CoroutineScope coroutineScope) {
        return ProduceKt.a(coroutineScope, null, 0, null, CoroutineStart.g, new ChannelFlow$collectToFun$1(this, null));
    }

    public String toString() {
        String joinToString$default;
        ArrayList arrayList = new ArrayList(4);
        String b = b();
        if (b != null) {
            arrayList.add(b);
        }
        if (EmptyCoroutineContext.INSTANCE != null) {
            arrayList.add("context=" + ((Object) null));
        }
        arrayList.add("capacity=0");
        BufferOverflow bufferOverflow = BufferOverflow.f21616c;
        arrayList.add("onBufferOverflow=" + ((Object) null));
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
        sb.append(joinToString$default);
        sb.append(']');
        return sb.toString();
    }
}
