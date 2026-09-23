package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.NonDisposableHandle;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/android/HandlerContext;", "Lkotlinx/coroutines/android/HandlerDispatcher;", "Lkotlinx/coroutines/Delay;", "kotlinx-coroutines-android"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,212:1\n13#2:213\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n140#1:213\n*E\n"})
/* loaded from: classes4.dex */
public final class HandlerContext extends HandlerDispatcher implements Delay {
    public final Handler f;
    public final boolean g;
    public final HandlerContext h;

    public HandlerContext(Handler handler, boolean z) {
        HandlerContext handlerContext;
        this.f = handler;
        this.g = z;
        if (z) {
            handlerContext = this;
        } else {
            handlerContext = new HandlerContext(handler, true);
        }
        this.h = handlerContext;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        if (!this.f.post(runnable)) {
            Z(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean W(CoroutineContext coroutineContext) {
        if (this.g && Intrinsics.areEqual(Looper.myLooper(), this.f.getLooper())) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public final MainCoroutineDispatcher X() {
        return this.h;
    }

    public final void Z(CoroutineContext coroutineContext, Runnable runnable) {
        JobKt.a(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        Dispatchers.b.S(coroutineContext, runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1, java.lang.Runnable] */
    @Override // kotlinx.coroutines.Delay
    public final void e(long j, final CancellableContinuationImpl cancellableContinuationImpl) {
        final ?? r0 = new Runnable() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                CancellableContinuationImpl.this.B(this, Unit.INSTANCE);
            }
        };
        if (this.f.postDelayed(r0, RangesKt.coerceAtMost(j, DurationKt.MAX_MILLIS))) {
            cancellableContinuationImpl.u(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Throwable th) {
                    HandlerContext.this.f.removeCallbacks(r0);
                    return Unit.INSTANCE;
                }
            });
        } else {
            Z(cancellableContinuationImpl.i, r0);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) obj;
            if (handlerContext.f == this.f && handlerContext.g == this.g) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int identityHashCode = System.identityHashCode(this.f);
        if (this.g) {
            i = 1231;
        } else {
            i = 1237;
        }
        return identityHashCode ^ i;
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.Delay
    public final DisposableHandle o(long j, final Runnable runnable, CoroutineContext coroutineContext) {
        if (this.f.postDelayed(runnable, RangesKt.coerceAtMost(j, DurationKt.MAX_MILLIS))) {
            return new DisposableHandle() { // from class: kotlinx.coroutines.android.a
                @Override // kotlinx.coroutines.DisposableHandle
                public final void c() {
                    HandlerContext.this.f.removeCallbacks(runnable);
                }
            };
        }
        Z(coroutineContext, runnable);
        return NonDisposableHandle.f21602c;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        MainCoroutineDispatcher mainCoroutineDispatcher;
        String str;
        DefaultScheduler defaultScheduler = Dispatchers.f21584a;
        MainCoroutineDispatcher mainCoroutineDispatcher2 = MainDispatcherLoader.f21890a;
        if (this == mainCoroutineDispatcher2) {
            str = "Dispatchers.Main";
        } else {
            try {
                mainCoroutineDispatcher = mainCoroutineDispatcher2.X();
            } catch (UnsupportedOperationException unused) {
                mainCoroutineDispatcher = null;
            }
            if (this == mainCoroutineDispatcher) {
                str = "Dispatchers.Main.immediate";
            } else {
                str = null;
            }
        }
        if (str == null) {
            String handler = this.f.toString();
            if (this.g) {
                return android.support.v4.media.a.k(handler, ".immediate");
            }
            return handler;
        }
        return str;
    }
}
