package kotlinx.coroutines.channels;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastChannelImpl", f = "BroadcastChannel.kt", i = {0, 0}, l = {227}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
public final class BroadcastChannelImpl$send$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f21614c;
    public /* synthetic */ Object f;
    public final /* synthetic */ BroadcastChannelImpl g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastChannelImpl$send$1(BroadcastChannelImpl broadcastChannelImpl, Continuation continuation) {
        super(continuation);
        this.g = broadcastChannelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        return this.g.r(null, this);
    }
}
