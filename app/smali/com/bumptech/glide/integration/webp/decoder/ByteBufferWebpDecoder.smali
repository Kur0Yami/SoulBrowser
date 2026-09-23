.class public Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/bumptech/glide/load/Option;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.integration.webp.decoder.ByteBufferWebpDecoder.DisableAnimation"

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->d:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 11
    .line 12
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 13
    .line 14
    invoke-direct {p1, p2, p3}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->d:Lcom/bumptech/glide/load/Option;

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
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->c(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->j:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    return v0
.end method

.method public final b(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 10

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v3, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->create([B)Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v0, v1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/Utils;->a(IIII)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->q:Lcom/bumptech/glide/load/Option;

    .line 31
    .line 32
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v5, v0

    .line 37
    check-cast v5, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 38
    .line 39
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 42
    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->a()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableResource;

    .line 54
    .line 55
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 56
    .line 57
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 58
    .line 59
    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->a:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v5}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    move v7, p2

    .line 68
    move v8, p3

    .line 69
    move-object v6, v0

    .line 70
    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;IILandroid/graphics/Bitmap;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 74
    .line 75
    invoke-direct {v3, v0, v4}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    return-object v1
.end method
