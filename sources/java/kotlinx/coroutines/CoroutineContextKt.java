package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.scheduling.DefaultScheduler;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CoroutineContextKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, final boolean z) {
        Boolean bool = Boolean.FALSE;
        CoroutineContextKt$hasCopyableElements$1 coroutineContextKt$hasCopyableElements$1 = CoroutineContextKt$hasCopyableElements$1.f21576c;
        boolean booleanValue = ((Boolean) coroutineContext.fold(bool, coroutineContextKt$hasCopyableElements$1)).booleanValue();
        boolean booleanValue2 = ((Boolean) coroutineContext2.fold(bool, coroutineContextKt$hasCopyableElements$1)).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return coroutineContext.plus(coroutineContext2);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext>() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$folded$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            /* JADX WARN: Type inference failed for: r1v5, types: [T, kotlin.coroutines.CoroutineContext] */
            @Override // kotlin.jvm.functions.Function2
            public final CoroutineContext invoke(CoroutineContext coroutineContext4, CoroutineContext.Element element) {
                CoroutineContext coroutineContext5 = coroutineContext4;
                CoroutineContext.Element element2 = element;
                if (!(element2 instanceof CopyableThreadContextElement)) {
                    return coroutineContext5.plus(element2);
                }
                Ref.ObjectRef objectRef2 = Ref.ObjectRef.this;
                if (((CoroutineContext) objectRef2.element).get(element2.getKey()) == null) {
                    CopyableThreadContextElement copyableThreadContextElement = (CopyableThreadContextElement) element2;
                    if (z) {
                        copyableThreadContextElement = copyableThreadContextElement.u();
                    }
                    return coroutineContext5.plus(copyableThreadContextElement);
                }
                objectRef2.element = ((CoroutineContext) objectRef2.element).minusKey(element2.getKey());
                return coroutineContext5.plus(((CopyableThreadContextElement) element2).L());
            }
        });
        if (booleanValue2) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, CoroutineContextKt$foldCopies$1.f21574c);
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    public static final CoroutineContext b(CoroutineContext coroutineContext, CoroutineContext coroutineContext2) {
        if (!((Boolean) coroutineContext2.fold(Boolean.FALSE, CoroutineContextKt$hasCopyableElements$1.f21576c)).booleanValue()) {
            return coroutineContext.plus(coroutineContext2);
        }
        return a(coroutineContext, coroutineContext2, false);
    }

    public static final CoroutineContext c(CoroutineScope coroutineScope, CoroutineContext coroutineContext) {
        CoroutineContext a2 = a(coroutineScope.getF21870c(), coroutineContext, true);
        DefaultScheduler defaultScheduler = Dispatchers.f21584a;
        if (a2 != defaultScheduler && a2.get(ContinuationInterceptor.INSTANCE) == null) {
            return a2.plus(defaultScheduler);
        }
        return a2;
    }

    public static final UndispatchedCoroutine d(Continuation continuation, CoroutineContext coroutineContext, Object obj) {
        UndispatchedCoroutine undispatchedCoroutine = null;
        if (!(continuation instanceof CoroutineStackFrame)) {
            return null;
        }
        if (coroutineContext.get(UndispatchedMarker.f21608c) != null) {
            CoroutineStackFrame coroutineStackFrame = (CoroutineStackFrame) continuation;
            while (true) {
                if ((coroutineStackFrame instanceof DispatchedCoroutine) || (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) == null) {
                    break;
                }
                if (coroutineStackFrame instanceof UndispatchedCoroutine) {
                    undispatchedCoroutine = (UndispatchedCoroutine) coroutineStackFrame;
                    break;
                }
            }
            if (undispatchedCoroutine != null) {
                undispatchedCoroutine.n0(coroutineContext, obj);
            }
        }
        return undispatchedCoroutine;
    }
}
