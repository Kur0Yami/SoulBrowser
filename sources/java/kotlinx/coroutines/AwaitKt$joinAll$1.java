package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {0}, l = {47}, m = "joinAll", n = {"$this$forEach$iv"}, s = {"L$0"})
/* loaded from: classes4.dex */
final class AwaitKt$joinAll$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f21566c;
    public int f;
    public int g;
    public /* synthetic */ Object h;
    public int i;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Job job;
        this.h = obj;
        this.i = (this.i | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.i;
        if (i != 0) {
            if (i == 1) {
                int i2 = this.g;
                int i3 = this.f;
                Job[] jobArr = (Job[]) this.f21566c;
                ResultKt.throwOnFailure(obj);
                do {
                    i3++;
                    if (i3 < i2) {
                        job = jobArr[i3];
                        this.f21566c = jobArr;
                        this.f = i3;
                        this.g = i2;
                        this.i = 1;
                    } else {
                        return Unit.INSTANCE;
                    }
                } while (job.f(this) != coroutine_suspended);
                return coroutine_suspended;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        throw null;
    }
}
