.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final b(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->l:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 20
    .line 21
    invoke-direct {p3, p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
