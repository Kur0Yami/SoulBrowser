package kotlinx.coroutines.selects;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {}, l = {712}, m = "processResultAndInvokeBlockRecoveringException", n = {}, s = {})
/* loaded from: classes4.dex */
final class SelectImplementation$processResultAndInvokeBlockRecoveringException$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21928c;
    public final /* synthetic */ SelectImplementation f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImplementation$processResultAndInvokeBlockRecoveringException$1(SelectImplementation selectImplementation, Continuation continuation) {
        super(continuation);
        this.f = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SelectImplementation$processResultAndInvokeBlockRecoveringException$1 selectImplementation$processResultAndInvokeBlockRecoveringException$1;
        this.f21928c = obj;
        int i = this.g | IntCompanionObject.MIN_VALUE;
        this.g = i;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = SelectImplementation.j;
        if ((i & IntCompanionObject.MIN_VALUE) != 0) {
            this.g = i - IntCompanionObject.MIN_VALUE;
            selectImplementation$processResultAndInvokeBlockRecoveringException$1 = this;
        } else {
            selectImplementation$processResultAndInvokeBlockRecoveringException$1 = new SelectImplementation$processResultAndInvokeBlockRecoveringException$1(this.f, this);
        }
        Object obj2 = selectImplementation$processResultAndInvokeBlockRecoveringException$1.f21928c;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = selectImplementation$processResultAndInvokeBlockRecoveringException$1.g;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.throwOnFailure(obj2);
                return obj2;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj2);
        throw null;
    }
}
