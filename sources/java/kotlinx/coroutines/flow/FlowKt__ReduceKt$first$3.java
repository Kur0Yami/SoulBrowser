package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0, 0}, l = {179}, m = "first", n = {"predicate", "result", "collector$iv"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes4.dex */
final class FlowKt__ReduceKt$first$3<T> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Object f21769c;
    public Ref.ObjectRef f;
    public FlowKt__ReduceKt$first$$inlined$collectWhile$2 g;
    public /* synthetic */ Object h;
    public int i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0061  */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            r5.h = r6
            int r6 = r5.i
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r6 | r0
            r5.i = r6
            r1 = r6 & r0
            if (r1 == 0) goto L12
            int r6 = r6 - r0
            r5.i = r6
            r6 = r5
            goto L17
        L12:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3 r6 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3
            r6.<init>(r5)
        L17:
            java.lang.Object r0 = r6.h
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.i
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f21853a
            r3 = 1
            if (r1 == 0) goto L3b
            if (r1 != r3) goto L33
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r1 = r6.g
            kotlin.jvm.internal.Ref$ObjectRef r3 = r6.f
            java.lang.Object r6 = r6.f21769c
            kotlin.jvm.functions.Function2 r6 = (kotlin.jvm.functions.Function2) r6
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L31
            goto L5c
        L31:
            r0 = move-exception
            goto L58
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3b:
            kotlin.ResultKt.throwOnFailure(r0)
            kotlin.jvm.internal.Ref$ObjectRef r0 = new kotlin.jvm.internal.Ref$ObjectRef
            r0.<init>()
            r0.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r1 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2
            r4 = 0
            r1.<init>(r4, r0)
            r6.f21769c = r4     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L54
            r6.f = r0     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L54
            r6.g = r1     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L54
            r6.i = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L54
            throw r4
        L54:
            r6 = move-exception
            r3 = r0
            r0 = r6
            r6 = r4
        L58:
            java.lang.Object r4 = r0.f21826c
            if (r4 != r1) goto L75
        L5c:
            T r0 = r3.element
            if (r0 == r2) goto L61
            return r0
        L61:
            java.util.NoSuchElementException r0 = new java.util.NoSuchElementException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected at least one element matching the predicate "
            r1.<init>(r2)
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.<init>(r6)
            throw r0
        L75:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt$first$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
