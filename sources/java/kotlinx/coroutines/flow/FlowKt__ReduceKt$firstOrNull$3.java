package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$firstOrNull$3<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21771c;
    public FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 f;
    public /* synthetic */ Object g;
    public int h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
        Ref.ObjectRef objectRef;
        AbortFlowException e;
        this.g = obj;
        this.h = (this.h | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.h;
        if (i != 0) {
            if (i == 1) {
                flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = this.f;
                objectRef = this.f21771c;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (AbortFlowException e2) {
                    e = e2;
                }
                return objectRef.element;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 = new FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2(objectRef2);
        try {
            this.f21771c = objectRef2;
            this.f = flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2;
            this.h = 1;
            throw null;
        } catch (AbortFlowException e3) {
            objectRef = objectRef2;
            e = e3;
        }
        if (e.f21826c != flowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) {
            throw e;
        }
        return objectRef.element;
    }
}
