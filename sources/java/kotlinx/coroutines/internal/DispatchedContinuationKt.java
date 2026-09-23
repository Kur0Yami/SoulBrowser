package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n293#1,5:321\n298#1,12:327\n310#1:383\n297#1:385\n298#1,12:387\n310#1:416\n213#2,7:314\n220#2:342\n239#2,8:343\n221#2:351\n251#2:352\n252#2,2:363\n254#2:367\n223#2:368\n225#2:384\n1#3:326\n1#3:386\n1#3:417\n196#4,3:339\n199#4,14:369\n196#4,17:399\n196#4,17:418\n103#5,10:353\n114#5,2:365\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n278#1:321,5\n278#1:327,12\n278#1:383\n283#1:385\n283#1:387,12\n283#1:416\n278#1:314,7\n278#1:342\n278#1:343,8\n278#1:351\n278#1:352\n278#1:363,2\n278#1:367\n278#1:368\n278#1:384\n278#1:326\n283#1:386\n278#1:339,3\n278#1:369,14\n283#1:399,17\n309#1:418,17\n278#1:353,10\n278#1:365,2\n*E\n"})
/* loaded from: classes4.dex */
public final class DispatchedContinuationKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f21873a = new Symbol("UNDEFINED");
    public static final Symbol b = new Symbol("REUSABLE_CLAIMED");

    public static final void a(Object obj, Continuation continuation) {
        Object completedExceptionally;
        UndispatchedCoroutine undispatchedCoroutine;
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.h;
            Continuation continuation2 = dispatchedContinuation.i;
            Throwable m33exceptionOrNullimpl = Result.m33exceptionOrNullimpl(obj);
            if (m33exceptionOrNullimpl == null) {
                completedExceptionally = obj;
            } else {
                completedExceptionally = new CompletedExceptionally(m33exceptionOrNullimpl, false);
            }
            if (coroutineDispatcher.W(continuation2.getF())) {
                dispatchedContinuation.j = completedExceptionally;
                dispatchedContinuation.g = 1;
                coroutineDispatcher.S(continuation2.getF(), dispatchedContinuation);
                return;
            }
            EventLoop a2 = ThreadLocalEventLoop.a();
            if (a2.f >= 4294967296L) {
                dispatchedContinuation.j = completedExceptionally;
                dispatchedContinuation.g = 1;
                a2.Z(dispatchedContinuation);
                return;
            }
            a2.a0(true);
            try {
                Job job = (Job) continuation2.getF().get(Job.Key.f21595c);
                if (job != null && !job.isActive()) {
                    CancellationException j = job.j();
                    dispatchedContinuation.a(completedExceptionally, j);
                    dispatchedContinuation.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(j)));
                } else {
                    Object obj2 = dispatchedContinuation.k;
                    CoroutineContext f = continuation2.getF();
                    Object c2 = ThreadContextKt.c(f, obj2);
                    if (c2 != ThreadContextKt.f21896a) {
                        undispatchedCoroutine = CoroutineContextKt.d(continuation2, f, c2);
                    } else {
                        undispatchedCoroutine = null;
                    }
                    try {
                        continuation2.resumeWith(obj);
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        if (undispatchedCoroutine == null || undispatchedCoroutine.m0()) {
                            ThreadContextKt.a(f, c2);
                        }
                    }
                }
                do {
                } while (a2.b0());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.resumeWith(obj);
    }
}
