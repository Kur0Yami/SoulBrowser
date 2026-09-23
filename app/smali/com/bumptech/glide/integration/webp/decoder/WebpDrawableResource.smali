.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/engine/Initializable;"
    }
.end annotation


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->h:Z

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->d:Lcom/bumptech/glide/RequestManager;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->l:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget-object v5, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 28
    .line 29
    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->l:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 35
    iput-boolean v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->f:Z

    .line 36
    .line 37
    iget-object v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->i:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->i:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 45
    .line 46
    :cond_1
    iget-object v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->k:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 51
    .line 52
    .line 53
    iput-object v4, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->k:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 54
    .line 55
    :cond_2
    iget-object v3, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->m:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->m:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 63
    .line 64
    :cond_3
    iget-object v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c()V

    .line 67
    .line 68
    .line 69
    iput-boolean v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->j:Z

    .line 70
    .line 71
    return-void
.end method

.method public final c()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getSizeInBytes()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->n:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    return v1
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
