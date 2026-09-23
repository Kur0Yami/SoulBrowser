package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultScheduler extends SchedulerCoroutineDispatcher {
    public static final DefaultScheduler g;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, kotlinx.coroutines.scheduling.DefaultScheduler, kotlinx.coroutines.CoroutineDispatcher] */
    static {
        int i = TasksKt.f21912c;
        int i2 = TasksKt.d;
        long j = TasksKt.e;
        String str = TasksKt.f21911a;
        ?? coroutineDispatcher = new CoroutineDispatcher();
        coroutineDispatcher.f = new CoroutineScheduler(i, i2, str, j);
        g = coroutineDispatcher;
    }

    @Override // kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.Default";
    }
}
