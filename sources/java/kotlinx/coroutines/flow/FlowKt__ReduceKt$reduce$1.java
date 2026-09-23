package kotlinx.coroutines.flow;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {18}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$reduce$1<S, T extends S> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21776c;
    public /* synthetic */ Object f;
    public int g;

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.g = (this.g | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.g;
        ?? r1 = NullSurrogateKt.f21853a;
        if (i != 0) {
            if (i == 1) {
                Ref.ObjectRef objectRef = this.f21776c;
                ResultKt.throwOnFailure(obj);
                T t = objectRef.element;
                if (t != r1) {
                    return t;
                }
                throw new NoSuchElementException("Empty flow can't be reduced");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = r1;
        this.f21776c = objectRef2;
        this.g = 1;
        throw null;
    }
}
