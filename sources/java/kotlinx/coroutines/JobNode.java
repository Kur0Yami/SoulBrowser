package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/JobNode;", "Lkotlinx/coroutines/CompletionHandlerBase;", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/Incomplete;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class JobNode extends CompletionHandlerBase implements DisposableHandle, Incomplete {
    public JobSupport h;

    @Override // kotlinx.coroutines.Incomplete
    /* renamed from: b */
    public final NodeList getList() {
        return null;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void c() {
        JobSupport k = k();
        while (true) {
            Object S = k.S();
            if (S instanceof JobNode) {
                if (S == this) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = JobSupport.f21597c;
                    while (!atomicReferenceFieldUpdater.compareAndSet(k, S, JobSupportKt.g)) {
                        if (atomicReferenceFieldUpdater.get(k) != S) {
                            break;
                        }
                    }
                    return;
                }
                return;
            }
            if ((S instanceof Incomplete) && ((Incomplete) S).getList() != null) {
                i();
                return;
            }
            return;
        }
    }

    public Job getParent() {
        return k();
    }

    @Override // kotlinx.coroutines.Incomplete
    /* renamed from: isActive */
    public final boolean getF21587c() {
        return true;
    }

    public final JobSupport k() {
        JobSupport jobSupport = this.h;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return getClass().getSimpleName() + '@' + DebugStringsKt.a(this) + "[job@" + DebugStringsKt.a(k()) + ']';
    }
}
