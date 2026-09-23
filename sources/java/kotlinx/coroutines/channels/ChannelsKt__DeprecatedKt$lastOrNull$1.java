package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {153, 156}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$lastOrNull$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public ReceiveChannel f21656c;
    public ChannelIterator f;
    public Object g;
    public /* synthetic */ Object h;
    public int i;

    /* JADX WARN: Removed duplicated region for block: B:13:0x006b A[Catch: all -> 0x0075, TRY_LEAVE, TryCatch #2 {all -> 0x0075, blocks: (B:11:0x0063, B:13:0x006b), top: B:10:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:10:0x0063). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L7f
            r3 = 2
            r4 = 1
            if (r1 == r4) goto L33
            if (r1 != r3) goto L2b
            java.lang.Object r1 = r8.g
            kotlinx.coroutines.channels.ChannelIterator r4 = r8.f
            kotlinx.coroutines.channels.ReceiveChannel r5 = r8.f21656c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L27
            r6 = r5
            r5 = r4
            r4 = r1
            r1 = r8
            goto L63
        L27:
            r9 = move-exception
            r2 = r5
            goto L84
        L2b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L33:
            kotlinx.coroutines.channels.ChannelIterator r1 = r8.f
            kotlinx.coroutines.channels.ReceiveChannel r4 = r8.f21656c
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L7c
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L7c
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L7c
            if (r9 != 0) goto L46
            r4.a(r2)
            return r2
        L46:
            java.lang.Object r9 = r1.next()     // Catch: java.lang.Throwable -> L7c
            r5 = r4
            r4 = r1
            r1 = r9
            r9 = r8
        L4e:
            r9.f21656c = r5     // Catch: java.lang.Throwable -> L27
            r9.f = r4     // Catch: java.lang.Throwable -> L27
            r9.g = r1     // Catch: java.lang.Throwable -> L27
            r9.i = r3     // Catch: java.lang.Throwable -> L27
            java.lang.Object r6 = r4.a(r9)     // Catch: java.lang.Throwable -> L27
            if (r6 != r0) goto L5d
            return r0
        L5d:
            r7 = r1
            r1 = r9
            r9 = r6
            r6 = r5
            r5 = r4
            r4 = r7
        L63:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L75
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L75
            if (r9 == 0) goto L78
            java.lang.Object r9 = r5.next()     // Catch: java.lang.Throwable -> L75
            r4 = r1
            r1 = r9
            r9 = r4
            r4 = r5
            r5 = r6
            goto L4e
        L75:
            r9 = move-exception
            r2 = r6
            goto L84
        L78:
            r6.a(r2)
            return r4
        L7c:
            r9 = move-exception
            r2 = r4
            goto L84
        L7f:
            kotlin.ResultKt.throwOnFailure(r9)
            throw r2     // Catch: java.lang.Throwable -> L83
        L83:
            r9 = move-exception
        L84:
            throw r9     // Catch: java.lang.Throwable -> L85
        L85:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.a(r2, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$lastOrNull$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
