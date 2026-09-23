package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.EventLoopImplBase;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u0012\u0004\b\u0007\u0010\bR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Thread;", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "()V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "debugStatus", "I", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"})
/* loaded from: classes4.dex */
public final class DefaultExecutor extends EventLoopImplBase implements Runnable {

    @Nullable
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final DefaultExecutor l;
    public static final long m;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.DefaultExecutor, kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.EventLoop] */
    static {
        Long l2;
        ?? eventLoopImplBase = new EventLoopImplBase();
        l = eventLoopImplBase;
        eventLoopImplBase.a0(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        m = timeUnit.toNanos(l2.longValue());
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    /* renamed from: e0 */
    public final Thread getL() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 == null) {
            synchronized (this) {
                thread = _thread;
                if (thread == null) {
                    thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                    _thread = thread;
                    thread.setContextClassLoader(DefaultExecutor.class.getClassLoader());
                    thread.setDaemon(true);
                    thread.start();
                }
            }
            return thread;
        }
        return thread2;
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    public final void h0(long j, EventLoopImplBase.DelayedTask delayedTask) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    public final void i0(Runnable runnable) {
        if (debugStatus != 4) {
            super.i0(runnable);
            return;
        }
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.Delay
    public final DisposableHandle o(long j, Runnable runnable, CoroutineContext coroutineContext) {
        long a2 = EventLoop_commonKt.a(j);
        if (a2 < DurationKt.MAX_MILLIS) {
            long nanoTime = System.nanoTime();
            EventLoopImplBase.DelayedRunnableTask delayedRunnableTask = new EventLoopImplBase.DelayedRunnableTask(runnable, a2 + nanoTime);
            s0(nanoTime, delayedRunnableTask);
            return delayedRunnableTask;
        }
        return NonDisposableHandle.f21602c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        Thread thread;
        boolean z2;
        ThreadLocalEventLoop.f21604a.set(this);
        Thread thread2 = null;
        try {
            synchronized (this) {
                try {
                    try {
                        int i = debugStatus;
                        if (i != 2 && i != 3) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (z) {
                            _thread = null;
                            y0();
                            if (!n0()) {
                                getL();
                                return;
                            }
                            return;
                        }
                        debugStatus = 1;
                        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                        notifyAll();
                        long j = Long.MAX_VALUE;
                        while (true) {
                            Thread.interrupted();
                            long q0 = q0();
                            if (q0 == LongCompanionObject.MAX_VALUE) {
                                long nanoTime = System.nanoTime();
                                if (j == LongCompanionObject.MAX_VALUE) {
                                    j = m + nanoTime;
                                }
                                thread = thread2;
                                long j2 = j - nanoTime;
                                if (j2 <= 0) {
                                    _thread = thread;
                                    y0();
                                    if (!n0()) {
                                        getL();
                                        return;
                                    }
                                    return;
                                }
                                q0 = RangesKt.coerceAtMost(q0, j2);
                            } else {
                                thread = thread2;
                                j = Long.MAX_VALUE;
                            }
                            if (q0 > 0) {
                                int i2 = debugStatus;
                                if (i2 != 2 && i2 != 3) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (z2) {
                                    _thread = thread;
                                    y0();
                                    if (!n0()) {
                                        getL();
                                        return;
                                    }
                                    return;
                                }
                                LockSupport.parkNanos(this, q0);
                            }
                            thread2 = thread;
                        }
                    } catch (Throwable th) {
                        th = th;
                        _thread = null;
                        y0();
                        if (!n0()) {
                            getL();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    while (true) {
                        try {
                            break;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    throw th;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.EventLoop
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    public final synchronized void y0() {
        boolean z;
        int i = debugStatus;
        if (i != 2 && i != 3) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return;
        }
        debugStatus = 3;
        EventLoopImplBase.i.set(this, null);
        EventLoopImplBase.j.set(this, null);
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
    }
}
