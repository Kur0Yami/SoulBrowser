.class Lcom/google/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile c:Lcom/google/common/cache/LocalCache$ValueReference;

.field public final f:Lcom/google/common/util/concurrent/SettableFuture;

.field public final g:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/common/util/concurrent/SettableFuture;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 12
    .line 13
    new-instance v1, Lcom/google/common/base/Stopwatch;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->g:Lcom/google/common/base/Stopwatch;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/cache/ReferenceEntry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->n(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object p1, Lcom/google/common/cache/LocalCache;->y:Lcom/google/common/cache/LocalCache$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 12
    .line 13
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final f(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final g(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->g:Lcom/google/common/base/Stopwatch;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/common/base/Stopwatch;->a:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    xor-int/2addr v1, v2

    .line 7
    const-string v3, "This stopwatch is already running."

    .line 8
    .line 9
    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->m(ZLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v2, v0, Lcom/google/common/base/Stopwatch;->a:Z

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, v0, Lcom/google/common/base/Stopwatch;->b:J

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->n(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 41
    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_2
    new-instance p2, Lcom/google/common/cache/b;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/google/common/cache/b;-><init>(Lcom/google/common/cache/LocalCache$LoadingValueReference;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/Futures;->e(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    return-object p1

    .line 72
    :goto_0
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->o(Ljava/lang/Throwable;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->f:Lcom/google/common/util/concurrent/SettableFuture;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-object p2
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference;->c:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
