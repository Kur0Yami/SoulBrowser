.class Landroidx/work/impl/WorkerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic g:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/impl/utils/futures/SettableFuture;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$1;->g:Landroidx/work/impl/WorkerWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$1;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$1;->f:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$1;->f:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$1;->g:Landroidx/work/impl/WorkerWrapper;

    .line 4
    .line 5
    const-string v2, "Starting work for "

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper$1;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    sget-object v4, Landroidx/work/impl/WorkerWrapper;->x:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, v1, Landroidx/work/impl/WorkerWrapper;->i:Landroidx/work/impl/model/WorkSpec;

    .line 19
    .line 20
    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v5, 0x0

    .line 35
    new-array v5, v5, [Ljava/lang/Throwable;

    .line 36
    .line 37
    invoke-virtual {v3, v4, v2, v5}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Landroidx/work/impl/WorkerWrapper;->j:Landroidx/work/ListenableWorker;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iput-object v2, v1, Landroidx/work/impl/WorkerWrapper;->v:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->i(Ljava/lang/Throwable;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method
