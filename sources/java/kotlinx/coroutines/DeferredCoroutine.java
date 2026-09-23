package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/DeferredCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/AbstractCoroutine;", "Lkotlinx/coroutines/Deferred;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public class DeferredCoroutine<T> extends AbstractCoroutine<T> implements Deferred<T> {
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
}
