package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.channels.ChannelResult;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ReceiveChannel$DefaultImpls", f = "Channel.kt", i = {}, l = {380}, m = "receiveOrNull", n = {}, s = {})
/* loaded from: classes4.dex */
final class ReceiveChannel$receiveOrNull$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21674c;
    public int f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21674c = obj;
        this.f = (this.f | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = ((ChannelResult) obj).f21634a;
                if (obj2 instanceof ChannelResult.Failed) {
                    return null;
                }
                return obj2;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        this.f = 1;
        throw null;
    }
}
