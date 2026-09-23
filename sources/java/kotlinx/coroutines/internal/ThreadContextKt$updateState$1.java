package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.ThreadContextElement;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "Lkotlinx/coroutines/internal/ThreadState;", "state", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ThreadContextKt$updateState$1 extends Lambda implements Function2<ThreadState, CoroutineContext.Element, ThreadState> {

    /* renamed from: c, reason: collision with root package name */
    public static final ThreadContextKt$updateState$1 f21900c = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final ThreadState invoke(ThreadState threadState, CoroutineContext.Element element) {
        ThreadState threadState2 = threadState;
        CoroutineContext.Element element2 = element;
        if (element2 instanceof ThreadContextElement) {
            ThreadContextElement threadContextElement = (ThreadContextElement) element2;
            Object Q = threadContextElement.Q(threadState2.f21902a);
            Object[] objArr = threadState2.b;
            int i = threadState2.d;
            objArr[i] = Q;
            ThreadContextElement[] threadContextElementArr = threadState2.f21903c;
            threadState2.d = i + 1;
            Intrinsics.checkNotNull(threadContextElement, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            threadContextElementArr[i] = threadContextElement;
        }
        return threadState2;
    }
}
