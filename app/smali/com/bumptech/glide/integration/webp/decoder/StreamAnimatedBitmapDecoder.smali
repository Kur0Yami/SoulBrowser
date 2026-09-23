.class public Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;->a:Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->d:Lcom/bumptech/glide/load/Option;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;->a:Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->b(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->j:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 28
    .line 29
    if-ne p1, p2, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_1
    return v0
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/decoder/Utils;->b(Ljava/io/InputStream;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;->a:Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    .line 16
    .line 17
    invoke-virtual {p4, p1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->a(Ljava/nio/ByteBuffer;II)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
