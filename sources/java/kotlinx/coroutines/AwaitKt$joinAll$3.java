package kotlinx.coroutines;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {}, l = {58}, m = "joinAll", n = {}, s = {})
/* loaded from: classes4.dex */
final class AwaitKt$joinAll$3 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f21567c;
    public /* synthetic */ Object f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.g = (this.g | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.g;
        if (i != 0) {
            if (i == 1) {
                Iterator it = this.f21567c;
                ResultKt.throwOnFailure(obj);
                while (it.hasNext()) {
                    Job job = (Job) it.next();
                    this.f21567c = it;
                    this.g = 1;
                    if (job.f(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        throw null;
    }
}
