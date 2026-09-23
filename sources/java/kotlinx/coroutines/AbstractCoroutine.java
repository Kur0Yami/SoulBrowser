package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;

@InternalCoroutinesApi
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b'\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class AbstractCoroutine<T> extends JobSupport implements Job, Continuation<T>, CoroutineScope {
    public final CoroutineContext g;

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z) {
        super(z);
        V((Job) coroutineContext.get(Job.Key.f21595c));
        this.g = coroutineContext.plus(this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String H() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void U(CompletionHandlerException completionHandlerException) {
        CoroutineExceptionHandlerKt.a(this.g, completionHandlerException);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void c0(Object obj) {
        boolean z;
        if (obj instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            Throwable th = completedExceptionally.f21573a;
            if (CompletedExceptionally.b.get(completedExceptionally) != 0) {
                z = true;
            } else {
                z = false;
            }
            j0(th, z);
            return;
        }
        k0(obj);
    }

    @Override // kotlin.coroutines.Continuation
    /* renamed from: getContext, reason: from getter */
    public final CoroutineContext getF() {
        return this.g;
    }

    public void j0(Throwable th, boolean z) {
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* renamed from: k */
    public final CoroutineContext getF21870c() {
        return this.g;
    }

    public void k0(Object obj) {
    }

    public final void l0(CoroutineStart coroutineStart, AbstractCoroutine abstractCoroutine, Function2 function2) {
        int ordinal = coroutineStart.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        Continuation probeCoroutineCreated = DebugProbesKt.probeCoroutineCreated(this);
                        try {
                            CoroutineContext f = getF();
                            Object c2 = ThreadContextKt.c(f, null);
                            try {
                                Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(abstractCoroutine, probeCoroutineCreated);
                                if (invoke != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    probeCoroutineCreated.resumeWith(Result.m30constructorimpl(invoke));
                                    return;
                                }
                                return;
                            } finally {
                                ThreadContextKt.a(f, c2);
                            }
                        } catch (Throwable th) {
                            Result.Companion companion = Result.INSTANCE;
                            probeCoroutineCreated.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(th)));
                            return;
                        }
                    }
                    throw new NoWhenBranchMatchedException();
                }
                ContinuationKt.startCoroutine(function2, abstractCoroutine, this);
                return;
            }
            return;
        }
        CancellableKt.b(function2, abstractCoroutine, this);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m33exceptionOrNullimpl = Result.m33exceptionOrNullimpl(obj);
        if (m33exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m33exceptionOrNullimpl, false);
        }
        Object X = X(obj);
        if (X == JobSupportKt.b) {
            return;
        }
        y(X);
    }
}
