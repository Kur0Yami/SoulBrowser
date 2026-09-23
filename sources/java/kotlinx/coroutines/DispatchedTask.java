package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.TasksKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b!\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,218:1\n1#2:219\n103#3,10:220\n114#3,2:234\n216#4:230\n217#4:233\n57#5,2:231\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n86#1:220,10\n86#1:234,2\n99#1:230\n99#1:233\n99#1:231,2\n*E\n"})
/* loaded from: classes4.dex */
public abstract class DispatchedTask<T> extends Task {
    public int g;

    public DispatchedTask(int i) {
        super(0L, TasksKt.g);
        this.g = i;
    }

    /* renamed from: c */
    public abstract Continuation getH();

    public Throwable e(Object obj) {
        CompletedExceptionally completedExceptionally;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally == null) {
            return null;
        }
        return completedExceptionally.f21573a;
    }

    public Object f(Object obj) {
        return obj;
    }

    public final void g(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            kotlin.ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        CoroutineExceptionHandlerKt.a(getH().getF(), new Error("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        r6 = (kotlinx.coroutines.Job) r6.get(kotlinx.coroutines.Job.Key.f21595c);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r12 = this;
            kotlinx.coroutines.scheduling.TaskContext r0 = r12.f
            kotlin.coroutines.Continuation r1 = r12.getH()     // Catch: java.lang.Throwable -> L23
            java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)     // Catch: java.lang.Throwable -> L23
            kotlinx.coroutines.internal.DispatchedContinuation r1 = (kotlinx.coroutines.internal.DispatchedContinuation) r1     // Catch: java.lang.Throwable -> L23
            kotlin.coroutines.Continuation r2 = r1.i     // Catch: java.lang.Throwable -> L23
            java.lang.Object r1 = r1.k     // Catch: java.lang.Throwable -> L23
            kotlin.coroutines.CoroutineContext r3 = r2.getF()     // Catch: java.lang.Throwable -> L23
            java.lang.Object r1 = kotlinx.coroutines.internal.ThreadContextKt.c(r3, r1)     // Catch: java.lang.Throwable -> L23
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.internal.ThreadContextKt.f21896a     // Catch: java.lang.Throwable -> L23
            r5 = 0
            if (r1 == r4) goto L26
            kotlinx.coroutines.UndispatchedCoroutine r4 = kotlinx.coroutines.CoroutineContextKt.d(r2, r3, r1)     // Catch: java.lang.Throwable -> L23
            goto L27
        L23:
            r1 = move-exception
            goto Lbd
        L26:
            r4 = r5
        L27:
            kotlin.coroutines.CoroutineContext r6 = r2.getF()     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r7 = r12.h()     // Catch: java.lang.Throwable -> L4a
            java.lang.Throwable r8 = r12.e(r7)     // Catch: java.lang.Throwable -> L4a
            if (r8 != 0) goto L4c
            int r9 = r12.g     // Catch: java.lang.Throwable -> L4a
            r10 = 1
            if (r9 == r10) goto L3f
            r11 = 2
            if (r9 != r11) goto L3e
            goto L3f
        L3e:
            r10 = 0
        L3f:
            if (r10 == 0) goto L4c
            kotlinx.coroutines.Job$Key r9 = kotlinx.coroutines.Job.Key.f21595c     // Catch: java.lang.Throwable -> L4a
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r9)     // Catch: java.lang.Throwable -> L4a
            kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6     // Catch: java.lang.Throwable -> L4a
            goto L4d
        L4a:
            r2 = move-exception
            goto Lb1
        L4c:
            r6 = r5
        L4d:
            if (r6 == 0) goto L6a
            boolean r9 = r6.isActive()     // Catch: java.lang.Throwable -> L4a
            if (r9 != 0) goto L6a
            java.util.concurrent.CancellationException r6 = r6.j()     // Catch: java.lang.Throwable -> L4a
            r12.a(r7, r6)     // Catch: java.lang.Throwable -> L4a
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = kotlin.Result.m30constructorimpl(r6)     // Catch: java.lang.Throwable -> L4a
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L4a
            goto L87
        L6a:
            if (r8 == 0) goto L7a
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r8)     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = kotlin.Result.m30constructorimpl(r6)     // Catch: java.lang.Throwable -> L4a
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L4a
            goto L87
        L7a:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = r12.f(r7)     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = kotlin.Result.m30constructorimpl(r6)     // Catch: java.lang.Throwable -> L4a
            r2.resumeWith(r6)     // Catch: java.lang.Throwable -> L4a
        L87:
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L4a
            if (r4 == 0) goto L91
            boolean r2 = r4.m0()     // Catch: java.lang.Throwable -> L23
            if (r2 == 0) goto L94
        L91:
            kotlinx.coroutines.internal.ThreadContextKt.a(r3, r1)     // Catch: java.lang.Throwable -> L23
        L94:
            r0.d()     // Catch: java.lang.Throwable -> L9e
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r0 = kotlin.Result.m30constructorimpl(r0)     // Catch: java.lang.Throwable -> L9e
            goto La9
        L9e:
            r0 = move-exception
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Object r0 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r0 = kotlin.Result.m30constructorimpl(r0)
        La9:
            java.lang.Throwable r0 = kotlin.Result.m33exceptionOrNullimpl(r0)
            r12.g(r5, r0)
            goto Ldb
        Lb1:
            if (r4 == 0) goto Lb9
            boolean r4 = r4.m0()     // Catch: java.lang.Throwable -> L23
            if (r4 == 0) goto Lbc
        Lb9:
            kotlinx.coroutines.internal.ThreadContextKt.a(r3, r1)     // Catch: java.lang.Throwable -> L23
        Lbc:
            throw r2     // Catch: java.lang.Throwable -> L23
        Lbd:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> Lc9
            r0.d()     // Catch: java.lang.Throwable -> Lc9
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lc9
            java.lang.Object r0 = kotlin.Result.m30constructorimpl(r0)     // Catch: java.lang.Throwable -> Lc9
            goto Ld4
        Lc9:
            r0 = move-exception
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            java.lang.Object r0 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r0 = kotlin.Result.m30constructorimpl(r0)
        Ld4:
            java.lang.Throwable r0 = kotlin.Result.m33exceptionOrNullimpl(r0)
            r12.g(r1, r0)
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DispatchedTask.run():void");
    }

    public void a(Object obj, CancellationException cancellationException) {
    }
}
