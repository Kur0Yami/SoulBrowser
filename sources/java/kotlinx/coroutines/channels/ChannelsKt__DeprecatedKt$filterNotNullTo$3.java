package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.channels.SendChannel;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {517, 272}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$filterNotNullTo$3<E, C extends SendChannel<? super E>> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SendChannel f21649c;
    public ReceiveChannel f;
    public ChannelIterator g;
    public /* synthetic */ Object h;
    public int i;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
    
        if (r9 != r0) goto L16;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0045 -> B:10:0x0056). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0053 -> B:10:0x0056). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            r8.h = r9
            int r0 = r8.i
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            int r0 = r0 - r1
            r8.i = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.i
            r2 = 0
            if (r1 == 0) goto L6b
            r3 = 2
            r4 = 1
            if (r1 == r4) goto L2f
            if (r1 != r3) goto L27
            kotlinx.coroutines.channels.ChannelIterator r1 = r8.g
            kotlinx.coroutines.channels.ReceiveChannel r5 = r8.f
            kotlinx.coroutines.channels.SendChannel r6 = r8.f21649c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L24
            r7 = r8
            goto L56
        L24:
            r9 = move-exception
            r2 = r5
            goto L70
        L27:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L2f:
            kotlinx.coroutines.channels.ChannelIterator r1 = r8.g
            kotlinx.coroutines.channels.ReceiveChannel r5 = r8.f
            kotlinx.coroutines.channels.SendChannel r6 = r8.f21649c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L24
            r7 = r8
        L39:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L24
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L24
            if (r9 == 0) goto L65
            java.lang.Object r9 = r1.next()     // Catch: java.lang.Throwable -> L24
            if (r9 == 0) goto L56
            r7.f21649c = r6     // Catch: java.lang.Throwable -> L24
            r7.f = r5     // Catch: java.lang.Throwable -> L24
            r7.g = r1     // Catch: java.lang.Throwable -> L24
            r7.i = r3     // Catch: java.lang.Throwable -> L24
            java.lang.Object r9 = r6.r(r9, r7)     // Catch: java.lang.Throwable -> L24
            if (r9 != r0) goto L56
            goto L64
        L56:
            r7.f21649c = r6     // Catch: java.lang.Throwable -> L24
            r7.f = r5     // Catch: java.lang.Throwable -> L24
            r7.g = r1     // Catch: java.lang.Throwable -> L24
            r7.i = r4     // Catch: java.lang.Throwable -> L24
            java.lang.Object r9 = r1.a(r7)     // Catch: java.lang.Throwable -> L24
            if (r9 != r0) goto L39
        L64:
            return r0
        L65:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L24
            r5.a(r2)
            return r6
        L6b:
            kotlin.ResultKt.throwOnFailure(r9)
            throw r2     // Catch: java.lang.Throwable -> L6f
        L6f:
            r9 = move-exception
        L70:
            throw r9     // Catch: java.lang.Throwable -> L71
        L71:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.a(r2, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNullTo$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
