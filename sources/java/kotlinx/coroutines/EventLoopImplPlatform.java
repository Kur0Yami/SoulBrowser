package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.EventLoopImplBase;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/EventLoop;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class EventLoopImplPlatform extends EventLoop {
    /* renamed from: e0 */
    public abstract Thread getL();

    public void h0(long j, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.l.s0(j, delayedTask);
    }
}
