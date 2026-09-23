package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 5, mv = {1, 9, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,172:1\n105#2:173\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n149#1:173\n*E\n"})
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__ChannelsKt {
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        if (r9 == r1) goto L33;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #1 {all -> 0x0036, blocks: (B:12:0x0030, B:14:0x0057, B:20:0x006c, B:22:0x0074, B:32:0x0048, B:35:0x0053), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0086 -> B:13:0x0033). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlinx.coroutines.flow.FlowCollector r6, kotlinx.coroutines.channels.ReceiveChannel r7, boolean r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = (kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1) r0
            int r1 = r0.j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.j = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1 r0 = new kotlinx.coroutines.flow.FlowKt__ChannelsKt$emitAllImpl$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.j
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            boolean r8 = r0.h
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.g
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.f
            kotlinx.coroutines.flow.FlowCollector r2 = r0.f21709c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
        L33:
            r9 = r6
            r6 = r2
            goto L57
        L36:
            r6 = move-exception
            goto L92
        L38:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L40:
            boolean r8 = r0.h
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.g
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.f
            kotlinx.coroutines.flow.FlowCollector r2 = r0.f21709c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L36
            goto L6c
        L4c:
            kotlin.ResultKt.throwOnFailure(r9)
            boolean r9 = r6 instanceof kotlinx.coroutines.flow.ThrowingCollector
            if (r9 != 0) goto L9a
            kotlinx.coroutines.channels.ChannelIterator r9 = r7.iterator()     // Catch: java.lang.Throwable -> L36
        L57:
            r0.f21709c = r6     // Catch: java.lang.Throwable -> L36
            r0.f = r7     // Catch: java.lang.Throwable -> L36
            r0.g = r9     // Catch: java.lang.Throwable -> L36
            r0.h = r8     // Catch: java.lang.Throwable -> L36
            r0.j = r4     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r9.a(r0)     // Catch: java.lang.Throwable -> L36
            if (r2 != r1) goto L68
            goto L88
        L68:
            r5 = r2
            r2 = r6
            r6 = r9
            r9 = r5
        L6c:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L36
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r9 == 0) goto L89
            java.lang.Object r9 = r6.next()     // Catch: java.lang.Throwable -> L36
            r0.f21709c = r2     // Catch: java.lang.Throwable -> L36
            r0.f = r7     // Catch: java.lang.Throwable -> L36
            r0.g = r6     // Catch: java.lang.Throwable -> L36
            r0.h = r8     // Catch: java.lang.Throwable -> L36
            r0.j = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r9 = r2.b(r9, r0)     // Catch: java.lang.Throwable -> L36
            if (r9 != r1) goto L33
        L88:
            return r1
        L89:
            if (r8 == 0) goto L8f
            r6 = 0
            r7.a(r6)
        L8f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L92:
            throw r6     // Catch: java.lang.Throwable -> L93
        L93:
            r9 = move-exception
            if (r8 == 0) goto L99
            kotlinx.coroutines.channels.ChannelsKt.a(r7, r6)
        L99:
            throw r9
        L9a:
            kotlinx.coroutines.flow.ThrowingCollector r6 = (kotlinx.coroutines.flow.ThrowingCollector) r6
            java.lang.Throwable r6 = r6.f21825c
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.a(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.ReceiveChannel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
