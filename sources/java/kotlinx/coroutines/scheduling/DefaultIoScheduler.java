package kotlinx.coroutines.scheduling;

import android.support.v4.media.a;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.SystemPropsKt;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultIoScheduler;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Ljava/util/concurrent/Executor;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultIoScheduler extends ExecutorCoroutineDispatcher implements Executor {
    public static final DefaultIoScheduler f = new CoroutineDispatcher();
    public static final CoroutineDispatcher g;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.scheduling.DefaultIoScheduler, kotlinx.coroutines.CoroutineDispatcher] */
    static {
        CoroutineDispatcher coroutineDispatcher = UnlimitedIoScheduler.f;
        int d = SystemPropsKt.d(RangesKt.coerceAtLeast(64, SystemPropsKt.a()), 12, "kotlinx.coroutines.io.parallelism");
        coroutineDispatcher.getClass();
        if (d >= 1) {
            if (d < TasksKt.d) {
                if (d >= 1) {
                    coroutineDispatcher = new LimitedDispatcher(coroutineDispatcher, d);
                } else {
                    throw new IllegalArgumentException(a.e(d, "Expected positive parallelism level, but got ").toString());
                }
            }
            g = coroutineDispatcher;
            return;
        }
        throw new IllegalArgumentException(a.e(d, "Expected positive parallelism level, but got ").toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        g.S(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void T(CoroutineContext coroutineContext, Runnable runnable) {
        g.T(coroutineContext, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        S(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.IO";
    }
}
