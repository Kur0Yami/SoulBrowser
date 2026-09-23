.class public final Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;
    }
.end annotation


# static fields
.field public static final f:Lcom/bumptech/glide/load/Option;

.field public static final g:Lcom/bumptech/glide/load/Option;

.field public static final h:Lcom/bumptech/glide/load/Option;

.field public static final i:Lcom/bumptech/glide/load/Option;

.field public static final j:Lcom/bumptech/glide/load/Option;

.field public static final k:Ljava/util/Set;

.field public static final l:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field public static final m:Ljava/util/ArrayDeque;


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    .line 3
    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->f:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/Option;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    sget-object v2, Lcom/bumptech/glide/load/Option;->e:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    .line 15
    .line 16
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->g:Lcom/bumptech/glide/load/Option;

    .line 22
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->f:Lcom/bumptech/glide/load/Option;

    .line 24
    .line 25
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->h:Lcom/bumptech/glide/load/Option;

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->i:Lcom/bumptech/glide/load/Option;

    .line 36
    .line 37
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/Option;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/bumptech/glide/load/Option;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->j:Lcom/bumptech/glide/load/Option;

    .line 44
    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 46
    .line 47
    const-string v1, "image/vnd.wap.wbmp"

    .line 48
    .line 49
    const-string v2, "image/x-ico"

    .line 50
    .line 51
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->k:Ljava/util/Set;

    .line 67
    .line 68
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->l:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 74
    .line 75
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 76
    .line 77
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 78
    .line 79
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 80
    .line 81
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/bumptech/glide/util/Util;->a:[C

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->m:Ljava/util/ArrayDeque;

    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->a()Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    const-string p1, "Argument must not be null"

    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    invoke-static {p3, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 23
    .line 24
    invoke-static {p4, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 28
    .line 29
    return-void
.end method

.method public static c(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Downsampler"

    .line 2
    .line 3
    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->b()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->d()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    .line 15
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 16
    .line 17
    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v4

    .line 33
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v6, "Exception decoding bitmap, outWidth: "

    .line 36
    .line 37
    const-string v7, ", outHeight: "

    .line 38
    .line 39
    const-string v8, ", outMimeType: "

    .line 40
    .line 41
    invoke-static {v6, v1, v2, v7, v8}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", inBitmap: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    .line 77
    .line 78
    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    :try_start_2
    invoke-interface {p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(Landroid/graphics/Bitmap;)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 90
    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :catch_1
    :try_start_3
    throw v5

    .line 102
    :cond_2
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->d:Ljava/util/concurrent/locks/Lock;

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    .line 108
    .line 109
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
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->f(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->m:Ljava/util/ArrayDeque;

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
    .locals 5

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
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x1a

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    invoke-static {p0, v0}, Landroidx/privacysandbox/ads/adservices/topics/a;->i(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 30
    .line 31
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    .line 35
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    .line 37
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;
    .locals 13

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 4
    .line 5
    const/high16 v3, 0x10000

    .line 6
    .line 7
    const-class v4, [B

    .line 8
    .line 9
    invoke-interface {v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->d(ILjava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v12, v2

    .line 14
    check-cast v12, [B

    .line 15
    .line 16
    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->m:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/graphics/BitmapFactory$Options;

    .line 27
    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->f(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_0
    move-object v3, v4

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :goto_0
    monitor-exit v2

    .line 44
    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 45
    .line 46
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->f:Lcom/bumptech/glide/load/Option;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    move-object v5, v2

    .line 53
    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 54
    .line 55
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->g:Lcom/bumptech/glide/load/Option;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v6, v2

    .line 62
    check-cast v6, Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 63
    .line 64
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->f:Lcom/bumptech/glide/load/Option;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v4, v2

    .line 71
    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 72
    .line 73
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->i:Lcom/bumptech/glide/load/Option;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->j:Lcom/bumptech/glide/load/Option;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/Options;->c(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    :goto_1
    move-object v1, p0

    .line 107
    move-object v2, p1

    .line 108
    move v8, p2

    .line 109
    move/from16 v9, p3

    .line 110
    .line 111
    move-object/from16 v11, p5

    .line 112
    .line 113
    move v7, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    goto :goto_1

    .line 117
    :goto_2
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 122
    .line 123
    invoke-static {v0, v2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 131
    .line 132
    invoke-interface {v2, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->c(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-object v0

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    invoke-static {v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e(Landroid/graphics/BitmapFactory$Options;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 141
    .line 142
    invoke-interface {v2, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->c(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    :try_start_5
    throw v0

    .line 149
    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    throw v0
.end method

.method public final b(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;Lcom/bumptech/glide/load/PreferredColorSpace;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 38

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
    move/from16 v6, p7

    .line 10
    .line 11
    move/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v8, p10

    .line 14
    .line 15
    sget v9, Lcom/bumptech/glide/util/LogTime;->b:I

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 18
    .line 19
    .line 20
    move-result-wide v9

    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    .line 24
    iget-object v12, v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 25
    .line 26
    invoke-static {v2, v3, v8, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    .line 32
    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 33
    .line 34
    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 35
    .line 36
    filled-new-array {v14, v15}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    aget v15, v14, v13

    .line 41
    .line 42
    aget v14, v14, v11

    .line 43
    .line 44
    iget-object v13, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 45
    .line 46
    const/4 v11, -0x1

    .line 47
    if-eq v15, v11, :cond_1

    .line 48
    .line 49
    if-ne v14, v11, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move/from16 v11, p6

    .line 53
    .line 54
    :goto_0
    move-wide/from16 v16, v9

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .line 58
    goto :goto_0

    .line 59
    :goto_2
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->a()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    packed-switch v9, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    goto :goto_3

    .line 68
    :pswitch_0
    const/16 v10, 0x10e

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :pswitch_1
    const/16 v10, 0x5a

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :pswitch_2
    const/16 v18, 0xb4

    .line 75
    .line 76
    move/from16 v10, v18

    .line 77
    .line 78
    :goto_3
    packed-switch v9, :pswitch_data_1

    .line 79
    .line 80
    .line 81
    move/from16 v18, v9

    .line 82
    .line 83
    const/4 v9, 0x0

    .line 84
    :goto_4
    move-object/from16 v20, v13

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :pswitch_3
    move/from16 v18, v9

    .line 88
    .line 89
    const/4 v9, 0x1

    .line 90
    goto :goto_4

    .line 91
    :goto_5
    const/high16 v13, -0x80000000

    .line 92
    .line 93
    if-ne v6, v13, :cond_4

    .line 94
    .line 95
    const/16 v13, 0x5a

    .line 96
    .line 97
    if-eq v10, v13, :cond_3

    .line 98
    .line 99
    const/16 v13, 0x10e

    .line 100
    .line 101
    if-ne v10, v13, :cond_2

    .line 102
    .line 103
    goto :goto_7

    .line 104
    :cond_2
    move/from16 v21, v15

    .line 105
    .line 106
    :goto_6
    const/high16 v13, -0x80000000

    .line 107
    .line 108
    goto :goto_8

    .line 109
    :cond_3
    const/16 v13, 0x10e

    .line 110
    .line 111
    :goto_7
    move/from16 v21, v14

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_4
    move/from16 v21, v6

    .line 115
    .line 116
    :goto_8
    if-ne v7, v13, :cond_7

    .line 117
    .line 118
    const/16 v13, 0x5a

    .line 119
    .line 120
    if-eq v10, v13, :cond_6

    .line 121
    .line 122
    const/16 v13, 0x10e

    .line 123
    .line 124
    if-ne v10, v13, :cond_5

    .line 125
    .line 126
    goto :goto_9

    .line 127
    :cond_5
    move v13, v14

    .line 128
    goto :goto_a

    .line 129
    :cond_6
    :goto_9
    move v13, v15

    .line 130
    goto :goto_a

    .line 131
    :cond_7
    move v13, v7

    .line 132
    :goto_a
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->e()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v6, ", target density: "

    .line 137
    .line 138
    const/high16 v22, 0x3f800000    # 1.0f

    .line 139
    .line 140
    const-string v5, ", density: "

    .line 141
    .line 142
    const-string v4, "x"

    .line 143
    .line 144
    move/from16 v23, v9

    .line 145
    .line 146
    const-string v9, "Downsampler"

    .line 147
    .line 148
    move/from16 v24, v11

    .line 149
    .line 150
    const-string v11, "]"

    .line 151
    .line 152
    if-lez v15, :cond_8

    .line 153
    .line 154
    if-gtz v14, :cond_9

    .line 155
    .line 156
    :cond_8
    move-object v8, v4

    .line 157
    move-object v4, v6

    .line 158
    move-object v0, v11

    .line 159
    move/from16 v1, v21

    .line 160
    .line 161
    const/4 v6, 0x3

    .line 162
    goto/16 :goto_19

    .line 163
    .line 164
    :cond_9
    const/16 v1, 0x5a

    .line 165
    .line 166
    if-eq v10, v1, :cond_b

    .line 167
    .line 168
    const/16 v1, 0x10e

    .line 169
    .line 170
    if-ne v10, v1, :cond_a

    .line 171
    .line 172
    goto :goto_c

    .line 173
    :cond_a
    move-object/from16 v19, v5

    .line 174
    .line 175
    move-object/from16 p6, v11

    .line 176
    .line 177
    move v5, v14

    .line 178
    move v11, v15

    .line 179
    :goto_b
    move/from16 v1, v21

    .line 180
    .line 181
    move-object/from16 v21, v6

    .line 182
    .line 183
    goto :goto_d

    .line 184
    :cond_b
    :goto_c
    move-object/from16 v19, v5

    .line 185
    .line 186
    move-object/from16 p6, v11

    .line 187
    .line 188
    move v11, v14

    .line 189
    move v5, v15

    .line 190
    goto :goto_b

    .line 191
    :goto_d
    invoke-virtual {v0, v11, v5, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    const/16 v25, 0x0

    .line 196
    .line 197
    cmpg-float v25, v6, v25

    .line 198
    .line 199
    if-lez v25, :cond_1e

    .line 200
    .line 201
    move/from16 v25, v6

    .line 202
    .line 203
    invoke-virtual {v0, v11, v5, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->a(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    if-eqz v6, :cond_1d

    .line 208
    .line 209
    move/from16 v26, v10

    .line 210
    .line 211
    int-to-float v10, v11

    .line 212
    move/from16 p6, v10

    .line 213
    .line 214
    mul-float v10, v25, p6

    .line 215
    .line 216
    move/from16 v27, v11

    .line 217
    .line 218
    float-to-double v10, v10

    .line 219
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    .line 220
    .line 221
    add-double v10, v10, v28

    .line 222
    .line 223
    double-to-int v10, v10

    .line 224
    int-to-float v11, v5

    .line 225
    move/from16 v30, v5

    .line 226
    .line 227
    mul-float v5, v25, v11

    .line 228
    .line 229
    move/from16 v31, v10

    .line 230
    .line 231
    move/from16 v32, v11

    .line 232
    .line 233
    float-to-double v10, v5

    .line 234
    add-double v10, v10, v28

    .line 235
    .line 236
    double-to-int v5, v10

    .line 237
    div-int v11, v27, v31

    .line 238
    .line 239
    div-int v5, v30, v5

    .line 240
    .line 241
    sget-object v10, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->c:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 242
    .line 243
    if-ne v6, v10, :cond_c

    .line 244
    .line 245
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    goto :goto_e

    .line 250
    :cond_c
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    :goto_e
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 255
    .line 256
    move/from16 v31, v5

    .line 257
    .line 258
    const/16 v5, 0x17

    .line 259
    .line 260
    if-gt v11, v5, :cond_d

    .line 261
    .line 262
    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->k:Ljava/util/Set;

    .line 263
    .line 264
    move-object/from16 v33, v4

    .line 265
    .line 266
    iget-object v4, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 267
    .line 268
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_e

    .line 273
    .line 274
    const/4 v5, 0x1

    .line 275
    goto :goto_f

    .line 276
    :cond_d
    move-object/from16 v33, v4

    .line 277
    .line 278
    :cond_e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    const/4 v5, 0x1

    .line 283
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-ne v6, v10, :cond_f

    .line 288
    .line 289
    int-to-float v5, v4

    .line 290
    div-float v6, v22, v25

    .line 291
    .line 292
    cmpg-float v5, v5, v6

    .line 293
    .line 294
    if-gez v5, :cond_f

    .line 295
    .line 296
    shl-int/lit8 v4, v4, 0x1

    .line 297
    .line 298
    :cond_f
    move v5, v4

    .line 299
    :goto_f
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 300
    .line 301
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 302
    .line 303
    if-ne v7, v4, :cond_10

    .line 304
    .line 305
    const/16 v4, 0x8

    .line 306
    .line 307
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    int-to-float v4, v4

    .line 312
    div-float v10, p6, v4

    .line 313
    .line 314
    float-to-double v6, v10

    .line 315
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 316
    .line 317
    .line 318
    move-result-wide v6

    .line 319
    double-to-int v6, v6

    .line 320
    div-float v11, v32, v4

    .line 321
    .line 322
    float-to-double v10, v11

    .line 323
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 324
    .line 325
    .line 326
    move-result-wide v10

    .line 327
    double-to-int v4, v10

    .line 328
    div-int/lit8 v7, v5, 0x8

    .line 329
    .line 330
    if-lez v7, :cond_17

    .line 331
    .line 332
    div-int/2addr v6, v7

    .line 333
    div-int/2addr v4, v7

    .line 334
    goto/16 :goto_13

    .line 335
    .line 336
    :cond_10
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 337
    .line 338
    if-eq v7, v4, :cond_16

    .line 339
    .line 340
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 341
    .line 342
    if-ne v7, v4, :cond_11

    .line 343
    .line 344
    goto :goto_12

    .line 345
    :cond_11
    invoke-virtual {v7}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_13

    .line 350
    .line 351
    const/16 v4, 0x18

    .line 352
    .line 353
    if-lt v11, v4, :cond_12

    .line 354
    .line 355
    int-to-float v4, v5

    .line 356
    div-float v10, p6, v4

    .line 357
    .line 358
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    div-float v11, v32, v4

    .line 363
    .line 364
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    goto :goto_13

    .line 369
    :cond_12
    int-to-float v4, v5

    .line 370
    div-float v10, p6, v4

    .line 371
    .line 372
    float-to-double v6, v10

    .line 373
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 374
    .line 375
    .line 376
    move-result-wide v6

    .line 377
    double-to-int v6, v6

    .line 378
    div-float v11, v32, v4

    .line 379
    .line 380
    float-to-double v10, v11

    .line 381
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 382
    .line 383
    .line 384
    move-result-wide v10

    .line 385
    :goto_10
    double-to-int v4, v10

    .line 386
    goto :goto_13

    .line 387
    :cond_13
    rem-int v11, v27, v5

    .line 388
    .line 389
    if-nez v11, :cond_14

    .line 390
    .line 391
    rem-int v4, v30, v5

    .line 392
    .line 393
    if-eqz v4, :cond_15

    .line 394
    .line 395
    :cond_14
    const/4 v4, 0x1

    .line 396
    goto :goto_11

    .line 397
    :cond_15
    div-int v6, v27, v5

    .line 398
    .line 399
    div-int v4, v30, v5

    .line 400
    .line 401
    goto :goto_13

    .line 402
    :goto_11
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 403
    .line 404
    invoke-static {v2, v3, v8, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 405
    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    .line 410
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 411
    .line 412
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 413
    .line 414
    filled-new-array {v7, v10}, [I

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    aget v10, v7, v6

    .line 419
    .line 420
    aget v6, v7, v4

    .line 421
    .line 422
    move v4, v6

    .line 423
    move v6, v10

    .line 424
    goto :goto_13

    .line 425
    :cond_16
    :goto_12
    int-to-float v4, v5

    .line 426
    div-float v10, p6, v4

    .line 427
    .line 428
    float-to-double v6, v10

    .line 429
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 430
    .line 431
    .line 432
    move-result-wide v6

    .line 433
    double-to-int v6, v6

    .line 434
    div-float v11, v32, v4

    .line 435
    .line 436
    float-to-double v10, v11

    .line 437
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 438
    .line 439
    .line 440
    move-result-wide v10

    .line 441
    goto :goto_10

    .line 442
    :cond_17
    :goto_13
    invoke-virtual {v0, v6, v4, v1, v13}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->b(IIII)F

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    float-to-double v10, v0

    .line 447
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    .line 448
    .line 449
    cmpg-double v0, v10, v30

    .line 450
    .line 451
    if-gtz v0, :cond_18

    .line 452
    .line 453
    move-wide/from16 v34, v10

    .line 454
    .line 455
    goto :goto_14

    .line 456
    :cond_18
    div-double v34, v30, v10

    .line 457
    .line 458
    :goto_14
    const-wide v36, 0x41dfffffffc00000L    # 2.147483647E9

    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    mul-double v34, v34, v36

    .line 464
    .line 465
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    .line 466
    .line 467
    .line 468
    move-result-wide v7

    .line 469
    long-to-int v7, v7

    .line 470
    move-wide/from16 v34, v10

    .line 471
    .line 472
    int-to-double v10, v7

    .line 473
    mul-double v10, v10, v34

    .line 474
    .line 475
    add-double v10, v10, v28

    .line 476
    .line 477
    double-to-int v8, v10

    .line 478
    int-to-float v10, v8

    .line 479
    int-to-float v7, v7

    .line 480
    div-float/2addr v10, v7

    .line 481
    float-to-double v10, v10

    .line 482
    div-double v10, v34, v10

    .line 483
    .line 484
    int-to-double v7, v8

    .line 485
    mul-double/2addr v10, v7

    .line 486
    add-double v10, v10, v28

    .line 487
    .line 488
    double-to-int v7, v10

    .line 489
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 490
    .line 491
    if-gtz v0, :cond_19

    .line 492
    .line 493
    move-wide/from16 v30, v34

    .line 494
    .line 495
    goto :goto_15

    .line 496
    :cond_19
    div-double v30, v30, v34

    .line 497
    .line 498
    :goto_15
    mul-double v30, v30, v36

    .line 499
    .line 500
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    .line 501
    .line 502
    .line 503
    move-result-wide v7

    .line 504
    long-to-int v0, v7

    .line 505
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 506
    .line 507
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 508
    .line 509
    if-lez v7, :cond_1a

    .line 510
    .line 511
    if-lez v0, :cond_1a

    .line 512
    .line 513
    if-eq v7, v0, :cond_1a

    .line 514
    .line 515
    const/4 v7, 0x1

    .line 516
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 517
    .line 518
    :goto_16
    const/4 v7, 0x2

    .line 519
    goto :goto_17

    .line 520
    :cond_1a
    const/4 v7, 0x0

    .line 521
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 522
    .line 523
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 524
    .line 525
    goto :goto_16

    .line 526
    :goto_17
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_1c

    .line 531
    .line 532
    const-string v0, "Calculate scaling, source: ["

    .line 533
    .line 534
    const-string v7, "], degreesToRotate: "

    .line 535
    .line 536
    move-object/from16 v8, v33

    .line 537
    .line 538
    invoke-static {v0, v15, v14, v8, v7}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    move/from16 v10, v26

    .line 543
    .line 544
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v7, ", target: ["

    .line 548
    .line 549
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v7, "], power of two scaled: ["

    .line 562
    .line 563
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v4, "], exact scale factor: "

    .line 576
    .line 577
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    move/from16 v4, v25

    .line 581
    .line 582
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v4, ", power of 2 sample size: "

    .line 586
    .line 587
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v4, ", adjusted scale factor: "

    .line 594
    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    move-wide/from16 v4, v34

    .line 599
    .line 600
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    move-object/from16 v4, v21

    .line 604
    .line 605
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 609
    .line 610
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    move-object/from16 v5, v19

    .line 614
    .line 615
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 619
    .line 620
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .line 629
    .line 630
    :cond_1b
    :goto_18
    move-object/from16 v6, p0

    .line 631
    .line 632
    goto/16 :goto_1a

    .line 633
    .line 634
    :cond_1c
    move-object/from16 v5, v19

    .line 635
    .line 636
    move-object/from16 v4, v21

    .line 637
    .line 638
    move-object/from16 v8, v33

    .line 639
    .line 640
    goto :goto_18

    .line 641
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 642
    .line 643
    const-string v1, "Cannot round with null rounding"

    .line 644
    .line 645
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    throw v0

    .line 649
    :cond_1e
    move-object v8, v4

    .line 650
    move v4, v6

    .line 651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 652
    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    const-string v5, "Cannot scale with factor: "

    .line 656
    .line 657
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string v4, " from: "

    .line 664
    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    const-string v0, ", source: ["

    .line 672
    .line 673
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v0, "], target: ["

    .line 686
    .line 687
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    move-object/from16 v0, p6

    .line 700
    .line 701
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    throw v2

    .line 712
    :goto_19
    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 713
    .line 714
    .line 715
    move-result v10

    .line 716
    if-eqz v10, :cond_1b

    .line 717
    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    const-string v10, "Unable to determine dimensions for: "

    .line 721
    .line 722
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    const-string v7, " with target ["

    .line 729
    .line 730
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .line 751
    .line 752
    goto :goto_18

    .line 753
    :goto_1a
    iget-object v0, v6, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->e:Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;

    .line 754
    .line 755
    move/from16 v10, v23

    .line 756
    .line 757
    move/from16 v7, v24

    .line 758
    .line 759
    invoke-virtual {v0, v1, v13, v7, v10}, Lcom/bumptech/glide/load/resource/bitmap/HardwareConfigState;->c(IIZZ)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    if-eqz v0, :cond_1f

    .line 764
    .line 765
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->d()Landroid/graphics/Bitmap$Config;

    .line 766
    .line 767
    .line 768
    move-result-object v7

    .line 769
    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 770
    .line 771
    const/4 v7, 0x0

    .line 772
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 773
    .line 774
    goto :goto_1b

    .line 775
    :cond_1f
    const/4 v7, 0x0

    .line 776
    :goto_1b
    if-eqz v0, :cond_21

    .line 777
    .line 778
    :cond_20
    const/4 v7, 0x1

    .line 779
    goto :goto_1e

    .line 780
    :cond_21
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->c:Lcom/bumptech/glide/load/DecodeFormat;

    .line 781
    .line 782
    move-object/from16 v10, p4

    .line 783
    .line 784
    if-eq v10, v0, :cond_24

    .line 785
    .line 786
    :try_start_0
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->e()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 791
    .line 792
    .line 793
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    goto :goto_1c

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const/4 v11, 0x3

    .line 797
    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 798
    .line 799
    .line 800
    move-result v11

    .line 801
    if-eqz v11, :cond_22

    .line 802
    .line 803
    new-instance v11, Ljava/lang/StringBuilder;

    .line 804
    .line 805
    const-string v7, "Cannot determine whether the image has alpha or not from header, format "

    .line 806
    .line 807
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v7

    .line 817
    invoke-static {v9, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    .line 819
    .line 820
    :cond_22
    const/4 v0, 0x0

    .line 821
    :goto_1c
    if-eqz v0, :cond_23

    .line 822
    .line 823
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 824
    .line 825
    goto :goto_1d

    .line 826
    :cond_23
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 827
    .line 828
    :goto_1d
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 829
    .line 830
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 831
    .line 832
    if-ne v0, v7, :cond_20

    .line 833
    .line 834
    const/4 v7, 0x1

    .line 835
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 836
    .line 837
    goto :goto_1e

    .line 838
    :cond_24
    const/4 v7, 0x1

    .line 839
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 840
    .line 841
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 842
    .line 843
    :goto_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 844
    .line 845
    if-ltz v15, :cond_25

    .line 846
    .line 847
    if-ltz v14, :cond_25

    .line 848
    .line 849
    if-eqz p9, :cond_25

    .line 850
    .line 851
    move/from16 p3, v13

    .line 852
    .line 853
    move-object v13, v8

    .line 854
    move/from16 v8, p3

    .line 855
    .line 856
    move v7, v1

    .line 857
    move-object/from16 p3, v12

    .line 858
    .line 859
    goto/16 :goto_20

    .line 860
    .line 861
    :cond_25
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 862
    .line 863
    if-lez v1, :cond_26

    .line 864
    .line 865
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 866
    .line 867
    if-lez v10, :cond_26

    .line 868
    .line 869
    if-eq v1, v10, :cond_26

    .line 870
    .line 871
    move v10, v7

    .line 872
    goto :goto_1f

    .line 873
    :cond_26
    const/4 v10, 0x0

    .line 874
    :goto_1f
    if-eqz v10, :cond_27

    .line 875
    .line 876
    int-to-float v1, v1

    .line 877
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 878
    .line 879
    int-to-float v10, v10

    .line 880
    div-float v22, v1, v10

    .line 881
    .line 882
    :cond_27
    move/from16 v1, v22

    .line 883
    .line 884
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 885
    .line 886
    int-to-float v11, v15

    .line 887
    int-to-float v13, v10

    .line 888
    div-float/2addr v11, v13

    .line 889
    move-object/from16 v33, v8

    .line 890
    .line 891
    float-to-double v7, v11

    .line 892
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 893
    .line 894
    .line 895
    move-result-wide v7

    .line 896
    double-to-int v7, v7

    .line 897
    int-to-float v8, v14

    .line 898
    div-float/2addr v8, v13

    .line 899
    move-object v13, v12

    .line 900
    float-to-double v11, v8

    .line 901
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 902
    .line 903
    .line 904
    move-result-wide v11

    .line 905
    double-to-int v8, v11

    .line 906
    int-to-float v7, v7

    .line 907
    mul-float/2addr v7, v1

    .line 908
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 909
    .line 910
    .line 911
    move-result v7

    .line 912
    int-to-float v8, v8

    .line 913
    mul-float/2addr v8, v1

    .line 914
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 915
    .line 916
    .line 917
    move-result v8

    .line 918
    const/4 v11, 0x2

    .line 919
    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 920
    .line 921
    .line 922
    move-result v12

    .line 923
    if-eqz v12, :cond_28

    .line 924
    .line 925
    const-string v11, "Calculated target ["

    .line 926
    .line 927
    const-string v12, "] for source ["

    .line 928
    .line 929
    move-object/from16 p3, v13

    .line 930
    .line 931
    move-object/from16 v13, v33

    .line 932
    .line 933
    invoke-static {v11, v7, v8, v13, v12}, Landroid/support/v4/media/a;->u(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    move-result-object v11

    .line 937
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    const-string v12, "], sampleSize: "

    .line 947
    .line 948
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    const-string v10, ", targetDensity: "

    .line 955
    .line 956
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 960
    .line 961
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 968
    .line 969
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    const-string v10, ", density multiplier: "

    .line 973
    .line 974
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v1

    .line 984
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    goto :goto_20

    .line 988
    :cond_28
    move-object/from16 p3, v13

    .line 989
    .line 990
    move-object/from16 v13, v33

    .line 991
    .line 992
    :goto_20
    const/16 v1, 0x1a

    .line 993
    .line 994
    const/4 v10, 0x0

    .line 995
    if-lez v7, :cond_2c

    .line 996
    .line 997
    if-lez v8, :cond_2c

    .line 998
    .line 999
    if-lt v0, v1, :cond_2a

    .line 1000
    .line 1001
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1002
    .line 1003
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->d()Landroid/graphics/Bitmap$Config;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v12

    .line 1007
    if-ne v11, v12, :cond_29

    .line 1008
    .line 1009
    goto :goto_22

    .line 1010
    :cond_29
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 1011
    .line 1012
    goto :goto_21

    .line 1013
    :cond_2a
    move-object v11, v10

    .line 1014
    :goto_21
    if-nez v11, :cond_2b

    .line 1015
    .line 1016
    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1017
    .line 1018
    :cond_2b
    move-object/from16 v12, p3

    .line 1019
    .line 1020
    invoke-interface {v12, v7, v8, v11}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v7

    .line 1024
    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1025
    .line 1026
    goto :goto_23

    .line 1027
    :cond_2c
    :goto_22
    move-object/from16 v12, p3

    .line 1028
    .line 1029
    :goto_23
    if-eqz p5, :cond_2f

    .line 1030
    .line 1031
    const/16 v7, 0x1c

    .line 1032
    .line 1033
    if-lt v0, v7, :cond_30

    .line 1034
    .line 1035
    sget-object v0, Lcom/bumptech/glide/load/PreferredColorSpace;->c:Lcom/bumptech/glide/load/PreferredColorSpace;

    .line 1036
    .line 1037
    move-object/from16 v1, p5

    .line 1038
    .line 1039
    if-ne v1, v0, :cond_2d

    .line 1040
    .line 1041
    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 1042
    .line 1043
    if-eqz v0, :cond_2d

    .line 1044
    .line 1045
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v0

    .line 1049
    if-eqz v0, :cond_2d

    .line 1050
    .line 1051
    const/4 v11, 0x1

    .line 1052
    goto :goto_24

    .line 1053
    :cond_2d
    const/4 v11, 0x0

    .line 1054
    :goto_24
    if-eqz v11, :cond_2e

    .line 1055
    .line 1056
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->e()Landroid/graphics/ColorSpace$Named;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    goto :goto_25

    .line 1061
    :cond_2e
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->k()Landroid/graphics/ColorSpace$Named;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    :goto_25
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    invoke-static {v3, v0}, Landroidx/privacysandbox/ads/adservices/topics/a;->i(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1070
    .line 1071
    .line 1072
    :cond_2f
    :goto_26
    move-object/from16 v8, p10

    .line 1073
    .line 1074
    goto :goto_27

    .line 1075
    :cond_30
    if-lt v0, v1, :cond_2f

    .line 1076
    .line 1077
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/topics/a;->k()Landroid/graphics/ColorSpace$Named;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-static {v3, v0}, Landroidx/privacysandbox/ads/adservices/topics/a;->i(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_26

    .line 1089
    :goto_27
    invoke-static {v2, v3, v8, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->c(Lcom/bumptech/glide/load/resource/bitmap/ImageReader;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    invoke-interface {v8, v0, v12}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 1094
    .line 1095
    .line 1096
    const/4 v7, 0x2

    .line 1097
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-eqz v1, :cond_31

    .line 1102
    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    const-string v2, "Decoded "

    .line 1106
    .line 1107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    const-string v2, " from ["

    .line 1118
    .line 1119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    const-string v2, "] "

    .line 1132
    .line 1133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    move-object/from16 v2, v20

    .line 1137
    .line 1138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    const-string v2, " with inBitmap "

    .line 1142
    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1147
    .line 1148
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    const-string v2, " for ["

    .line 1156
    .line 1157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    move/from16 v2, p7

    .line 1161
    .line 1162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    move/from16 v7, p8

    .line 1169
    .line 1170
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    const-string v2, "], sample size: "

    .line 1174
    .line 1175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    .line 1178
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1179
    .line 1180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 1187
    .line 1188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    .line 1194
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 1195
    .line 1196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    const-string v2, ", thread: "

    .line 1200
    .line 1201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v2

    .line 1208
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    const-string v2, ", duration: "

    .line 1216
    .line 1217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    .line 1220
    invoke-static/range {v16 .. v17}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v2

    .line 1224
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    .line 1233
    .line 1234
    :cond_31
    if-eqz v0, :cond_32

    .line 1235
    .line 1236
    iget-object v1, v6, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->b:Landroid/util/DisplayMetrics;

    .line 1237
    .line 1238
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1239
    .line 1240
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1241
    .line 1242
    .line 1243
    move/from16 v1, v18

    .line 1244
    .line 1245
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v10

    .line 1249
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v1

    .line 1253
    if-nez v1, :cond_32

    .line 1254
    .line 1255
    invoke-interface {v12, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->d(Landroid/graphics/Bitmap;)V

    .line 1256
    .line 1257
    .line 1258
    :cond_32
    return-object v10

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
