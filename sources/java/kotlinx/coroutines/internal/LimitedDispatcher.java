package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005R\u000b\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/atomicfu/AtomicInt;", "runningWorkers", "Worker", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,130:1\n62#1,8:131\n62#1,8:139\n24#2,4:147\n24#2,4:152\n16#3:151\n16#3:156\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n44#1:131,8\n51#1:139,8\n75#1:147,4\n88#1:152,4\n75#1:151\n88#1:156\n*E\n"})
/* loaded from: classes4.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {
    public static final /* synthetic */ AtomicIntegerFieldUpdater k = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");
    public final CoroutineDispatcher f;
    public final int g;
    public final /* synthetic */ Delay h;
    public final LockFreeTaskQueue i;
    public final Object j;
    private volatile /* synthetic */ int runningWorkers$volatile;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class Worker implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public Runnable f21882c;

        public Worker(Runnable runnable) {
            this.f21882c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            LimitedDispatcher limitedDispatcher = LimitedDispatcher.this;
            CoroutineDispatcher coroutineDispatcher = limitedDispatcher.f;
            int i = 0;
            while (true) {
                try {
                    this.f21882c.run();
                } catch (Throwable th) {
                    CoroutineExceptionHandlerKt.a(EmptyCoroutineContext.INSTANCE, th);
                }
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = LimitedDispatcher.k;
                Runnable X = limitedDispatcher.X();
                if (X == null) {
                    return;
                }
                this.f21882c = X;
                i++;
                if (i >= 16 && coroutineDispatcher.W(limitedDispatcher)) {
                    coroutineDispatcher.S(limitedDispatcher, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(CoroutineDispatcher coroutineDispatcher, int i) {
        Delay delay;
        this.f = coroutineDispatcher;
        this.g = i;
        if (coroutineDispatcher instanceof Delay) {
            delay = (Delay) coroutineDispatcher;
        } else {
            delay = null;
        }
        this.h = delay == null ? DefaultExecutorKt.f21582a : delay;
        this.i = new LockFreeTaskQueue();
        this.j = new Object();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable X;
        this.i.a(runnable);
        if (k.get(this) < this.g && Z() && (X = X()) != null) {
            this.f.S(this, new Worker(X));
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void T(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable X;
        this.i.a(runnable);
        if (k.get(this) < this.g && Z() && (X = X()) != null) {
            this.f.T(this, new Worker(X));
        }
    }

    public final Runnable X() {
        while (true) {
            Runnable runnable = (Runnable) this.i.d();
            if (runnable == null) {
                synchronized (this.j) {
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = k;
                    atomicIntegerFieldUpdater.decrementAndGet(this);
                    if (this.i.c() == 0) {
                        return null;
                    }
                    atomicIntegerFieldUpdater.incrementAndGet(this);
                }
            } else {
                return runnable;
            }
        }
    }

    public final boolean Z() {
        synchronized (this.j) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = k;
            if (atomicIntegerFieldUpdater.get(this) >= this.g) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final void e(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        this.h.e(j, cancellableContinuationImpl);
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle o(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return this.h.o(j, runnable, coroutineContext);
    }
}
