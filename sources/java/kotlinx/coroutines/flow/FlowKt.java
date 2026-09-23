package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ReceiveChannel;

@Metadata(d1 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt", "kotlinx/coroutines/flow/FlowKt__ChannelsKt", "kotlinx/coroutines/flow/FlowKt__CollectKt", "kotlinx/coroutines/flow/FlowKt__CollectionKt", "kotlinx/coroutines/flow/FlowKt__ContextKt", "kotlinx/coroutines/flow/FlowKt__CountKt", "kotlinx/coroutines/flow/FlowKt__DelayKt", "kotlinx/coroutines/flow/FlowKt__DistinctKt", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__ErrorsKt", "kotlinx/coroutines/flow/FlowKt__LimitKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__MigrationKt", "kotlinx/coroutines/flow/FlowKt__ReduceKt", "kotlinx/coroutines/flow/FlowKt__ShareKt", "kotlinx/coroutines/flow/FlowKt__TransformKt", "kotlinx/coroutines/flow/FlowKt__ZipKt"}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FlowKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r0v0, types: [int, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.flow.FlowCollector r3, kotlin.coroutines.jvm.internal.ContinuationImpl r4) {
        /*
            boolean r3 = r4 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            if (r3 == 0) goto L13
            r3 = r4
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r3 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1) r3
            int r0 = r3.g
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r3.g = r0
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1 r3 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$1
            r3.<init>(r4)
        L18:
            java.lang.Object r4 = r3.f
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r3.g
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L35
            if (r0 != r2) goto L2d
            kotlin.jvm.internal.Ref$ObjectRef r0 = r3.f21740c
            kotlin.ResultKt.throwOnFailure(r4)     // Catch: java.lang.Throwable -> L2b
            return r1
        L2b:
            r4 = move-exception
            goto L42
        L2d:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r4)
            throw r3
        L35:
            kotlin.ResultKt.throwOnFailure(r4)
            kotlin.jvm.internal.Ref$ObjectRef r0 = new kotlin.jvm.internal.Ref$ObjectRef
            r0.<init>()
            r3.f21740c = r0     // Catch: java.lang.Throwable -> L2b
            r3.g = r2     // Catch: java.lang.Throwable -> L2b
            throw r1     // Catch: java.lang.Throwable -> L2b
        L42:
            T r0 = r0.element
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            if (r0 == 0) goto L4e
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r4)
            if (r1 != 0) goto L70
        L4e:
            kotlin.coroutines.CoroutineContext r3 = r3.getG()
            kotlinx.coroutines.Job$Key r1 = kotlinx.coroutines.Job.Key.f21595c
            kotlin.coroutines.CoroutineContext$Element r3 = r3.get(r1)
            kotlinx.coroutines.Job r3 = (kotlinx.coroutines.Job) r3
            if (r3 == 0) goto L71
            boolean r1 = r3.G()
            if (r1 != 0) goto L63
            goto L71
        L63:
            java.util.concurrent.CancellationException r3 = r3.j()
            if (r3 == 0) goto L71
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 != 0) goto L70
            goto L71
        L70:
            throw r4
        L71:
            if (r0 != 0) goto L74
            return r4
        L74:
            boolean r3 = r4 instanceof java.util.concurrent.CancellationException
            if (r3 == 0) goto L7c
            kotlin.ExceptionsKt.addSuppressed(r0, r4)
            throw r0
        L7c:
            kotlin.ExceptionsKt.addSuppressed(r4, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.a(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object b(FlowCollector flowCollector, ReceiveChannel receiveChannel, Continuation continuation) {
        Object a2 = FlowKt__ChannelsKt.a(flowCollector, receiveChannel, true, continuation);
        if (a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return a2;
        }
        return Unit.INSTANCE;
    }

    public static final Object c(FlowCollector flowCollector, Flow flow, ContinuationImpl continuationImpl) {
        if (!(flowCollector instanceof ThrowingCollector)) {
            Object a2 = flow.a(flowCollector, continuationImpl);
            if (a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return a2;
            }
            return Unit.INSTANCE;
        }
        throw ((ThrowingCollector) flowCollector).f21825c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object d(kotlinx.coroutines.flow.Flow r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1 r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1 r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$1
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 r4 = r0.f
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.f21770c
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L5b
        L2d:
            r5 = move-exception
            goto L57
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1 r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$1
            r2.<init>()
            r0.f21770c = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.f = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            r0.h = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            java.lang.Object r4 = r4.a(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L53
            if (r4 != r1) goto L51
            return r1
        L51:
            r0 = r5
            goto L5b
        L53:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L57:
            java.lang.Object r1 = r5.f21826c
            if (r1 != r4) goto L5e
        L5b:
            T r4 = r0.element
            return r4
        L5e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt.d(kotlinx.coroutines.flow.Flow, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Flow e(Function2 function2) {
        return new SafeFlow(function2);
    }
}
