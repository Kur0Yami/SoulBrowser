package kotlinx.coroutines;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", i = {}, l = {160}, m = "awaitCancellation", n = {}, s = {})
/* loaded from: classes4.dex */
final class DelayKt$awaitCancellation$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21583c;
    public int f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        DelayKt$awaitCancellation$1 delayKt$awaitCancellation$1;
        this.f21583c = obj;
        int i = this.f | IntCompanionObject.MIN_VALUE;
        this.f = i;
        if ((i & IntCompanionObject.MIN_VALUE) != 0) {
            this.f = i - IntCompanionObject.MIN_VALUE;
            delayKt$awaitCancellation$1 = this;
        } else {
            delayKt$awaitCancellation$1 = new ContinuationImpl(this);
        }
        Object obj2 = delayKt$awaitCancellation$1.f21583c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = delayKt$awaitCancellation$1.f;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj2);
        } else {
            ResultKt.throwOnFailure(obj2);
            delayKt$awaitCancellation$1.f = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(delayKt$awaitCancellation$1));
            cancellableContinuationImpl.r();
            Object q = cancellableContinuationImpl.q();
            if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(delayKt$awaitCancellation$1);
            }
            if (q == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        throw new KotlinNothingValueException();
    }
}
