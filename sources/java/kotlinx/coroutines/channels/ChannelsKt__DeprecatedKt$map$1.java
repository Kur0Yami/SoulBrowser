package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {517, 363, 363}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
@SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,509:1\n81#2:510\n58#2,6:511\n82#2,2:517\n68#2:519\n64#2,3:520\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n*L\n362#1:510\n362#1:511,6\n362#1:517,2\n362#1:519\n362#1:520,3\n*E\n"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$map$1 extends SuspendLambda implements Function2<ProducerScope<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public Function2 f21657c;
    public ReceiveChannel f;
    public ChannelIterator g;
    public ProducerScope h;
    public int i;
    public /* synthetic */ Object j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<Object> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$map$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0095, code lost:
    
        if (r11 != r0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0083 -> B:10:0x0087). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.i
            r2 = 0
            if (r1 == 0) goto La6
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == r5) goto L3f
            if (r1 == r4) goto L2c
            if (r1 != r3) goto L24
            kotlinx.coroutines.channels.ChannelIterator r1 = r10.g
            kotlinx.coroutines.channels.ReceiveChannel r6 = r10.f
            kotlin.jvm.functions.Function2 r7 = r10.f21657c
            java.lang.Object r8 = r10.j
            kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L21
            goto L87
        L21:
            r11 = move-exception
            goto La0
        L24:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L2c:
            kotlinx.coroutines.channels.ProducerScope r1 = r10.h
            kotlinx.coroutines.channels.ChannelIterator r6 = r10.g
            kotlinx.coroutines.channels.ReceiveChannel r7 = r10.f
            kotlin.jvm.functions.Function2 r8 = r10.f21657c
            java.lang.Object r9 = r10.j
            kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L3c
            goto L70
        L3c:
            r11 = move-exception
            r6 = r7
            goto La0
        L3f:
            kotlinx.coroutines.channels.ChannelIterator r1 = r10.g
            kotlinx.coroutines.channels.ReceiveChannel r6 = r10.f
            kotlin.jvm.functions.Function2 r7 = r10.f21657c
            java.lang.Object r8 = r10.j
            kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L21
        L4c:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L21
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L21
            if (r11 == 0) goto L98
            java.lang.Object r11 = r1.next()     // Catch: java.lang.Throwable -> L21
            r10.j = r8     // Catch: java.lang.Throwable -> L21
            r10.f21657c = r7     // Catch: java.lang.Throwable -> L21
            r10.f = r6     // Catch: java.lang.Throwable -> L21
            r10.g = r1     // Catch: java.lang.Throwable -> L21
            r10.h = r8     // Catch: java.lang.Throwable -> L21
            r10.i = r4     // Catch: java.lang.Throwable -> L21
            java.lang.Object r11 = r7.invoke(r11, r10)     // Catch: java.lang.Throwable -> L21
            if (r11 != r0) goto L6b
            goto L97
        L6b:
            r9 = r8
            r8 = r7
            r7 = r6
            r6 = r1
            r1 = r9
        L70:
            r10.j = r9     // Catch: java.lang.Throwable -> L3c
            r10.f21657c = r8     // Catch: java.lang.Throwable -> L3c
            r10.f = r7     // Catch: java.lang.Throwable -> L3c
            r10.g = r6     // Catch: java.lang.Throwable -> L3c
            r10.h = r2     // Catch: java.lang.Throwable -> L3c
            r10.i = r3     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r11 = r1.r(r11, r10)     // Catch: java.lang.Throwable -> L3c
            if (r11 != r0) goto L83
            goto L97
        L83:
            r1 = r6
            r6 = r7
            r7 = r8
            r8 = r9
        L87:
            r10.j = r8     // Catch: java.lang.Throwable -> L21
            r10.f21657c = r7     // Catch: java.lang.Throwable -> L21
            r10.f = r6     // Catch: java.lang.Throwable -> L21
            r10.g = r1     // Catch: java.lang.Throwable -> L21
            r10.i = r5     // Catch: java.lang.Throwable -> L21
            java.lang.Object r11 = r1.a(r10)     // Catch: java.lang.Throwable -> L21
            if (r11 != r0) goto L4c
        L97:
            return r0
        L98:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L21
            r6.a(r2)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        La0:
            throw r11     // Catch: java.lang.Throwable -> La1
        La1:
            r0 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.a(r6, r11)
            throw r0
        La6:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.j
            kotlinx.coroutines.channels.ProducerScope r11 = (kotlinx.coroutines.channels.ProducerScope) r11
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
