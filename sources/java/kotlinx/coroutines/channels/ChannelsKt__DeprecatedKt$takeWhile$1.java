package kotlinx.coroutines.channels;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "E", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {299, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$takeWhile$1 extends SuspendLambda implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public ChannelIterator f21665c;
    public Object f;
    public int g;
    public /* synthetic */ Object h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChannelsKt__DeprecatedKt$takeWhile$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0055, code lost:
    
        if (r8 == r0) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.g
            r2 = 0
            if (r1 == 0) goto L70
            r3 = 1
            if (r1 == r3) goto L58
            r4 = 3
            r5 = 2
            if (r1 == r5) goto L24
            if (r1 != r4) goto L1c
            kotlinx.coroutines.channels.ChannelIterator r1 = r7.f21665c
            java.lang.Object r4 = r7.h
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4b
        L1c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L24:
            java.lang.Object r1 = r7.f
            kotlinx.coroutines.channels.ChannelIterator r5 = r7.f21665c
            java.lang.Object r6 = r7.h
            kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L3a
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L3a:
            r7.h = r6
            r7.f21665c = r5
            r7.f = r2
            r7.g = r4
            java.lang.Object r8 = r6.r(r1, r7)
            if (r8 != r0) goto L49
            goto L57
        L49:
            r1 = r5
            r4 = r6
        L4b:
            r7.h = r4
            r7.f21665c = r1
            r7.g = r3
            java.lang.Object r8 = r1.a(r7)
            if (r8 != r0) goto L61
        L57:
            return r0
        L58:
            kotlinx.coroutines.channels.ChannelIterator r1 = r7.f21665c
            java.lang.Object r0 = r7.h
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            kotlin.ResultKt.throwOnFailure(r8)
        L61:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L6c
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6c:
            r1.next()
            throw r2
        L70:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.h
            kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
