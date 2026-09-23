package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "K", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {417, 418, 420}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", "e", "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$distinctBy$1 extends SuspendLambda implements Function2<ProducerScope<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public HashSet f21642c;
    public ChannelIterator f;
    public Object g;
    public int h;
    public /* synthetic */ Object i;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<Object> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$distinctBy$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0064, code lost:
    
        if (r10 != r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.h
            r2 = 0
            if (r1 == 0) goto L7f
            r3 = 1
            if (r1 == r3) goto L67
            r4 = 3
            r5 = 2
            if (r1 == r5) goto L29
            if (r1 != r4) goto L21
            java.lang.Object r1 = r9.g
            kotlinx.coroutines.channels.ChannelIterator r4 = r9.f
            java.util.HashSet r5 = r9.f21642c
            java.lang.Object r6 = r9.i
            kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r1
            goto L50
        L21:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L29:
            java.lang.Object r1 = r9.g
            kotlinx.coroutines.channels.ChannelIterator r5 = r9.f
            java.util.HashSet r6 = r9.f21642c
            java.lang.Object r7 = r9.i
            kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
            kotlin.ResultKt.throwOnFailure(r10)
            boolean r8 = r6.contains(r10)
            if (r8 != 0) goto L56
            r9.i = r7
            r9.f21642c = r6
            r9.f = r5
            r9.g = r10
            r9.h = r4
            java.lang.Object r1 = r7.r(r1, r9)
            if (r1 != r0) goto L4d
            goto L66
        L4d:
            r4 = r5
            r5 = r6
            r6 = r7
        L50:
            r5.add(r10)
            r7 = r6
            r6 = r5
            r5 = r4
        L56:
            r9.i = r7
            r9.f21642c = r6
            r9.f = r5
            r9.g = r2
            r9.h = r3
            java.lang.Object r10 = r5.a(r9)
            if (r10 != r0) goto L70
        L66:
            return r0
        L67:
            kotlinx.coroutines.channels.ChannelIterator r5 = r9.f
            java.lang.Object r0 = r9.i
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            kotlin.ResultKt.throwOnFailure(r10)
        L70:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 != 0) goto L7b
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L7b:
            r5.next()
            throw r2
        L7f:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.i
            kotlinx.coroutines.channels.ProducerScope r10 = (kotlinx.coroutines.channels.ProducerScope) r10
            java.util.HashSet r10 = new java.util.HashSet
            r10.<init>()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
