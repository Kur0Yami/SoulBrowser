package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {}, l = {739}, m = "receiveCatching-JP2dKIU$suspendImpl", n = {}, s = {})
/* loaded from: classes4.dex */
public final class BufferedChannel$receiveCatching$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21627c;
    public final /* synthetic */ BufferedChannel f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatching$1(BufferedChannel bufferedChannel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21627c = obj;
        this.g |= IntCompanionObject.MIN_VALUE;
        Object G = BufferedChannel.G(this.f, this);
        if (G == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return G;
        }
        return new ChannelResult(G);
    }
}
