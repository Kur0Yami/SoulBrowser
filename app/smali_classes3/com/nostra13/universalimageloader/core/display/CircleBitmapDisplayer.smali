.class public Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;
    }
.end annotation


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/display/CircleBitmapDisplayer$CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->f(Landroid/graphics/drawable/Drawable;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "ImageAware should wrap ImageView. ImageViewAware is expected."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
