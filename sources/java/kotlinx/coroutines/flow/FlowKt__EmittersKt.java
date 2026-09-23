package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 5, mv = {1, 9, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,218:1\n105#2:219\n105#2:220\n105#2:221\n105#2:222\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n46#1:219\n72#1:220\n142#1:221\n177#1:222\n*E\n"})
/* loaded from: classes4.dex */
final /* synthetic */ class FlowKt__EmittersKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.flow.ThrowingCollector r3, java.lang.Throwable r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r3 = r5 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            if (r3 == 0) goto L13
            r3 = r5
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r3 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1) r3
            int r0 = r3.g
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r3.g = r0
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1 r3 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$invokeSafely$1
            r3.<init>(r5)
        L18:
            java.lang.Object r5 = r3.f
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r3.g
            r1 = 1
            if (r0 == 0) goto L36
            if (r0 != r1) goto L2e
            java.lang.Throwable r4 = r3.f21734c
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2c
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        L2c:
            r3 = move-exception
            goto L3f
        L2e:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r4)
            throw r3
        L36:
            kotlin.ResultKt.throwOnFailure(r5)
            r3.f21734c = r4     // Catch: java.lang.Throwable -> L2c
            r3.g = r1     // Catch: java.lang.Throwable -> L2c
            r3 = 0
            throw r3     // Catch: java.lang.Throwable -> L2c
        L3f:
            if (r4 == 0) goto L46
            if (r4 == r3) goto L46
            kotlin.ExceptionsKt.addSuppressed(r3, r4)
        L46:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt.a(kotlinx.coroutines.flow.ThrowingCollector, java.lang.Throwable, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
