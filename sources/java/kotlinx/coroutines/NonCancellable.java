package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/NonCancellable;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/Job;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class NonCancellable extends AbstractCoroutineContextElement implements Job {
    static {
        new AbstractCoroutineContextElement(Job.Key.f21595c);
    }

    @Override // kotlinx.coroutines.Job
    public final boolean G() {
        return false;
    }

    @Override // kotlinx.coroutines.Job
    public final void a(CancellationException cancellationException) {
    }

    @Override // kotlinx.coroutines.Job
    public final Object f(ContinuationImpl continuationImpl) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public final Job getParent() {
        return null;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle i(boolean z, boolean z2, Function1 function1) {
        return NonDisposableHandle.f21602c;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException j() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle l(JobSupport jobSupport) {
        return NonDisposableHandle.f21602c;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle n(Function1 function1) {
        return NonDisposableHandle.f21602c;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }
}
