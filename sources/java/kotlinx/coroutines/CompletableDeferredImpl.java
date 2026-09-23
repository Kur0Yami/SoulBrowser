package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.JobSupport;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CompletableDeferredImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/CompletableDeferred;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CompletableDeferredImpl<T> extends JobSupport implements CompletableDeferred<T> {
    @Override // kotlinx.coroutines.Deferred
    public final Object A(ContinuationImpl continuationImpl) {
        Object a2;
        while (true) {
            Object S = S();
            if (!(S instanceof Incomplete)) {
                if (!(S instanceof CompletedExceptionally)) {
                    a2 = JobSupportKt.a(S);
                } else {
                    throw ((CompletedExceptionally) S).f21573a;
                }
            } else if (f0(S) >= 0) {
                JobSupport.AwaitContinuation awaitContinuation = new JobSupport.AwaitContinuation(IntrinsicsKt.intercepted(continuationImpl), this);
                awaitContinuation.r();
                CancellableContinuationKt.a(awaitContinuation, i(false, true, new ResumeAwaitOnCompletion(awaitContinuation)));
                Object q = awaitContinuation.q();
                if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuationImpl);
                }
                a2 = q;
            }
        }
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return a2;
    }

    @Override // kotlinx.coroutines.Deferred
    public final Object b() {
        Object S = S();
        if (!(S instanceof Incomplete)) {
            if (!(S instanceof CompletedExceptionally)) {
                return JobSupportKt.a(S);
            }
            throw ((CompletedExceptionally) S).f21573a;
        }
        throw new IllegalStateException("This job has not completed yet");
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public final boolean v(Throwable th) {
        Object i0;
        CompletedExceptionally completedExceptionally = new CompletedExceptionally(th, false);
        do {
            i0 = i0(S(), completedExceptionally);
            if (i0 == JobSupportKt.f21600a) {
                return false;
            }
            if (i0 == JobSupportKt.b) {
                return true;
            }
        } while (i0 == JobSupportKt.f21601c);
        return true;
    }

    @Override // kotlinx.coroutines.CompletableDeferred
    public final boolean z(Object obj) {
        Object i0;
        do {
            i0 = i0(S(), obj);
            if (i0 == JobSupportKt.f21600a) {
                return false;
            }
            if (i0 == JobSupportKt.b) {
                return true;
            }
        } while (i0 == JobSupportKt.f21601c);
        return true;
    }
}
