package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/InvokeOnCancel;", "Lkotlinx/coroutines/CancelHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class InvokeOnCancel extends CancelHandler {

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f21594c;

    public InvokeOnCancel(Function1 function1) {
        this.f21594c = function1;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void e(Throwable th) {
        this.f21594c.invoke(th);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e(th);
        return Unit.INSTANCE;
    }

    public final String toString() {
        return "InvokeOnCancel[" + this.f21594c.getClass().getSimpleName() + '@' + DebugStringsKt.a(this) + ']';
    }
}
