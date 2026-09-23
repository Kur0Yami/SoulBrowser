package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.selects.SelectInstance;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final /* synthetic */ class JobSupport$onAwaitInternal$1 extends FunctionReferenceImpl implements Function3<JobSupport, SelectInstance<?>, Object, Unit> {
    static {
        new FunctionReferenceImpl(3, JobSupport.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Unit invoke(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
        JobSupport jobSupport2 = jobSupport;
        SelectInstance<?> selectInstance2 = selectInstance;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = JobSupport.f21597c;
        while (true) {
            Object S = jobSupport2.S();
            if (!(S instanceof Incomplete)) {
                if (!(S instanceof CompletedExceptionally)) {
                    S = JobSupportKt.a(S);
                }
                selectInstance2.d(S);
            } else if (jobSupport2.f0(S) >= 0) {
                selectInstance2.a(jobSupport2.i(false, true, new JobSupport.SelectOnAwaitCompletionHandler(selectInstance2)));
                break;
            }
        }
        return Unit.INSTANCE;
    }
}
