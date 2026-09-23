.class Lcom/mycompany/app/main/image/MainImagePreview$44;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/image/MainImagePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Landroid/graphics/drawable/PictureDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$44;->f:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Landroid/graphics/drawable/PictureDrawable;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/main/image/MainImagePreview$44;->f:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q2:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean p2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->r2:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImagePreview;->q2:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->H1:Lcom/mycompany/app/main/image/MainImagePreview$ShareTask;

    .line 26
    .line 27
    iget-object p1, v1, Lcom/mycompany/app/main/image/MainImagePreview;->j1:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/mycompany/app/main/image/MainImagePreview$46;

    .line 33
    .line 34
    move-object v4, v3

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/image/MainImagePreview$46;-><init>(Lcom/mycompany/app/main/image/MainImagePreview;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {v1, p1, v3, v3, v5}, Lcom/mycompany/app/main/image/MainImagePreview;->X0(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/PictureDrawable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$44;->f:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImagePreview;->r2:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Lcom/mycompany/app/main/image/MainImagePreview;->q2:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->r1:Lcom/mycompany/app/view/MyCoverView;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/image/MainImagePreview;->c1(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
