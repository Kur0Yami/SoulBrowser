.class Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallResourceReady"
.end annotation


# instance fields
.field public final c:Lcom/bumptech/glide/request/SingleRequest;

.field public final synthetic f:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->c:Lcom/bumptech/glide/request/SingleRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->c:Lcom/bumptech/glide/request/SingleRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/SingleRequest;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->c:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->c:Lcom/bumptech/glide/request/SingleRequest;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;

    .line 20
    .line 21
    sget-object v5, Lcom/bumptech/glide/util/Executors;->b:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-direct {v4, v3, v5}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbackAndExecutor;-><init>(Lcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->w:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->b()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->c:Lcom/bumptech/glide/request/SingleRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    :try_start_2
    iget-object v4, v2, Lcom/bumptech/glide/load/engine/EngineJob;->w:Lcom/bumptech/glide/load/engine/EngineResource;

    .line 44
    .line 45
    iget-object v5, v2, Lcom/bumptech/glide/load/engine/EngineJob;->s:Lcom/bumptech/glide/load/DataSource;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->z:Z

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5, v2}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    .line 52
    :try_start_3
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->c:Lcom/bumptech/glide/request/SingleRequest;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->k(Lcom/bumptech/glide/request/SingleRequest;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception v2

    .line 63
    new-instance v3, Lcom/bumptech/glide/load/engine/CallbackException;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v3

    .line 69
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->f:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineJob;->c()V

    .line 72
    .line 73
    .line 74
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    return-void

    .line 77
    :catchall_2
    move-exception v1

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :try_start_6
    throw v2

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    throw v1
.end method
