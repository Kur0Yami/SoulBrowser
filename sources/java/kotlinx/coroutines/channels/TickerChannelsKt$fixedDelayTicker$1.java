package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 1, 1, 2, 2}, l = {102, 104, 105}, m = "fixedDelayTicker", n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
/* loaded from: classes4.dex */
final class TickerChannelsKt$fixedDelayTicker$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SendChannel f21675c;
    public /* synthetic */ Object f;
    public int g;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0065, code lost:
    
        if (kotlinx.coroutines.DelayKt.a(0, r9) == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        if (r0 == r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (kotlinx.coroutines.DelayKt.a(0, r9) == r1) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0065 -> B:15:0x0050). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            r8.f = r9
            int r9 = r8.g
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r9 = r9 | r0
            r8.g = r9
            r1 = r9 & r0
            if (r1 == 0) goto L12
            int r9 = r9 - r0
            r8.g = r9
            r9 = r8
            goto L17
        L12:
            kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1 r9 = new kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1
            r9.<init>(r8)
        L17:
            java.lang.Object r0 = r9.f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r9.g
            r3 = 0
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L41
            if (r2 == r7) goto L3b
            if (r2 == r6) goto L35
            if (r2 != r5) goto L2d
            goto L3b
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L35:
            kotlinx.coroutines.channels.SendChannel r2 = r9.f21675c
            kotlin.ResultKt.throwOnFailure(r0)
            goto L5d
        L3b:
            kotlinx.coroutines.channels.SendChannel r2 = r9.f21675c
            kotlin.ResultKt.throwOnFailure(r0)
            goto L50
        L41:
            kotlin.ResultKt.throwOnFailure(r0)
            r2 = 0
            r9.f21675c = r2
            r9.g = r7
            java.lang.Object r0 = kotlinx.coroutines.DelayKt.a(r3, r9)
            if (r0 != r1) goto L50
            goto L67
        L50:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r9.f21675c = r2
            r9.g = r6
            java.lang.Object r0 = r2.r(r0, r9)
            if (r0 != r1) goto L5d
            goto L67
        L5d:
            r9.f21675c = r2
            r9.g = r5
            java.lang.Object r0 = kotlinx.coroutines.DelayKt.a(r3, r9)
            if (r0 != r1) goto L50
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.TickerChannelsKt$fixedDelayTicker$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
