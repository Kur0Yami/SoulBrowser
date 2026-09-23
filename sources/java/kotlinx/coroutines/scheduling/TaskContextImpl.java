package kotlinx.coroutines.scheduling;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/scheduling/TaskContextImpl;", "Lkotlinx/coroutines/scheduling/TaskContext;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class TaskContextImpl implements TaskContext {

    /* renamed from: c, reason: collision with root package name */
    public final int f21910c;

    public TaskContextImpl(int i) {
        this.f21910c = i;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public final void d() {
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    /* renamed from: m, reason: from getter */
    public final int getF21910c() {
        return this.f21910c;
    }
}
