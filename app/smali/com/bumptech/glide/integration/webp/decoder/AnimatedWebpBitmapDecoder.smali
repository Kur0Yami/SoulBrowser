.class public Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/bumptech/glide/load/Option;


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.integration.webp.decoder.AnimatedWebpBitmapDecoder.DisableBitmap"

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
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->d:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 7
    .line 8
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;II)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->create([B)Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v5}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/Utils;->a(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->c:Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    .line 30
    .line 31
    sget-object v8, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->b:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 32
    .line 33
    move-object v6, p1

    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->a()Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c()V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p1, v0

    .line 56
    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method
