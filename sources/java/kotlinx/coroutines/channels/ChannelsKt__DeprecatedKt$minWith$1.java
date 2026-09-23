package kotlinx.coroutines.channels;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {464, 466}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$minWith$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Comparator f21660c;
    public ReceiveChannel f;
    public ChannelIterator g;
    public Object h;
    public /* synthetic */ Object i;
    public int j;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0074 A[Catch: all -> 0x0088, TRY_LEAVE, TryCatch #2 {all -> 0x0088, blocks: (B:11:0x006c, B:13:0x0074), top: B:10:0x006c }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0064 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0065 -> B:10:0x006c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            r10.i = r11
            int r0 = r10.j
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 | r1
            int r0 = r0 - r1
            r10.j = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.j
            r2 = 0
            if (r1 == 0) goto L92
            r3 = 2
            r4 = 1
            if (r1 == r4) goto L36
            if (r1 != r3) goto L2e
            java.lang.Object r1 = r10.h
            kotlinx.coroutines.channels.ChannelIterator r4 = r10.g
            kotlinx.coroutines.channels.ReceiveChannel r5 = r10.f
            java.util.Comparator r6 = r10.f21660c
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L2a
            r7 = r6
            r6 = r5
            r5 = r4
            r4 = r1
            r1 = r10
            goto L6c
        L2a:
            r11 = move-exception
            r2 = r5
            goto L97
        L2e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L36:
            kotlinx.coroutines.channels.ChannelIterator r1 = r10.g
            kotlinx.coroutines.channels.ReceiveChannel r4 = r10.f
            java.util.Comparator r5 = r10.f21660c
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L8f
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L8f
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L8f
            if (r11 != 0) goto L4b
            r4.a(r2)
            return r2
        L4b:
            java.lang.Object r11 = r1.next()     // Catch: java.lang.Throwable -> L8f
            r6 = r5
            r5 = r4
            r4 = r1
            r1 = r11
            r11 = r10
        L54:
            r11.f21660c = r6     // Catch: java.lang.Throwable -> L2a
            r11.f = r5     // Catch: java.lang.Throwable -> L2a
            r11.g = r4     // Catch: java.lang.Throwable -> L2a
            r11.h = r1     // Catch: java.lang.Throwable -> L2a
            r11.j = r3     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r7 = r4.a(r11)     // Catch: java.lang.Throwable -> L2a
            if (r7 != r0) goto L65
            return r0
        L65:
            r9 = r1
            r1 = r11
            r11 = r7
            r7 = r6
            r6 = r5
            r5 = r4
            r4 = r9
        L6c:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L88
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L88
            if (r11 == 0) goto L8b
            java.lang.Object r11 = r5.next()     // Catch: java.lang.Throwable -> L88
            int r8 = r7.compare(r4, r11)     // Catch: java.lang.Throwable -> L88
            if (r8 <= 0) goto L85
            r4 = r1
            r1 = r11
            r11 = r4
        L81:
            r4 = r5
            r5 = r6
            r6 = r7
            goto L54
        L85:
            r11 = r1
            r1 = r4
            goto L81
        L88:
            r11 = move-exception
            r2 = r6
            goto L97
        L8b:
            r6.a(r2)
            return r4
        L8f:
            r11 = move-exception
            r2 = r4
            goto L97
        L92:
            kotlin.ResultKt.throwOnFailure(r11)
            throw r2     // Catch: java.lang.Throwable -> L96
        L96:
            r11 = move-exception
        L97:
            throw r11     // Catch: java.lang.Throwable -> L98
        L98:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.a(r2, r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$minWith$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
