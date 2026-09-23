.class Lcom/mycompany/app/image/ImageViewPageEffect$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$22$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$22$1;->c:Lcom/mycompany/app/image/ImageViewPageEffect$22;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect$22;->f:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->q0(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 19
    .line 20
    iget v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 27
    .line 28
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q0()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->v:I

    .line 35
    .line 36
    const/4 v8, 0x2

    .line 37
    const/4 v9, 0x0

    .line 38
    if-ne v6, v8, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v9

    .line 42
    :goto_0
    invoke-static {v4, v5, v2}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v3, v7, v2, v9}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    iget-object v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->R:Lcom/mycompany/app/image/ImageGifView;

    .line 51
    .line 52
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 53
    .line 54
    iget-object v8, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->m:Ljava/lang/String;

    .line 55
    .line 56
    iget-boolean v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect$22;->c:Z

    .line 57
    .line 58
    new-instance v11, Lcom/mycompany/app/image/ImageViewPageEffect$22$1$1;

    .line 59
    .line 60
    invoke-direct {v11, p0, v7}, Lcom/mycompany/app/image/ImageViewPageEffect$22$1$1;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect$22$1;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v5 .. v11}, Lcom/mycompany/app/image/ImageGifView;->k(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/mycompany/app/image/ImageGifView$GifListener;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method
