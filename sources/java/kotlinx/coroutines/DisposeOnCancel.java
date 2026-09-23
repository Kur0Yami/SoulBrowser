package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/DisposeOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class DisposeOnCancel extends CancelHandler {

    /* renamed from: c, reason: collision with root package name */
    public final DisposableHandle f21586c;

    public DisposeOnCancel(DisposableHandle disposableHandle) {
        this.f21586c = disposableHandle;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void e(Throwable th) {
        this.f21586c.c();
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e(th);
        return Unit.INSTANCE;
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.f21586c + ']';
    }
}
