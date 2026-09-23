package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$first$1<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21768c;
    public FlowKt__ReduceKt$first$$inlined$collectWhile$1 f;
    public /* synthetic */ Object g;
    public int h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            r5.g = r6
            int r0 = r5.h
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            int r0 = r0 - r1
            r5.h = r0
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r5.h
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f21853a
            r2 = 1
            if (r0 == 0) goto L28
            if (r0 != r2) goto L20
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r0 = r5.f
            kotlin.jvm.internal.Ref$ObjectRef r2 = r5.f21768c
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L1e
            goto L47
        L1e:
            r6 = move-exception
            goto L43
        L20:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L28:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            r6.element = r1
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$1
            r0.<init>()
            r5.f21768c = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            r5.f = r0     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            r5.h = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            r6 = 0
            throw r6
        L3f:
            r2 = move-exception
            r4 = r2
            r2 = r6
            r6 = r4
        L43:
            java.lang.Object r3 = r6.f21826c
            if (r3 != r0) goto L54
        L47:
            T r6 = r2.element
            if (r6 == r1) goto L4c
            return r6
        L4c:
            java.util.NoSuchElementException r6 = new java.util.NoSuchElementException
            java.lang.String r0 = "Expected at least one element"
            r6.<init>(r0)
            throw r6
        L54:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
