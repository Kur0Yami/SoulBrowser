.class Lcom/mycompany/app/main/image/MainImageCropper$7;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/image/MainImageCropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/main/image/MainImageCropper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$7;->f:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageCropper$7;->f:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p2, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput-boolean v1, p2, Lcom/mycompany/app/main/image/MainImageCropper;->w1:Z

    .line 29
    .line 30
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 36
    .line 37
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p2, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 43
    .line 44
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final f(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$7;->f:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->b(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$7;->f:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->w1:Z

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/image/MainImageCropper;->v1:Lcom/mycompany/app/view/MyCoverView;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 17
    .line 18
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 24
    .line 25
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
