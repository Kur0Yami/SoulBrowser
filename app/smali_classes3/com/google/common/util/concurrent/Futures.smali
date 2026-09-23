.class public final Lcom/google/common/util/concurrent/Futures;
.super Lcom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$FutureCombiner;,
        Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;,
        Lcom/google/common/util/concurrent/Futures$InCompletionOrderFuture;,
        Lcom/google/common/util/concurrent/Futures$CallbackListener;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/util/concurrent/ListenableFutureTask;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Lcom/google/common/util/concurrent/ListenableFutureTask;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/common/util/concurrent/DirectExecutor;->c:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Future was expected to be done: %s"

    .line 6
    .line 7
    invoke-static {v1, p0, v0}, Lcom/google/common/base/Preconditions;->k(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->o(Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/google/common/util/concurrent/ImmediateFuture;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ImmediateFuture;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static e(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    sget v0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->n:I

    .line 2
    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p0, v0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    iput-object p1, v0, Lcom/google/common/util/concurrent/AbstractTransformFuture;->m:Lcom/google/common/cache/b;

    .line 11
    .line 12
    sget-object p1, Lcom/google/common/util/concurrent/DirectExecutor;->c:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 13
    .line 14
    invoke-interface {p0, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
