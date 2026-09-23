.class Landroidx/work/impl/utils/WorkForegroundRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic f:Landroidx/work/impl/utils/WorkForegroundRunnable;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$1;->f:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$1;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$1;->f:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->h:Landroidx/work/ListenableWorker;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$1;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
