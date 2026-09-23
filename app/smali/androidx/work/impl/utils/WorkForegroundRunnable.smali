.class public Landroidx/work/impl/utils/WorkForegroundRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field public final c:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final f:Landroid/content/Context;

.field public final g:Landroidx/work/impl/model/WorkSpec;

.field public final h:Landroidx/work/ListenableWorker;

.field public final i:Landroidx/work/impl/utils/WorkForegroundUpdater;

.field public final j:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->k:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/impl/utils/WorkForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->f:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->g:Landroidx/work/impl/model/WorkSpec;

    .line 14
    .line 15
    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->h:Landroidx/work/ListenableWorker;

    .line 16
    .line 17
    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->i:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 18
    .line 19
    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->j:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->g:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Landroidx/core/os/BuildCompat;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroidx/work/impl/utils/futures/SettableFuture;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->j:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 20
    .line 21
    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Landroidx/work/impl/utils/WorkForegroundRunnable$1;

    .line 26
    .line 27
    invoke-direct {v3, p0, v0}, Landroidx/work/impl/utils/WorkForegroundRunnable$1;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroidx/work/impl/utils/WorkForegroundRunnable$2;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0}, Landroidx/work/impl/utils/WorkForegroundRunnable$2;-><init>(Landroidx/work/impl/utils/WorkForegroundRunnable;Landroidx/work/impl/utils/futures/SettableFuture;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->a()Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v2, v1}, Landroidx/work/impl/utils/futures/AbstractFuture;->k(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method
