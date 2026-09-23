package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.intrinsics.CancellableKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/LazyActorCoroutine;", "E", "Lkotlinx/coroutines/channels/ActorCoroutine;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class LazyActorCoroutine<E> extends ActorCoroutine<E> {
    public static final /* synthetic */ int i = 0;

    @Override // kotlinx.coroutines.JobSupport
    public final void d0() {
        CancellableKt.a(null, this);
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final Object q(Object obj) {
        start();
        return super.q(obj);
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final Object r(Object obj, Continuation continuation) {
        start();
        Object r = super.r(obj, continuation);
        if (r == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return r;
        }
        return Unit.INSTANCE;
    }
}
