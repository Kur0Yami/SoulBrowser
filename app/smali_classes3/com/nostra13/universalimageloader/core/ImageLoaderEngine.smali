.class Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field public b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/WeakHashMap;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->f:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->j:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 52
    .line 53
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    .line 61
    new-instance p1, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    const-string v1, "uil-pool-d-"

    .line 65
    .line 66
    invoke-direct {p1, v0, v1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->d:Ljava/util/concurrent/ExecutorService;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->d:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:I

    .line 19
    .line 20
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->g:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->a(ILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    .line 28
    :cond_0
    iget-boolean v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->e:Z

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget v1, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:I

    .line 44
    .line 45
    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->g:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->a(ILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    .line 53
    :cond_1
    return-void
.end method
