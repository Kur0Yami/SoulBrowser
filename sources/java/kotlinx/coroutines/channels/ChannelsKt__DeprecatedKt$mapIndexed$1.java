package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "R", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {374, 375, 375}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$mapIndexed$1 extends SuspendLambda implements Function2<ProducerScope<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public ChannelIterator f21658c;
    public ProducerScope f;
    public int g;
    public int h;
    public /* synthetic */ Object i;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<Object> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$mapIndexed$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
    
        if (r9 == r0) goto L18;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.h
            r2 = 0
            if (r1 == 0) goto L6d
            r3 = 1
            if (r1 == r3) goto L55
            r4 = 3
            r5 = 2
            if (r1 == r5) goto L26
            if (r1 != r4) goto L1e
            int r1 = r8.g
            kotlinx.coroutines.channels.ChannelIterator r4 = r8.f21658c
            java.lang.Object r5 = r8.i
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r9)
            goto L46
        L1e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L26:
            int r1 = r8.g
            kotlinx.coroutines.channels.ProducerScope r5 = r8.f
            kotlinx.coroutines.channels.ChannelIterator r6 = r8.f21658c
            java.lang.Object r7 = r8.i
            kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
            kotlin.ResultKt.throwOnFailure(r9)
            r8.i = r7
            r8.f21658c = r6
            r8.f = r2
            r8.g = r1
            r8.h = r4
            java.lang.Object r9 = r5.r(r9, r8)
            if (r9 != r0) goto L44
            goto L54
        L44:
            r4 = r6
            r5 = r7
        L46:
            r8.i = r5
            r8.f21658c = r4
            r8.g = r1
            r8.h = r3
            java.lang.Object r9 = r4.a(r8)
            if (r9 != r0) goto L5e
        L54:
            return r0
        L55:
            kotlinx.coroutines.channels.ChannelIterator r4 = r8.f21658c
            java.lang.Object r0 = r8.i
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            kotlin.ResultKt.throwOnFailure(r9)
        L5e:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L69
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L69:
            r4.next()
            throw r2
        L6d:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.i
            kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
