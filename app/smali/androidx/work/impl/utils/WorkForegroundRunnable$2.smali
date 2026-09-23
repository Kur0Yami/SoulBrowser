.class Landroidx/work/impl/utils/WorkForegroundRunnable$2;
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
    iput-object p1, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$2;->f:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$2;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$2;->f:Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->h:Landroidx/work/ListenableWorker;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->g:Landroidx/work/impl/model/WorkSpec;

    .line 8
    .line 9
    const-string v4, "Updating notification for "

    .line 10
    .line 11
    const-string v5, "Worker was marked important ("

    .line 12
    .line 13
    :try_start_0
    iget-object v6, p0, Landroidx/work/impl/utils/WorkForegroundRunnable$2;->c:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 14
    .line 15
    invoke-virtual {v6}, Landroidx/work/impl/utils/futures/AbstractFuture;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    check-cast v6, Landroidx/work/ForegroundInfo;

    .line 20
    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v7, Landroidx/work/impl/utils/WorkForegroundRunnable;->k:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x0

    .line 44
    new-array v4, v4, [Ljava/lang/Throwable;

    .line 45
    .line 46
    invoke-virtual {v5, v7, v3, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v2, v3}, Landroidx/work/ListenableWorker;->setRunInForeground(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->i:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/work/impl/utils/WorkForegroundRunnable;->f:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3, v0, v2, v6}, Landroidx/work/impl/utils/WorkForegroundUpdater;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/ForegroundInfo;)Landroidx/work/impl/utils/futures/SettableFuture;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, v3, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, ") but did not provide ForegroundInfo"

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->i(Ljava/lang/Throwable;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
