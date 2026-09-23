.class public final Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final b:Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

.field public final c:Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->b:Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->c:Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->b:Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->a(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    instance-of v0, v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;->c:Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;->a(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
