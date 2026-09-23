package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/CoroutineContext$Element;", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface Job extends CoroutineContext.Element {

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ DisposableHandle a(Job job, JobNode jobNode, int i) {
            boolean z;
            boolean z2 = true;
            if ((i & 1) != 0) {
                z = false;
            } else {
                z = true;
            }
            if ((i & 2) == 0) {
                z2 = false;
            }
            return job.i(z, z2, jobNode);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/Job$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/Job;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Key implements CoroutineContext.Key<Job> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Key f21595c = new Object();
    }

    boolean G();

    void a(CancellationException cancellationException);

    Object f(ContinuationImpl continuationImpl);

    Job getParent();

    DisposableHandle i(boolean z, boolean z2, Function1 function1);

    boolean isActive();

    CancellationException j();

    ChildHandle l(JobSupport jobSupport);

    DisposableHandle n(Function1 function1);

    boolean start();
}
