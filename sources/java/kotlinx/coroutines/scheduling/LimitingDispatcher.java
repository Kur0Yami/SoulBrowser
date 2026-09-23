package kotlinx.coroutines.scheduling;

import android.support.v4.media.a;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003R\u000b\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/scheduling/LimitingDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/scheduling/TaskContext;", "Ljava/util/concurrent/Executor;", "Lkotlinx/atomicfu/AtomicInt;", "inFlightTasks", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class LimitingDispatcher extends ExecutorCoroutineDispatcher implements TaskContext, Executor {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(LimitingDispatcher.class, "inFlightTasks$volatile");
    private volatile /* synthetic */ int inFlightTasks$volatile;

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        if (f.incrementAndGet(this) <= 0) {
            throw null;
        }
        throw null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void T(CoroutineContext coroutineContext, Runnable runnable) {
        if (f.incrementAndGet(this) <= 0) {
            throw null;
        }
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher");
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public final void d() {
        throw null;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (f.incrementAndGet(this) <= 0) {
            throw null;
        }
        throw null;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    /* renamed from: m */
    public final int getF21910c() {
        return 0;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return a.p(new StringBuilder(), super.toString(), "[dispatcher = null]");
    }
}
