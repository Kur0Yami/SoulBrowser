.class Landroidx/work/impl/utils/WorkForegroundUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroidx/work/impl/utils/futures/SettableFuture;

.field public final synthetic f:Ljava/util/UUID;

.field public final synthetic g:Landroidx/work/ForegroundInfo;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Landroidx/work/impl/utils/WorkForegroundUpdater;


# direct methods
.method public constructor <init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Landroidx/work/impl/utils/futures/SettableFuture;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->i:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->f:Ljava/util/UUID;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->g:Landroidx/work/ForegroundInfo;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->h:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->h:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->g:Landroidx/work/ForegroundInfo;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->i:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    iget-object v4, p0, Landroidx/work/impl/utils/WorkForegroundUpdater$1;->f:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v2, Landroidx/work/impl/utils/WorkForegroundUpdater;->c:Landroidx/work/impl/model/WorkSpecDao;

    .line 22
    .line 23
    invoke-interface {v5, v4}, Landroidx/work/impl/model/WorkSpecDao;->o(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    invoke-virtual {v5}, Landroidx/work/WorkInfo$State;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/work/impl/utils/WorkForegroundUpdater;->b:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 36
    .line 37
    invoke-interface {v2, v4, v1}, Landroidx/work/impl/foreground/ForegroundProcessor;->a(Ljava/lang/String;Landroidx/work/ForegroundInfo;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v4, v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/ForegroundInfo;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 51
    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v3, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->h(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    invoke-virtual {v3, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->i(Ljava/lang/Throwable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
