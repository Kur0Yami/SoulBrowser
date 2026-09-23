package kotlinx.coroutines;

import kotlin.Metadata;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/NonDisposableHandle;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/ChildHandle;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NonDisposableHandle implements DisposableHandle, ChildHandle {

    /* renamed from: c, reason: collision with root package name */
    public static final NonDisposableHandle f21602c = new Object();

    @Override // kotlinx.coroutines.ChildHandle
    public final boolean a(Throwable th) {
        return false;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void c() {
    }

    @Override // kotlinx.coroutines.ChildHandle
    public final Job getParent() {
        return null;
    }

    public final String toString() {
        return "NonDisposableHandle";
    }
}
