package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;
import kotlin.Metadata;
import kotlin.Unit;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/CancelFutureOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class CancelFutureOnCancel extends CancelHandler {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledFuture f21568c;

    public CancelFutureOnCancel(ScheduledFuture scheduledFuture) {
        this.f21568c = scheduledFuture;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void e(Throwable th) {
        if (th != null) {
            this.f21568c.cancel(false);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e(th);
        return Unit.INSTANCE;
    }

    public final String toString() {
        return "CancelFutureOnCancel[" + this.f21568c + ']';
    }
}
