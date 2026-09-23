package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ThreadContextElement;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ThreadContextKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f21896a = new Symbol("NO_THREAD_ELEMENTS");
    public static final Function2 b = ThreadContextKt$countAll$1.f21898c;

    /* renamed from: c, reason: collision with root package name */
    public static final Function2 f21897c = ThreadContextKt$findOne$1.f21899c;
    public static final Function2 d = ThreadContextKt$updateState$1.f21900c;

    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj != f21896a) {
            if (obj instanceof ThreadState) {
                ThreadState threadState = (ThreadState) obj;
                ThreadContextElement[] threadContextElementArr = threadState.f21903c;
                int length = threadContextElementArr.length - 1;
                if (length < 0) {
                    return;
                }
                while (true) {
                    int i = length - 1;
                    ThreadContextElement threadContextElement = threadContextElementArr[length];
                    Intrinsics.checkNotNull(threadContextElement);
                    threadContextElement.B(threadState.b[length]);
                    if (i >= 0) {
                        length = i;
                    } else {
                        return;
                    }
                }
            } else {
                Object fold = coroutineContext.fold(null, f21897c);
                Intrinsics.checkNotNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                ((ThreadContextElement) fold).B(obj);
            }
        }
    }

    public static final Object b(CoroutineContext coroutineContext) {
        Object fold = coroutineContext.fold(0, b);
        Intrinsics.checkNotNull(fold);
        return fold;
    }

    public static final Object c(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return f21896a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.fold(new ThreadState(((Number) obj).intValue(), coroutineContext), d);
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((ThreadContextElement) obj).Q(coroutineContext);
    }
}
