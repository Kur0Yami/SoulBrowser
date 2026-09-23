package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/ResumeUndispatchedRunnable;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nExecutors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Executors.kt\nkotlinx/coroutines/ResumeUndispatchedRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n1#2:204\n*E\n"})
/* loaded from: classes4.dex */
final class ResumeUndispatchedRunnable implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorCoroutineDispatcherImpl f21603c;
    public final CancellableContinuationImpl f;

    public ResumeUndispatchedRunnable(ExecutorCoroutineDispatcherImpl executorCoroutineDispatcherImpl, CancellableContinuationImpl cancellableContinuationImpl) {
        this.f21603c = executorCoroutineDispatcherImpl;
        this.f = cancellableContinuationImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f.B(this.f21603c, Unit.INSTANCE);
    }
}
