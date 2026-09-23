.class final Lorg/apache/commons/lang3/concurrent/UncheckedFutureImpl;
.super Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/UncheckedFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<",
        "TV;>;",
        "Lorg/apache/commons/lang3/concurrent/UncheckedFuture<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 4
    throw v1

    :catch_1
    move-exception v0

    .line 5
    new-instance v1, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    .line 8
    :try_start_0
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lorg/apache/commons/lang3/concurrent/UncheckedTimeoutException;

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    throw p2

    :catch_1
    move-exception p1

    .line 12
    new-instance p2, Lorg/apache/commons/lang3/concurrent/UncheckedExecutionException;

    .line 13
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    throw p2

    :catch_2
    move-exception p1

    .line 15
    new-instance p2, Lorg/apache/commons/lang3/exception/UncheckedInterruptedException;

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw p2
.end method
