package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;

@Metadata(d1 = {"kotlinx/coroutines/channels/ChannelsKt__ChannelsKt", "kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt", "kotlinx/coroutines/channels/ChannelsKt__DeprecatedKt"}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ChannelsKt {
    public static final void a(ReceiveChannel receiveChannel, Throwable th) {
        CancellationException cancellationException = null;
        if (th != null) {
            if (th instanceof CancellationException) {
                cancellationException = (CancellationException) th;
            }
            if (cancellationException == null) {
                cancellationException = new CancellationException("Channel was consumed, consumer had failed");
                cancellationException.initCause(th);
            }
        }
        receiveChannel.a(cancellationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
    
        if (r8 == r1) goto L32;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x002e, B:17:0x0064, B:19:0x006c, B:21:0x007f, B:39:0x0045), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:12:0x002e, B:17:0x0064, B:19:0x006c, B:21:0x007f, B:39:0x0045), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.coroutines.Continuation, kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.channels.SendChannel, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.channels.ProducerScope] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v9, types: [kotlinx.coroutines.channels.ChannelIterator] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007c -> B:13:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(kotlinx.coroutines.channels.ReceiveChannel r6, kotlinx.coroutines.channels.ProducerScope r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1 r0 = (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1 r0 = new kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.g
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.f
            kotlinx.coroutines.channels.SendChannel r2 = r0.f21666c
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
        L31:
            r8 = r6
            r6 = r7
            r7 = r2
            goto L50
        L35:
            r6 = move-exception
            goto L8a
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlinx.coroutines.channels.ChannelIterator r6 = r0.g
            kotlinx.coroutines.channels.ReceiveChannel r7 = r0.f
            kotlinx.coroutines.channels.SendChannel r2 = r0.f21666c
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L64
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.ChannelIterator r8 = r6.iterator()     // Catch: java.lang.Throwable -> L86
        L50:
            r0.f21666c = r7     // Catch: java.lang.Throwable -> L86
            r0.f = r6     // Catch: java.lang.Throwable -> L86
            r0.g = r8     // Catch: java.lang.Throwable -> L86
            r0.i = r4     // Catch: java.lang.Throwable -> L86
            java.lang.Object r2 = r8.a(r0)     // Catch: java.lang.Throwable -> L86
            if (r2 != r1) goto L5f
            goto L7e
        L5f:
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r2
            r2 = r5
        L64:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L7f
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            r0.f21666c = r2     // Catch: java.lang.Throwable -> L35
            r0.f = r7     // Catch: java.lang.Throwable -> L35
            r0.g = r6     // Catch: java.lang.Throwable -> L35
            r0.i = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r2.r(r8, r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L31
        L7e:
            return r1
        L7f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            r6 = 0
            r7.a(r6)
            return r2
        L86:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L8a:
            throw r6     // Catch: java.lang.Throwable -> L8b
        L8b:
            r8 = move-exception
            a(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt.b(kotlinx.coroutines.channels.ReceiveChannel, kotlinx.coroutines.channels.ProducerScope, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
