.class public Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public static a(ILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->f:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    move-object v6, p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :goto_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    .line 20
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    new-instance v7, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    .line 23
    .line 24
    const-string p1, "uil-pool-"

    .line 25
    .line 26
    invoke-direct {v7, p0, p1}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    move v2, v1

    .line 33
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    const-string p1, "activity"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 20
    .line 21
    const/high16 v1, 0x100000

    .line 22
    .line 23
    and-int/2addr p0, v1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :cond_0
    mul-int/2addr v0, v1

    .line 31
    div-int/lit8 p1, v0, 0x8

    .line 32
    .line 33
    :cond_1
    new-instance p0, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method
