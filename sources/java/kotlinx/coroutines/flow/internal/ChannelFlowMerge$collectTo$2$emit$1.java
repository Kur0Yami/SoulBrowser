package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2", f = "Merge.kt", i = {0, 0}, l = {62}, m = "emit", n = {"this", "inner"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
public final class ChannelFlowMerge$collectTo$2$emit$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Object f21832c;
    public Flow f;
    public /* synthetic */ Object g;
    public final /* synthetic */ ChannelFlowMerge$collectTo$2 h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowMerge$collectTo$2$emit$1(ChannelFlowMerge$collectTo$2 channelFlowMerge$collectTo$2, Continuation continuation) {
        super(continuation);
        this.h = channelFlowMerge$collectTo$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= IntCompanionObject.MIN_VALUE;
        return this.h.b(null, this);
    }
}
