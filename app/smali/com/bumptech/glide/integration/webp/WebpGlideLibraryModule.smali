.class public Lcom/bumptech/glide/integration/webp/WebpGlideLibraryModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "SourceFile"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p2, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 8
    .line 9
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/bumptech/glide/Registry;->b()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v2, v3, v4, v1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;

    .line 23
    .line 24
    invoke-direct {v3, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;

    .line 28
    .line 29
    invoke-direct {v4, v2}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;

    .line 33
    .line 34
    invoke-direct {v5, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamBitmapWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;

    .line 38
    .line 39
    invoke-direct {v2, p1, p2, v1}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p3, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 43
    .line 44
    const-class v1, Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    const-class v6, Landroid/graphics/Bitmap;

    .line 47
    .line 48
    const-string v7, "Bitmap"

    .line 49
    .line 50
    invoke-virtual {p1, v4, v1, v6, v7}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-class v8, Ljava/io/InputStream;

    .line 54
    .line 55
    invoke-virtual {p1, v5, v8, v6, v7}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 59
    .line 60
    invoke-direct {v9, v0, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 61
    .line 62
    .line 63
    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    .line 65
    const-string v10, "BitmapDrawable"

    .line 66
    .line 67
    invoke-virtual {p1, v9, v1, v4, v10}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 71
    .line 72
    invoke-direct {v9, v0, v5}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v9, v8, v4, v10}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;

    .line 79
    .line 80
    invoke-direct {v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/ByteBufferAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v6, v7}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;

    .line 87
    .line 88
    invoke-direct {v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/StreamAnimatedBitmapDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/AnimatedWebpBitmapDecoder;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0, v8, v6, v7}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 95
    .line 96
    const-string v3, "legacy_prepend_all"

    .line 97
    .line 98
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;

    .line 102
    .line 103
    invoke-direct {v1, v2, p2}, Lcom/bumptech/glide/integration/webp/decoder/StreamWebpDecoder;-><init>(Lcom/bumptech/glide/integration/webp/decoder/ByteBufferWebpDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v8, v0, v3}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->e(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object p2, p3, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->c(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableEncoder;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
