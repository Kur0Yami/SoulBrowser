.class Lcom/mycompany/app/main/image/MainImageView$4;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/image/MainImageView;
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
.field public final synthetic f:Lcom/mycompany/app/main/image/MainImageView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$4;->f:Lcom/mycompany/app/main/image/MainImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/image/MainImageView$4;->f:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/main/image/MainImageView;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p2, Lcom/mycompany/app/main/image/MainImageView;->L:Landroid/graphics/drawable/PictureDrawable;

    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/main/image/MainImageView$4$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/image/MainImageView$4$1;-><init>(Lcom/mycompany/app/main/image/MainImageView$4;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageView$4;->f:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageView;->f:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->b(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageView$4;->f:Lcom/mycompany/app/main/image/MainImageView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/mycompany/app/main/image/MainImageView;->a(Lcom/mycompany/app/main/image/MainImageView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
