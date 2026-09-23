.class public final Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/bumptech/glide/load/Option;

.field public static final f:Lcom/bumptech/glide/load/Option;

.field public static final g:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final h:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder"

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
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->e:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    const-string v0, "com.bumptech.glide.integration.webp.decoder.WebpDownsampler.SystemDecoder"

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->f:Lcom/bumptech/glide/load/Option;

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler$1;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->g:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 27
    .line 28
    sget-object v0, Lcom/bumptech/glide/util/Util;->a:[C

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->h:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    const-string p1, "Argument must not be null"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->b:Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    invoke-static {p3, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 17
    .line 18
    invoke-static {p4, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 22
    .line 23
    return-void
.end method

.method public static c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const-string v0, "WebpDownsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/high16 v1, 0xa00000

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->b()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 17
    .line 18
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 19
    .line 20
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 21
    .line 22
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    :try_start_0
    invoke-static {p0, v5, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-object p2

    .line 43
    :catch_0
    move-exception v4

    .line 44
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    .line 45
    .line 46
    const-string v7, "Exception decoding bitmap, outWidth: "

    .line 47
    .line 48
    const-string v8, ", outHeight: "

    .line 49
    .line 50
    const-string v9, ", outMimeType: "

    .line 51
    .line 52
    invoke-static {v7, v1, v2, v8, v9}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ", inBitmap: "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v6, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 88
    .line 89
    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(Landroid/graphics/Bitmap;)V

    .line 102
    .line 103
    .line 104
    iput-object v5, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 105
    .line 106
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :catch_1
    :try_start_3
    throw v6

    .line 117
    :cond_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, " ("

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "["

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "x"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "] "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->h:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 21
    .line 22
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 23
    .line 24
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 11

    .line 1
    sget-object v9, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->g:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "You must provide an InputStream that supports mark()"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Preconditions;->a(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 13
    .line 14
    const/high16 v1, 0x10000

    .line 15
    .line 16
    const-class v2, [B

    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v10, v0

    .line 23
    check-cast v10, [B

    .line 24
    .line 25
    const-class v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->h:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 31
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/graphics/BitmapFactory$Options;

    .line 36
    .line 37
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_0
    move-object v3, v0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    move-object p2, p0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :goto_0
    monitor-exit v1

    .line 56
    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 57
    .line 58
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->f:Lcom/bumptech/glide/load/Option;

    .line 59
    .line 60
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v5, v0

    .line 65
    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 66
    .line 67
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->h:Lcom/bumptech/glide/load/Option;

    .line 68
    .line 69
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v4, v0

    .line 74
    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 75
    .line 76
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->i:Lcom/bumptech/glide/load/Option;

    .line 77
    .line 78
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->j:Lcom/bumptech/glide/load/Option;

    .line 89
    .line 90
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    check-cast p4, Ljava/lang/Boolean;

    .line 101
    .line 102
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    :cond_1
    move-object v1, p0

    .line 107
    move-object v2, p1

    .line 108
    move v6, p2

    .line 109
    move v7, p3

    .line 110
    :try_start_3
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;IIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 114
    move-object p2, v1

    .line 115
    :try_start_4
    iget-object p3, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 116
    .line 117
    invoke-static {p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 118
    .line 119
    .line 120
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    invoke-static {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 122
    .line 123
    .line 124
    iget-object p3, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 125
    .line 126
    invoke-interface {p3, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-object p1

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    :goto_1
    move-object p1, v0

    .line 132
    goto :goto_2

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    move-object p2, v1

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    invoke-static {v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 140
    .line 141
    invoke-interface {p3, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :catchall_3
    move-exception v0

    .line 146
    move-object p2, p0

    .line 147
    :goto_3
    move-object p1, v0

    .line 148
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 149
    :try_start_6
    throw p1

    .line 150
    :catchall_4
    move-exception v0

    .line 151
    :goto_4
    move-object p1, v0

    .line 152
    goto :goto_5

    .line 153
    :catchall_5
    move-exception v0

    .line 154
    goto :goto_3

    .line 155
    :catchall_6
    move-exception v0

    .line 156
    move-object p2, p0

    .line 157
    goto :goto_4

    .line 158
    :goto_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 159
    throw p1
.end method

.method public final b(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;IIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v0, p3

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p8

    .line 14
    .line 15
    sget v8, Lcom/bumptech/glide/util/LogTime;->b:I

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const/4 v10, 0x1

    .line 22
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    iget-object v11, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 25
    .line 26
    invoke-static {v2, v3, v7, v11}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    .line 32
    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 33
    .line 34
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    .line 36
    filled-new-array {v13, v14}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    aget v14, v13, v12

    .line 41
    .line 42
    aget v13, v13, v10

    .line 43
    .line 44
    iget-object v15, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v12, -0x1

    .line 47
    iget-object v12, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->d:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v10, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 50
    .line 51
    move-wide/from16 v16, v8

    .line 52
    .line 53
    invoke-static {v12, v2, v10}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    packed-switch v8, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    move/from16 v19, v8

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    goto :goto_0

    .line 64
    :pswitch_0
    move/from16 v19, v8

    .line 65
    .line 66
    const/16 v9, 0x10e

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_1
    move/from16 v19, v8

    .line 70
    .line 71
    const/16 v9, 0x5a

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_2
    const/16 v19, 0xb4

    .line 75
    .line 76
    move/from16 v9, v19

    .line 77
    .line 78
    move/from16 v19, v8

    .line 79
    .line 80
    :goto_0
    const/high16 v8, -0x80000000

    .line 81
    .line 82
    if-ne v5, v8, :cond_0

    .line 83
    .line 84
    move v1, v14

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    move v1, v5

    .line 87
    :goto_1
    if-ne v6, v8, :cond_1

    .line 88
    .line 89
    move v8, v13

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    move v8, v6

    .line 92
    :goto_2
    invoke-static {v12, v2, v10}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->f(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v5, ", target density: "

    .line 97
    .line 98
    const/high16 v21, 0x3f800000    # 1.0f

    .line 99
    .line 100
    move-object/from16 v22, v15

    .line 101
    .line 102
    const-string v15, ", density: "

    .line 103
    .line 104
    move-object/from16 v23, v10

    .line 105
    .line 106
    const-string v10, "x"

    .line 107
    .line 108
    move-object/from16 v24, v12

    .line 109
    .line 110
    const-string v12, "WebpDownsampler"

    .line 111
    .line 112
    if-lez v14, :cond_2

    .line 113
    .line 114
    if-gtz v13, :cond_3

    .line 115
    .line 116
    :cond_2
    move-object v4, v5

    .line 117
    move-object v5, v15

    .line 118
    const/4 v6, 0x0

    .line 119
    goto/16 :goto_e

    .line 120
    .line 121
    :cond_3
    const/16 v4, 0x5a

    .line 122
    .line 123
    if-eq v9, v4, :cond_5

    .line 124
    .line 125
    const/16 v4, 0x10e

    .line 126
    .line 127
    if-ne v9, v4, :cond_4

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    invoke-virtual {v0, v14, v13, v1, v8}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    goto :goto_4

    .line 135
    :cond_5
    :goto_3
    invoke-virtual {v0, v13, v14, v1, v8}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    :goto_4
    const/4 v9, 0x0

    .line 140
    cmpg-float v9, v4, v9

    .line 141
    .line 142
    move/from16 v18, v9

    .line 143
    .line 144
    const-string v9, "], target: ["

    .line 145
    .line 146
    if-lez v18, :cond_14

    .line 147
    .line 148
    move-object/from16 v18, v15

    .line 149
    .line 150
    invoke-virtual {v0, v14, v13, v1, v8}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    if-eqz v15, :cond_13

    .line 155
    .line 156
    move-object/from16 v20, v5

    .line 157
    .line 158
    int-to-float v5, v14

    .line 159
    move/from16 v25, v5

    .line 160
    .line 161
    mul-float v5, v4, v25

    .line 162
    .line 163
    move/from16 v26, v4

    .line 164
    .line 165
    float-to-double v4, v5

    .line 166
    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    .line 167
    .line 168
    add-double v4, v4, v27

    .line 169
    .line 170
    double-to-int v4, v4

    .line 171
    int-to-float v5, v13

    .line 172
    move/from16 v29, v4

    .line 173
    .line 174
    mul-float v4, v26, v5

    .line 175
    .line 176
    move/from16 v30, v5

    .line 177
    .line 178
    float-to-double v4, v4

    .line 179
    add-double v4, v4, v27

    .line 180
    .line 181
    double-to-int v4, v4

    .line 182
    div-int v5, v14, v29

    .line 183
    .line 184
    div-int v4, v13, v4

    .line 185
    .line 186
    move-object/from16 v29, v9

    .line 187
    .line 188
    sget-object v9, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->c:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 189
    .line 190
    if-ne v15, v9, :cond_6

    .line 191
    .line 192
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    goto :goto_5

    .line 197
    :cond_6
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const/4 v5, 0x1

    .line 206
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-ne v15, v9, :cond_7

    .line 211
    .line 212
    int-to-float v5, v4

    .line 213
    div-float v9, v21, v26

    .line 214
    .line 215
    cmpg-float v5, v5, v9

    .line 216
    .line 217
    if-gez v5, :cond_7

    .line 218
    .line 219
    shl-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    :cond_7
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 222
    .line 223
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 224
    .line 225
    if-ne v6, v5, :cond_9

    .line 226
    .line 227
    const/16 v5, 0x8

    .line 228
    .line 229
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    int-to-float v5, v5

    .line 234
    div-float v6, v25, v5

    .line 235
    .line 236
    move v9, v5

    .line 237
    float-to-double v5, v6

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v5

    .line 242
    double-to-int v5, v5

    .line 243
    div-float v6, v30, v9

    .line 244
    .line 245
    move v9, v5

    .line 246
    float-to-double v5, v6

    .line 247
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 248
    .line 249
    .line 250
    move-result-wide v5

    .line 251
    double-to-int v5, v5

    .line 252
    div-int/lit8 v6, v4, 0x8

    .line 253
    .line 254
    if-lez v6, :cond_8

    .line 255
    .line 256
    div-int/2addr v9, v6

    .line 257
    div-int/2addr v5, v6

    .line 258
    :cond_8
    move v6, v5

    .line 259
    goto/16 :goto_9

    .line 260
    .line 261
    :cond_9
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 262
    .line 263
    if-eq v6, v5, :cond_10

    .line 264
    .line 265
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 266
    .line 267
    if-ne v6, v5, :cond_a

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_a
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 271
    .line 272
    if-eq v6, v5, :cond_e

    .line 273
    .line 274
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 275
    .line 276
    if-ne v6, v5, :cond_b

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :cond_b
    rem-int v5, v14, v4

    .line 280
    .line 281
    if-nez v5, :cond_c

    .line 282
    .line 283
    rem-int v5, v13, v4

    .line 284
    .line 285
    if-eqz v5, :cond_d

    .line 286
    .line 287
    :cond_c
    const/4 v5, 0x1

    .line 288
    goto :goto_6

    .line 289
    :cond_d
    div-int v5, v14, v4

    .line 290
    .line 291
    div-int v6, v13, v4

    .line 292
    .line 293
    goto :goto_b

    .line 294
    :goto_6
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 295
    .line 296
    invoke-static {v2, v3, v7, v11}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 297
    .line 298
    .line 299
    const/4 v6, 0x0

    .line 300
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    .line 302
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 303
    .line 304
    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 305
    .line 306
    filled-new-array {v9, v15}, [I

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    aget v15, v9, v6

    .line 311
    .line 312
    aget v6, v9, v5

    .line 313
    .line 314
    move v5, v15

    .line 315
    goto :goto_b

    .line 316
    :cond_e
    :goto_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    const/16 v6, 0x18

    .line 319
    .line 320
    if-lt v5, v6, :cond_f

    .line 321
    .line 322
    int-to-float v5, v4

    .line 323
    div-float v6, v25, v5

    .line 324
    .line 325
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    div-float v5, v30, v5

    .line 330
    .line 331
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    move/from16 v34, v6

    .line 336
    .line 337
    move v6, v5

    .line 338
    move/from16 v5, v34

    .line 339
    .line 340
    goto :goto_b

    .line 341
    :cond_f
    int-to-float v5, v4

    .line 342
    div-float v6, v25, v5

    .line 343
    .line 344
    move v9, v5

    .line 345
    float-to-double v5, v6

    .line 346
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v5

    .line 350
    double-to-int v5, v5

    .line 351
    div-float v6, v30, v9

    .line 352
    .line 353
    move v9, v5

    .line 354
    float-to-double v5, v6

    .line 355
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 356
    .line 357
    .line 358
    move-result-wide v5

    .line 359
    :goto_8
    double-to-int v6, v5

    .line 360
    :goto_9
    move v5, v9

    .line 361
    goto :goto_b

    .line 362
    :cond_10
    :goto_a
    int-to-float v5, v4

    .line 363
    div-float v6, v25, v5

    .line 364
    .line 365
    move v9, v5

    .line 366
    float-to-double v5, v6

    .line 367
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 368
    .line 369
    .line 370
    move-result-wide v5

    .line 371
    double-to-int v5, v5

    .line 372
    div-float v6, v30, v9

    .line 373
    .line 374
    move v9, v5

    .line 375
    float-to-double v5, v6

    .line 376
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 377
    .line 378
    .line 379
    move-result-wide v5

    .line 380
    goto :goto_8

    .line 381
    :goto_b
    invoke-virtual {v0, v5, v6, v1, v8}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    move v9, v6

    .line 386
    float-to-double v6, v0

    .line 387
    const-wide v30, 0x41cdcd6500000000L    # 1.0E9

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    mul-double v30, v30, v6

    .line 393
    .line 394
    move-wide/from16 v32, v6

    .line 395
    .line 396
    add-double v6, v30, v27

    .line 397
    .line 398
    double-to-int v0, v6

    .line 399
    int-to-float v6, v0

    .line 400
    const v7, 0x4e6e6b28    # 1.0E9f

    .line 401
    .line 402
    .line 403
    div-float/2addr v6, v7

    .line 404
    float-to-double v6, v6

    .line 405
    div-double v6, v32, v6

    .line 406
    .line 407
    move-wide/from16 v30, v6

    .line 408
    .line 409
    int-to-double v6, v0

    .line 410
    mul-double v6, v6, v30

    .line 411
    .line 412
    add-double v6, v6, v27

    .line 413
    .line 414
    double-to-int v0, v6

    .line 415
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 416
    .line 417
    const v6, 0x3b9aca00

    .line 418
    .line 419
    .line 420
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 421
    .line 422
    if-lez v0, :cond_11

    .line 423
    .line 424
    if-eq v0, v6, :cond_11

    .line 425
    .line 426
    const/4 v6, 0x1

    .line 427
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 428
    .line 429
    const/4 v6, 0x0

    .line 430
    :goto_c
    const/4 v7, 0x2

    .line 431
    goto :goto_d

    .line 432
    :cond_11
    const/4 v6, 0x0

    .line 433
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 434
    .line 435
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 436
    .line 437
    goto :goto_c

    .line 438
    :goto_d
    invoke-static {v12, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_12

    .line 443
    .line 444
    const-string v0, "Calculate scaling, source: ["

    .line 445
    .line 446
    move-object/from16 v7, v29

    .line 447
    .line 448
    invoke-static {v0, v14, v13, v10, v7}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v7, "], power of two scaled: ["

    .line 462
    .line 463
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v5, "], exact scale factor: "

    .line 476
    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    move/from16 v5, v26

    .line 481
    .line 482
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v5, ", power of 2 sample size: "

    .line 486
    .line 487
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v4, ", adjusted scale factor: "

    .line 494
    .line 495
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    move-wide/from16 v4, v32

    .line 499
    .line 500
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    move-object/from16 v4, v20

    .line 504
    .line 505
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 509
    .line 510
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    move-object/from16 v5, v18

    .line 514
    .line 515
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 519
    .line 520
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    goto :goto_e

    .line 531
    :cond_12
    move-object/from16 v5, v18

    .line 532
    .line 533
    move-object/from16 v4, v20

    .line 534
    .line 535
    goto :goto_e

    .line 536
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 537
    .line 538
    const-string v1, "Cannot round with null rounding"

    .line 539
    .line 540
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v0

    .line 544
    :cond_14
    move v5, v4

    .line 545
    move-object v7, v9

    .line 546
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 547
    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    const-string v4, "Cannot scale with factor: "

    .line 551
    .line 552
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    const-string v4, " from: "

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v0, ", source: ["

    .line 567
    .line 568
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v0, "]"

    .line 593
    .line 594
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v2

    .line 605
    :goto_e
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 606
    .line 607
    move-object/from16 v7, p4

    .line 608
    .line 609
    if-eq v7, v0, :cond_19

    .line 610
    .line 611
    move-object/from16 v0, v23

    .line 612
    .line 613
    move-object/from16 v9, v24

    .line 614
    .line 615
    :try_start_0
    invoke-static {v9, v2, v0}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->f(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 620
    .line 621
    .line 622
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_f

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const/4 v9, 0x3

    .line 626
    invoke-static {v12, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 627
    .line 628
    .line 629
    move-result v9

    .line 630
    if-eqz v9, :cond_15

    .line 631
    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v15, "Cannot determine whether the image has alpha or not from header, format "

    .line 635
    .line 636
    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v7

    .line 646
    invoke-static {v12, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    .line 648
    .line 649
    :cond_15
    move v0, v6

    .line 650
    :goto_f
    if-eqz v0, :cond_16

    .line 651
    .line 652
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 653
    .line 654
    goto :goto_10

    .line 655
    :cond_16
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 656
    .line 657
    :goto_10
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 658
    .line 659
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 660
    .line 661
    if-eq v0, v7, :cond_17

    .line 662
    .line 663
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 664
    .line 665
    if-eq v0, v7, :cond_17

    .line 666
    .line 667
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 668
    .line 669
    if-ne v0, v7, :cond_18

    .line 670
    .line 671
    :cond_17
    const/4 v7, 0x1

    .line 672
    goto :goto_11

    .line 673
    :cond_18
    const/4 v7, 0x1

    .line 674
    goto :goto_12

    .line 675
    :goto_11
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 676
    .line 677
    goto :goto_12

    .line 678
    :cond_19
    const/4 v7, 0x1

    .line 679
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 680
    .line 681
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 682
    .line 683
    :goto_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 684
    .line 685
    if-eqz p7, :cond_1a

    .line 686
    .line 687
    goto/16 :goto_14

    .line 688
    .line 689
    :cond_1a
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 690
    .line 691
    if-lez v1, :cond_1b

    .line 692
    .line 693
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 694
    .line 695
    if-lez v8, :cond_1b

    .line 696
    .line 697
    if-eq v1, v8, :cond_1b

    .line 698
    .line 699
    goto :goto_13

    .line 700
    :cond_1b
    move v7, v6

    .line 701
    :goto_13
    if-eqz v7, :cond_1c

    .line 702
    .line 703
    int-to-float v1, v1

    .line 704
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 705
    .line 706
    int-to-float v6, v6

    .line 707
    div-float v21, v1, v6

    .line 708
    .line 709
    :cond_1c
    move/from16 v1, v21

    .line 710
    .line 711
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 712
    .line 713
    int-to-float v7, v14

    .line 714
    int-to-float v8, v6

    .line 715
    div-float/2addr v7, v8

    .line 716
    move v9, v8

    .line 717
    float-to-double v7, v7

    .line 718
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 719
    .line 720
    .line 721
    move-result-wide v7

    .line 722
    double-to-int v7, v7

    .line 723
    int-to-float v8, v13

    .line 724
    div-float/2addr v8, v9

    .line 725
    float-to-double v8, v8

    .line 726
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 727
    .line 728
    .line 729
    move-result-wide v8

    .line 730
    double-to-int v8, v8

    .line 731
    int-to-float v7, v7

    .line 732
    mul-float/2addr v7, v1

    .line 733
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 734
    .line 735
    .line 736
    move-result v7

    .line 737
    int-to-float v8, v8

    .line 738
    mul-float/2addr v8, v1

    .line 739
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 740
    .line 741
    .line 742
    move-result v8

    .line 743
    const/4 v9, 0x2

    .line 744
    invoke-static {v12, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 745
    .line 746
    .line 747
    move-result v15

    .line 748
    if-eqz v15, :cond_1d

    .line 749
    .line 750
    const-string v9, "Calculated target ["

    .line 751
    .line 752
    const-string v15, "] for source ["

    .line 753
    .line 754
    invoke-static {v9, v7, v8, v10, v15}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    move-result-object v9

    .line 758
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const-string v15, "], sampleSize: "

    .line 768
    .line 769
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    const-string v6, ", targetDensity: "

    .line 776
    .line 777
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 781
    .line 782
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 789
    .line 790
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v6, ", density multiplier: "

    .line 794
    .line 795
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    :cond_1d
    move v1, v7

    .line 809
    :goto_14
    if-lez v1, :cond_1f

    .line 810
    .line 811
    if-lez v8, :cond_1f

    .line 812
    .line 813
    const/16 v6, 0x1a

    .line 814
    .line 815
    if-lt v0, v6, :cond_1e

    .line 816
    .line 817
    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 818
    .line 819
    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 820
    .line 821
    if-ne v0, v6, :cond_1e

    .line 822
    .line 823
    goto :goto_15

    .line 824
    :cond_1e
    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 825
    .line 826
    invoke-interface {v11, v1, v8, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 831
    .line 832
    :cond_1f
    :goto_15
    move-object/from16 v7, p8

    .line 833
    .line 834
    invoke-static {v2, v3, v7, v11}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->c(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-interface {v7, v0, v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 839
    .line 840
    .line 841
    const/4 v7, 0x2

    .line 842
    invoke-static {v12, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    if-eqz v1, :cond_20

    .line 847
    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    const-string v2, "Decoded "

    .line 851
    .line 852
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v2, " from ["

    .line 863
    .line 864
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v2, "] "

    .line 877
    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    move-object/from16 v2, v22

    .line 882
    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    const-string v2, " with inBitmap "

    .line 887
    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 892
    .line 893
    invoke-static {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v2, " for ["

    .line 901
    .line 902
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    move/from16 v2, p5

    .line 906
    .line 907
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    move/from16 v6, p6

    .line 914
    .line 915
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    const-string v2, "], sample size: "

    .line 919
    .line 920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 924
    .line 925
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 932
    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 940
    .line 941
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    const-string v2, ", thread: "

    .line 945
    .line 946
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v2, ", duration: "

    .line 961
    .line 962
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-static/range {v16 .. v17}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    .line 966
    .line 967
    .line 968
    move-result-wide v2

    .line 969
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    :cond_20
    move-object/from16 v1, p0

    .line 980
    .line 981
    if-eqz v0, :cond_21

    .line 982
    .line 983
    iget-object v2, v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->b:Landroid/util/DisplayMetrics;

    .line 984
    .line 985
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 986
    .line 987
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 988
    .line 989
    .line 990
    move/from16 v2, v19

    .line 991
    .line 992
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 997
    .line 998
    .line 999
    move-result v3

    .line 1000
    if-nez v3, :cond_22

    .line 1001
    .line 1002
    invoke-interface {v11, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(Landroid/graphics/Bitmap;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_16

    .line 1006
    :cond_21
    const/4 v2, 0x0

    .line 1007
    :cond_22
    :goto_16
    return-object v2

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
