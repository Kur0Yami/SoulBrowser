package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ObsoleteCoroutinesApi;

@Deprecated(level = DeprecationLevel.WARNING, message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported")
@ObsoleteCoroutinesApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;", "E", "Lkotlinx/coroutines/channels/BroadcastChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ConflatedBroadcastChannel<E> implements BroadcastChannel<E> {
    @Override // kotlinx.coroutines.channels.SendChannel
    public final void p(Function1 function1) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object q(Object obj) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object r(Object obj, Continuation continuation) {
        throw null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean s() {
        throw null;
    }
}
