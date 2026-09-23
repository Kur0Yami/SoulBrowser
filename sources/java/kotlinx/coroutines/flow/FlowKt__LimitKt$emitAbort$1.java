package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.flow.internal.AbortFlowException;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {70}, m = "emitAbort$FlowKt__LimitKt", n = {"ownershipMarker"}, s = {"L$0"})
/* loaded from: classes4.dex */
final class FlowKt__LimitKt$emitAbort$1<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21753c;
    public int f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowKt__LimitKt$emitAbort$1<T> flowKt__LimitKt$emitAbort$1;
        this.f21753c = obj;
        int i = this.f | IntCompanionObject.MIN_VALUE;
        this.f = i;
        if ((i & IntCompanionObject.MIN_VALUE) != 0) {
            this.f = i - IntCompanionObject.MIN_VALUE;
            flowKt__LimitKt$emitAbort$1 = this;
        } else {
            flowKt__LimitKt$emitAbort$1 = new ContinuationImpl(this);
        }
        Object obj2 = flowKt__LimitKt$emitAbort$1.f21753c;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = flowKt__LimitKt$emitAbort$1.f;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj2);
            throw new AbortFlowException(null);
        }
        ResultKt.throwOnFailure(obj2);
        flowKt__LimitKt$emitAbort$1.f = 1;
        throw null;
    }
}
