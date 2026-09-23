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
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {151}, m = "last", n = {"result"}, s = {"L$0"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$last$1<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21774c;
    public /* synthetic */ Object f;
    public int g;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.g = (this.g | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.g;
        T t = (T) NullSurrogateKt.f21853a;
        if (i != 0) {
            if (i == 1) {
                Ref.ObjectRef objectRef = this.f21774c;
                ResultKt.throwOnFailure(obj);
                T t2 = objectRef.element;
                if (t2 != t) {
                    return t2;
                }
                throw new NoSuchElementException("Expected at least one element");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = t;
        this.f21774c = objectRef2;
        this.g = 1;
        throw null;
    }
}
