package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {179}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$singleOrNull$1<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21779c;
    public FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 f;
    public /* synthetic */ Object g;
    public int h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004c  */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            r6.g = r7
            int r0 = r6.h
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            int r0 = r0 - r1
            r6.h = r0
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r6.h
            r1 = 0
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f21853a
            r3 = 1
            if (r0 == 0) goto L29
            if (r0 != r3) goto L21
            kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 r0 = r6.f
            kotlin.jvm.internal.Ref$ObjectRef r3 = r6.f21779c
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L1f
            goto L47
        L1f:
            r7 = move-exception
            goto L43
        L21:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L29:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            r7.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$$inlined$collectWhile$1
            r0.<init>()
            r6.f21779c = r7     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            r6.f = r0     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            r6.h = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L3f
            throw r1
        L3f:
            r3 = move-exception
            r5 = r3
            r3 = r7
            r7 = r5
        L43:
            java.lang.Object r4 = r7.f21826c
            if (r4 != r0) goto L4e
        L47:
            T r7 = r3.element
            if (r7 != r2) goto L4c
            goto L4d
        L4c:
            r1 = r7
        L4d:
            return r1
        L4e:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$singleOrNull$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
