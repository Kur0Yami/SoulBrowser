.class public Lcom/mycompany/app/main/MainListLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainListLoader$ListLoadListener;,
        Lcom/mycompany/app/main/MainListLoader$LoadItem;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z

.field public c:Ljava/util/ArrayList;

.field public d:Lcom/mycompany/app/main/MainListLoader$ListLoadListener;

.field public e:Lcom/mycompany/app/view/GlideRequests;

.field public f:Landroid/os/Handler;

.field public g:Ljava/util/concurrent/ExecutorService;

.field public h:Z

.field public i:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public j:Landroid/view/View;

.field public k:Landroid/graphics/Bitmap;

.field public l:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListLoader;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainListLoader;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListLoader;->d:Lcom/mycompany/app/main/MainListLoader$ListLoadListener;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 20
    .line 21
    return-void
.end method

.method public static b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 12
    .line 13
    const/16 v1, 0xb

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 18
    .line 19
    const/16 v1, 0x12

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-static {v0, p0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainListLoader;->d(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->i:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const-string p1, ".sec"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, ".nor"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static g(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p2}, Lcom/mycompany/app/main/MainListLoader;->d(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->i:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 19
    .line 20
    invoke-virtual {p2, p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainListLoader;->h:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainListLoader;->h:Z

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/main/MainListLoader$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListLoader$1;-><init>(Lcom/mycompany/app/main/MainListLoader;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->g:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->g:Ljava/util/concurrent/ExecutorService;

    .line 45
    .line 46
    :cond_4
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    return-void
.end method

.method public final e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/MainListLoader$LoadItem;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, v0, Lcom/mycompany/app/main/MainListLoader$LoadItem;->a:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    iput-object p2, v0, Lcom/mycompany/app/main/MainListLoader$LoadItem;->b:Landroid/view/View;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListLoader;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->e:Lcom/mycompany/app/view/GlideRequests;

    .line 7
    .line 8
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->d:Lcom/mycompany/app/main/MainListLoader$ListLoadListener;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->f:Landroid/os/Handler;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->g:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->j:Landroid/view/View;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->k:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/main/MainListLoader;->l:Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    return-void
.end method
