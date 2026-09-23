package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/DisposableFutureHandle;", "Lkotlinx/coroutines/DisposableHandle;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class DisposableFutureHandle implements DisposableHandle {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledFuture f21585c;

    public DisposableFutureHandle(ScheduledFuture scheduledFuture) {
        this.f21585c = scheduledFuture;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void c() {
        this.f21585c.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f21585c + ']';
    }
}
