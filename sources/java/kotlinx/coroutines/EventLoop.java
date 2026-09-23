package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/EventLoop;", "Lkotlinx/coroutines/CoroutineDispatcher;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
/* loaded from: classes4.dex */
public abstract class EventLoop extends CoroutineDispatcher {
    public long f;
    public boolean g;
    public ArrayDeque h;

    public final void X() {
        long j = this.f - 4294967296L;
        this.f = j;
        if (j <= 0 && this.g) {
            shutdown();
        }
    }

    public final void Z(DispatchedTask dispatchedTask) {
        ArrayDeque arrayDeque = this.h;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            this.h = arrayDeque;
        }
        arrayDeque.addLast(dispatchedTask);
    }

    public final void a0(boolean z) {
        long j;
        long j2 = this.f;
        if (z) {
            j = 4294967296L;
        } else {
            j = 1;
        }
        this.f = j + j2;
        if (!z) {
            this.g = true;
        }
    }

    public final boolean b0() {
        DispatchedTask dispatchedTask;
        ArrayDeque arrayDeque = this.h;
        if (arrayDeque == null || (dispatchedTask = (DispatchedTask) arrayDeque.removeFirstOrNull()) == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public void shutdown() {
    }
}
