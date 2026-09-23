.class Landroidx/work/impl/workers/ConstraintTrackingWorker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->f:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->f:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->k:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->f:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 7
    .line 8
    iget-boolean v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->l:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->f:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 15
    .line 16
    new-instance v2, Landroidx/work/ListenableWorker$Result$Retry;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->f:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->m:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker$2;->c:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroidx/work/impl/utils/futures/SettableFuture;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 34
    .line 35
    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1
.end method
