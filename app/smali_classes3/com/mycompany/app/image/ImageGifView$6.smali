.class Lcom/mycompany/app/image/ImageGifView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageGifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageGifView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageGifView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView$6;->c:Lcom/mycompany/app/image/ImageGifView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/engine/GlideException;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView$6;->c:Lcom/mycompany/app/image/ImageGifView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/image/ImageGifView$6;->c:Lcom/mycompany/app/image/ImageGifView;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 11
    .line 12
    new-instance v2, Lcom/mycompany/app/image/ImageGifView$6$1;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageGifView$6$1;-><init>(Lcom/mycompany/app/image/ImageGifView$6;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p1, Lcom/mycompany/app/image/ImageGifView;->C:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 21
    .line 22
    :goto_0
    return-void
.end method
