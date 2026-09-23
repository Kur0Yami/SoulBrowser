.class Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageGifView$GifListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mycompany/app/image/ImageViewPageScroll$23$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll$23$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->b:Lcom/mycompany/app/image/ImageViewPageScroll$23$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->b:Lcom/mycompany/app/image/ImageViewPageScroll$23$1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageScroll;->O:Lcom/mycompany/app/image/ImageGifView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageGifView;->f()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageScroll;->O:Lcom/mycompany/app/image/ImageGifView;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->O:Lcom/mycompany/app/image/ImageGifView;

    .line 34
    .line 35
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->b:Lcom/mycompany/app/image/ImageViewPageScroll$23$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->o0(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/image/ImageViewPageScroll;->q1()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final c(Lcom/mycompany/app/view/MyImageView;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->b:Lcom/mycompany/app/image/ImageViewPageScroll$23$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->O0()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$23;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$23;->f:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 23
    .line 24
    iget v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v0, v4, :cond_1

    .line 29
    .line 30
    move v0, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-static {v3, v1, v0}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$23$1$1;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v1, v0, v5}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method
