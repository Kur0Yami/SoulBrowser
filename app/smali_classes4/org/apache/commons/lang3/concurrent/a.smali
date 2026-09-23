.class public final synthetic Lorg/apache/commons/lang3/concurrent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    check-cast p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->d()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->h(Ljava/util/concurrent/ExecutorService;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    monitor-enter p1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->d()Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->b:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->f()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->b:Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->b:Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    new-instance v2, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;

    .line 46
    .line 47
    invoke-direct {v2, p1, v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;-><init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->c:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit p1

    .line 57
    return-void

    .line 58
    :cond_2
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw v0
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
