.class Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncImageLoadingListener"
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;


# virtual methods
.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method
