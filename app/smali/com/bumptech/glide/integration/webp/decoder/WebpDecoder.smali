.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:Lcom/bumptech/glide/integration/webp/WebpImage;

.field public final c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field public d:I

.field public final e:[I

.field public final f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Landroid/graphics/Paint;

.field public final k:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field public final l:Landroid/graphics/Bitmap$Config;

.field public final m:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d:I

    .line 6
    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->l:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameDurations()[I

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->e:[I

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    new-array p1, p1, [Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    move v0, p1

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ge v0, v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameInfo(I)Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v1, v0

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    const-string v2, "WebpDecoder"

    .line 51
    .line 52
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "mFrameInfos: "

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 66
    .line 67
    aget-object v3, v3, v0

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->k:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 87
    .line 88
    new-instance v0, Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->j:Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 104
    .line 105
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 106
    .line 107
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    .line 112
    .line 113
    iget-object p5, p5, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 114
    .line 115
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->g:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 116
    .line 117
    if-ne p5, v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 p2, 0x5

    .line 125
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    :goto_1
    new-instance p5, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;

    .line 130
    .line 131
    invoke-direct {p5, p0, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;I)V

    .line 132
    .line 133
    .line 134
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->m:Landroid/util/LruCache;

    .line 135
    .line 136
    new-instance p2, Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 137
    .line 138
    invoke-direct {p2}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    .line 139
    .line 140
    .line 141
    if-lez p4, :cond_3

    .line 142
    .line 143
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->a:Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    .line 155
    .line 156
    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->g:I

    .line 157
    .line 158
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    div-int/2addr p1, p2

    .line 165
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->i:I

    .line 166
    .line 167
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    div-int/2addr p1, p2

    .line 174
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->h:I

    .line 175
    .line 176
    return-void

    .line 177
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    const-string p2, "Sample size must be >=0, not: "

    .line 180
    .line 181
    invoke-static {p4, p2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d:I

    .line 4
    .line 5
    iget v2, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->h:I

    .line 6
    .line 7
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 10
    .line 11
    iget v5, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->i:I

    .line 12
    .line 13
    invoke-interface {v4, v5, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 19
    .line 20
    .line 21
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v6, 0x18

    .line 24
    .line 25
    if-lt v5, v6, :cond_0

    .line 26
    .line 27
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-instance v5, Landroid/graphics/Canvas;

    .line 33
    .line 34
    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 38
    .line 39
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    .line 41
    .line 42
    iget-object v6, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->k:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 43
    .line 44
    iget-object v6, v6, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->a:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 45
    .line 46
    sget-object v7, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->c:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    iget-object v9, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->m:Landroid/util/LruCache;

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x3

    .line 53
    const-string v12, "WebpDecoder"

    .line 54
    .line 55
    if-ne v6, v7, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v9, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/graphics/Bitmap;

    .line 67
    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v4, "hit frame bitmap from memory cache, frameNumber="

    .line 79
    .line 80
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getDensity()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f(I)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    iget-object v7, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 109
    .line 110
    if-nez v6, :cond_9

    .line 111
    .line 112
    add-int/lit8 v6, v1, -0x1

    .line 113
    .line 114
    :goto_1
    if-ltz v6, :cond_8

    .line 115
    .line 116
    aget-object v13, v7, v6

    .line 117
    .line 118
    iget-boolean v14, v13, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->h:Z

    .line 119
    .line 120
    if-eqz v14, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->e(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    if-nez v14, :cond_4

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    invoke-virtual {v9, v14}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    check-cast v14, Landroid/graphics/Bitmap;

    .line 141
    .line 142
    if-eqz v14, :cond_6

    .line 143
    .line 144
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    if-nez v15, :cond_6

    .line 149
    .line 150
    invoke-virtual {v5}, Landroid/graphics/Canvas;->getDensity()I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v14, v10, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v14, v13, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->h:Z

    .line 161
    .line 162
    if-eqz v14, :cond_4

    .line 163
    .line 164
    invoke-virtual {v0, v5, v13}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v0, v6}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f(I)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    add-int/lit8 v6, v6, -0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    move v6, v3

    .line 179
    goto :goto_4

    .line 180
    :cond_9
    move v6, v1

    .line 181
    :goto_4
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    if-eqz v13, :cond_a

    .line 186
    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v14, "frameNumber="

    .line 190
    .line 191
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v14, ", nextIndex="

    .line 198
    .line 199
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_5
    const-string v13, ", dispose="

    .line 213
    .line 214
    const-string v14, ", blend="

    .line 215
    .line 216
    const-string v15, "renderFrame, index="

    .line 217
    .line 218
    if-ge v6, v1, :cond_e

    .line 219
    .line 220
    aget-object v8, v7, v6

    .line 221
    .line 222
    iget-boolean v10, v8, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->g:Z

    .line 223
    .line 224
    iget-boolean v3, v8, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->h:Z

    .line 225
    .line 226
    if-nez v10, :cond_b

    .line 227
    .line 228
    invoke-virtual {v0, v5, v8}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 229
    .line 230
    .line 231
    :cond_b
    invoke-virtual {v0, v6, v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->g(ILandroid/graphics/Canvas;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_c

    .line 239
    .line 240
    invoke-static {v6, v15, v14}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    iget-boolean v14, v8, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->g:Z

    .line 245
    .line 246
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    :cond_c
    if-eqz v3, :cond_d

    .line 263
    .line 264
    invoke-virtual {v0, v5, v8}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 265
    .line 266
    .line 267
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    const/4 v8, 0x0

    .line 271
    const/4 v10, 0x0

    .line 272
    goto :goto_5

    .line 273
    :cond_e
    aget-object v3, v7, v1

    .line 274
    .line 275
    iget-boolean v6, v3, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->g:Z

    .line 276
    .line 277
    if-nez v6, :cond_f

    .line 278
    .line 279
    invoke-virtual {v0, v5, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 280
    .line 281
    .line 282
    :cond_f
    invoke-virtual {v0, v1, v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->g(ILandroid/graphics/Canvas;)V

    .line 283
    .line 284
    .line 285
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_10

    .line 290
    .line 291
    invoke-static {v1, v15, v14}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    iget-boolean v6, v3, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->g:Z

    .line 296
    .line 297
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-boolean v3, v3, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->h:Z

    .line 304
    .line 305
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v9, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-interface {v4, v3, v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    const/4 v4, 0x0

    .line 339
    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 347
    .line 348
    .line 349
    new-instance v5, Landroid/graphics/Canvas;

    .line 350
    .line 351
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 352
    .line 353
    .line 354
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 355
    .line 356
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 357
    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    const/4 v6, 0x0

    .line 361
    invoke-virtual {v5, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v9, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    return-object v2
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    rem-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->d:I

    .line 13
    .line 14
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->dispose()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->m:Landroid/util/LruCache;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->a:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V
    .locals 9

    .line 1
    iget v0, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->b:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->g:I

    .line 4
    .line 5
    div-int v2, v0, v1

    .line 6
    .line 7
    int-to-float v4, v2

    .line 8
    iget v2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->c:I

    .line 9
    .line 10
    div-int v3, v2, v1

    .line 11
    .line 12
    int-to-float v5, v3

    .line 13
    iget v3, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->d:I

    .line 14
    .line 15
    add-int/2addr v0, v3

    .line 16
    div-int/2addr v0, v1

    .line 17
    int-to-float v6, v0

    .line 18
    iget p2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->e:I

    .line 19
    .line 20
    add-int/2addr v2, p2

    .line 21
    div-int/2addr v2, v1

    .line 22
    int-to-float v7, v2

    .line 23
    iget-object v8, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->j:Landroid/graphics/Paint;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->c:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->d:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->e:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final f(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 6
    .line 7
    aget-object v2, v1, p1

    .line 8
    .line 9
    sub-int/2addr p1, v0

    .line 10
    aget-object p1, v1, p1

    .line 11
    .line 12
    iget-boolean v1, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->g:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->e(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-boolean v1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->h:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->e(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public final g(ILandroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 2
    .line 3
    const-string v1, "Rendering of frame failed. Frame number: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->f:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    .line 6
    .line 7
    aget-object v2, v2, p1

    .line 8
    .line 9
    iget v3, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->d:I

    .line 10
    .line 11
    iget v4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->g:I

    .line 12
    .line 13
    div-int/2addr v3, v4

    .line 14
    iget v5, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->e:I

    .line 15
    .line 16
    div-int/2addr v5, v4

    .line 17
    iget v6, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->b:I

    .line 18
    .line 19
    div-int/2addr v6, v4

    .line 20
    iget v2, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->c:I

    .line 21
    .line 22
    div-int/2addr v2, v4

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->b:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :try_start_0
    iget-object v7, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->l:Landroid/graphics/Bitmap$Config;

    .line 35
    .line 36
    invoke-interface {v0, v3, v5, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/4 v8, 0x0

    .line 41
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getDensity()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3, v5, v7}, Lcom/bumptech/glide/integration/webp/WebpFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    int-to-float v3, v6

    .line 55
    int-to-float v2, v2

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p2, v7, v3, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    :try_start_1
    const-string p2, "WebpDecoder"

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_0
    invoke-virtual {v4}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    :goto_1
    return-void
.end method
