.class final Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Landroid/graphics/Bitmap;

.field public final f:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field public final i:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field public final j:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field public final k:Lcom/mycompany/app/main/MainItem$ViewItem;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->c:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->d:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->f:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 9
    .line 10
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->g:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->h:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 19
    .line 20
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->i:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->j:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 25
    .line 26
    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/ImageLoadingInfo;->i:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->k:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->f:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->i:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->b(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->j:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 20
    .line 21
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->e:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->g:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->b(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->h:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->c:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    invoke-interface {v3, v4, v0}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->a()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/DisplayBitmapTask;->k:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 68
    .line 69
    invoke-interface {v2, v1, v0, v4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
