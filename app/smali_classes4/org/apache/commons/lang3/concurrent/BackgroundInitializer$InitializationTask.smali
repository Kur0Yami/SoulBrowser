.class final Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->b:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->a:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->b:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 19
    .line 20
    .line 21
    :cond_1
    throw v1
.end method
