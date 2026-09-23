.class Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field public final synthetic f:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->f:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->f:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->m:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b()V

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    return-void
.end method
