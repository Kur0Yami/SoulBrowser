.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field public static final i:Z


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/Jobs;

.field public final b:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field public final c:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public final d:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field public final e:Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field public final f:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field public final g:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

.field public final h:Lcom/bumptech/glide/load/engine/ActiveResources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->c:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 5
    .line 6
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->f:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 12
    .line 13
    new-instance p2, Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->h:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iput-object p0, p2, Lcom/bumptech/glide/load/engine/ActiveResources;->d:Lcom/bumptech/glide/load/engine/Engine;

    .line 23
    .line 24
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    new-instance p2, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->b:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 32
    .line 33
    new-instance p2, Lcom/bumptech/glide/load/engine/Jobs;

    .line 34
    .line 35
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/Jobs;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->a:Lcom/bumptech/glide/load/engine/Jobs;

    .line 39
    .line 40
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 41
    .line 42
    move-object v7, p0

    .line 43
    move-object v6, p0

    .line 44
    move-object v2, p3

    .line 45
    move-object v3, p4

    .line 46
    move-object v4, p5

    .line 47
    move-object v5, p6

    .line 48
    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/Engine;)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v6, Lcom/bumptech/glide/load/engine/Engine;->d:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 52
    .line 53
    new-instance p2, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;-><init>(Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, v6, Lcom/bumptech/glide/load/engine/Engine;->g:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    .line 59
    .line 60
    new-instance p2, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 61
    .line 62
    invoke-direct {p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p2, v6, Lcom/bumptech/glide/load/engine/Engine;->e:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 66
    .line 67
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->c(Lcom/bumptech/glide/load/engine/Engine;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v6, p0

    .line 73
    :goto_0
    move-object p1, v0

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object v6, p0

    .line 77
    :goto_1
    move-object p1, v0

    .line 78
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 79
    :try_start_4
    throw p1

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    goto :goto_0

    .line 82
    :catchall_3
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    throw p1
.end method

.method public static g(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .locals 1

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static i(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineResource;->d()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot release anything but an EngineResource"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p3, Lcom/bumptech/glide/load/engine/EngineResource;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->h:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/ActiveResources;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/Engine;->a:Lcom/bumptech/glide/load/engine/Jobs;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p3, p3, Lcom/bumptech/glide/load/engine/Jobs;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method public final declared-synchronized b(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->a:Lcom/bumptech/glide/load/engine/Jobs;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Jobs;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public final c(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->h:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->b:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->c:Lcom/bumptech/glide/load/engine/Resource;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit v0

    .line 21
    iget-boolean v0, p2, Lcom/bumptech/glide/load/engine/EngineResource;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->c:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->d(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->e:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->a(Lcom/bumptech/glide/load/engine/Resource;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->f:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final e(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLcom/bumptech/glide/load/Options;ZZLcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 23

    move-object/from16 v2, p0

    .line 1
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bumptech/glide/util/LogTime;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/Engine;->b:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineKey;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/EngineKey;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .line 6
    monitor-enter p0

    move/from16 v3, p14

    .line 7
    :try_start_0
    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/bumptech/glide/load/engine/Engine;->f(Lcom/bumptech/glide/load/engine/EngineKey;ZJ)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v5

    if-nez v5, :cond_1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 8
    invoke-virtual/range {v2 .. v22}, Lcom/bumptech/glide/load/engine/Engine;->j(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZLcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/EngineKey;J)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->i:Lcom/bumptech/glide/load/DataSource;

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v0, v1, v2}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f(Lcom/bumptech/glide/load/engine/EngineKey;ZJ)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object v6, p0

    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->h:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 8
    .line 9
    monitor-enter p2

    .line 10
    :try_start_0
    iget-object v1, p2, Lcom/bumptech/glide/load/engine/ActiveResources;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    monitor-exit p2

    .line 21
    move-object v2, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/bumptech/glide/load/engine/EngineResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :try_start_2
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/load/engine/ActiveResources;->b(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p1, v0

    .line 37
    move-object v6, p0

    .line 38
    goto :goto_5

    .line 39
    :cond_2
    :goto_0
    monitor-exit p2

    .line 40
    :goto_1
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->b()V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v2, :cond_5

    .line 46
    .line 47
    sget-boolean p2, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    const-string p2, "Loaded resource from active resources"

    .line 52
    .line 53
    invoke-static {p2, p3, p4, p1}, Lcom/bumptech/glide/load/engine/Engine;->g(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-object v2

    .line 57
    :cond_5
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->c:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 58
    .line 59
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->e(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    move-object v6, p0

    .line 66
    move-object v5, p1

    .line 67
    move-object v2, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_6
    instance-of p2, v2, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 70
    .line 71
    if-eqz p2, :cond_7

    .line 72
    .line 73
    check-cast v2, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 74
    .line 75
    move-object v6, p0

    .line 76
    move-object v5, p1

    .line 77
    goto :goto_2

    .line 78
    :cond_7
    new-instance v1, Lcom/bumptech/glide/load/engine/EngineResource;

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    const/4 v4, 0x1

    .line 82
    move-object v6, p0

    .line 83
    move-object v5, p1

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 85
    .line 86
    .line 87
    move-object v2, v1

    .line 88
    :goto_2
    if-eqz v2, :cond_8

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->b()V

    .line 91
    .line 92
    .line 93
    iget-object p1, v6, Lcom/bumptech/glide/load/engine/Engine;->h:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 94
    .line 95
    invoke-virtual {p1, v5, v2}, Lcom/bumptech/glide/load/engine/ActiveResources;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    .line 96
    .line 97
    .line 98
    :cond_8
    if-eqz v2, :cond_a

    .line 99
    .line 100
    sget-boolean p1, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    .line 101
    .line 102
    if-eqz p1, :cond_9

    .line 103
    .line 104
    const-string p1, "Loaded resource from cache"

    .line 105
    .line 106
    invoke-static {p1, p3, p4, v5}, Lcom/bumptech/glide/load/engine/Engine;->g(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 107
    .line 108
    .line 109
    :cond_9
    return-object v2

    .line 110
    :cond_a
    :goto_3
    return-object v0

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v6, p0

    .line 113
    :goto_4
    move-object p1, v0

    .line 114
    :goto_5
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 115
    throw p1

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    goto :goto_4
.end method

.method public final h(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->e:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->a(Lcom/bumptech/glide/load/engine/Resource;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final j(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;ZZLcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/EngineKey;J)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    .line 1
    iget-object v14, v1, Lcom/bumptech/glide/load/engine/Engine;->a:Lcom/bumptech/glide/load/engine/Jobs;

    .line 2
    iget-object v14, v14, Lcom/bumptech/glide/load/engine/Jobs;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bumptech/glide/load/engine/EngineJob;

    if-eqz v14, :cond_1

    .line 4
    invoke-virtual {v14, v9, v10}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    if-eqz v0, :cond_0

    .line 6
    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Lcom/bumptech/glide/load/engine/Engine;->g(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 7
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v0, v1, v9, v14}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0

    .line 8
    :cond_1
    iget-object v14, v1, Lcom/bumptech/glide/load/engine/Engine;->d:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 9
    iget-object v14, v14, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->g:Landroidx/core/util/Pools$Pool;

    .line 10
    invoke-interface {v14}, Landroidx/core/util/Pools$Pool;->b()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 11
    const-string v15, "Argument must not be null"

    invoke-static {v14, v15}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    monitor-enter v14

    .line 13
    :try_start_0
    iput-object v11, v14, Lcom/bumptech/glide/load/engine/EngineJob;->o:Lcom/bumptech/glide/load/Key;

    move/from16 v15, p14

    .line 14
    iput-boolean v15, v14, Lcom/bumptech/glide/load/engine/EngineJob;->p:Z

    move/from16 v15, p15

    .line 15
    iput-boolean v15, v14, Lcom/bumptech/glide/load/engine/EngineJob;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v14

    .line 17
    iget-object v15, v1, Lcom/bumptech/glide/load/engine/Engine;->g:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    .line 18
    iget-object v12, v15, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->b:Landroidx/core/util/Pools$Pool;

    .line 19
    invoke-interface {v12}, Landroidx/core/util/Pools$Pool;->b()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 20
    const-string v13, "Argument must not be null"

    invoke-static {v12, v13}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v13, v15, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->c:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->c:I

    .line 22
    iget-object v9, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v15, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 23
    iput-object v0, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->c:Lcom/bumptech/glide/GlideContext;

    .line 24
    iput-object v2, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->d:Ljava/lang/Object;

    .line 25
    iput-object v3, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->n:Lcom/bumptech/glide/load/Key;

    .line 26
    iput v4, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->e:I

    .line 27
    iput v5, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->f:I

    .line 28
    iput-object v7, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->p:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v10, p6

    .line 29
    iput-object v10, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->g:Ljava/lang/Class;

    .line 30
    iput-object v15, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->h:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v10, p7

    .line 31
    iput-object v10, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->k:Ljava/lang/Class;

    .line 32
    iput-object v6, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->o:Lcom/bumptech/glide/Priority;

    .line 33
    iput-object v8, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->i:Lcom/bumptech/glide/load/Options;

    move-object/from16 v10, p10

    .line 34
    iput-object v10, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->j:Ljava/util/Map;

    move/from16 v10, p11

    .line 35
    iput-boolean v10, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->q:Z

    move/from16 v10, p12

    .line 36
    iput-boolean v10, v9, Lcom/bumptech/glide/load/engine/DecodeHelper;->r:Z

    .line 37
    iput-object v0, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Lcom/bumptech/glide/GlideContext;

    .line 38
    iput-object v3, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/Key;

    .line 39
    iput-object v6, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lcom/bumptech/glide/Priority;

    .line 40
    iput-object v11, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 41
    iput v4, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->p:I

    .line 42
    iput v5, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->q:I

    .line 43
    iput-object v7, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->r:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 44
    iput-object v8, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/Options;

    .line 45
    iput-object v14, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/EngineJob;

    .line 46
    iput v13, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->u:I

    .line 47
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v3, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 48
    iput-object v2, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    .line 49
    iget-object v0, v0, Lcom/bumptech/glide/GlideContext;->h:Lcom/bumptech/glide/GlideExperiments;

    .line 50
    iput-object v0, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/GlideExperiments;

    .line 51
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob;->L:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, v12, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Ljava/util/function/Supplier;

    .line 52
    iget-object v0, v1, Lcom/bumptech/glide/load/engine/Engine;->a:Lcom/bumptech/glide/load/engine/Jobs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Jobs;->a:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    .line 55
    invoke-virtual {v14, v9, v10}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;)V

    .line 56
    invoke-virtual {v14, v12}, Lcom/bumptech/glide/load/engine/EngineJob;->l(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 57
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->i:Z

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v0, v12, v13, v11}, Lcom/bumptech/glide/load/engine/Engine;->g(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 59
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v0, v1, v9, v14}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/SingleRequest;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 60
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
