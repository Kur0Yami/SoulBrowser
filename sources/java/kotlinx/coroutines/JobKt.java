package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Job;

@Metadata(d1 = {"kotlinx/coroutines/JobKt__FutureKt", "kotlinx/coroutines/JobKt__JobKt"}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class JobKt {
    public static final void a(CoroutineContext coroutineContext, CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.Key.f21595c);
        if (job != null) {
            job.a(cancellationException);
        }
    }

    public static final void b(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.Key.f21595c);
        if (job != null && !job.isActive()) {
            throw job.j();
        }
    }
}
