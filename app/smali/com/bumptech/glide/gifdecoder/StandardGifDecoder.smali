.class public Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public final j:[I

.field public k:I

.field public l:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field public m:Landroid/graphics/Bitmap;

.field public final n:Z

.field public o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    .line 9
    .line 10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 15
    .line 16
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 22
    .line 23
    const-string p1, "Sample size must be >=0, not: "

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    if-lez p4, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p4, 0x0

    .line 33
    iput p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 34
    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iput-object p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iput-boolean p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    .line 57
    .line 58
    iget-object p3, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    :cond_0
    if-ge p4, v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    add-int/lit8 p4, p4, 0x1

    .line 71
    .line 72
    check-cast v1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 73
    .line 74
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    if-ne v1, v2, :cond_0

    .line 78
    .line 79
    const/4 p3, 0x1

    .line 80
    iput-boolean p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 86
    .line 87
    iget p3, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->f:I

    .line 88
    .line 89
    div-int p4, p3, p1

    .line 90
    .line 91
    iput p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 92
    .line 93
    iget p2, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->g:I

    .line 94
    .line 95
    div-int p1, p2, p1

    .line 96
    .line 97
    iput p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 98
    .line 99
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 100
    .line 101
    mul-int/2addr p3, p2

    .line 102
    invoke-interface {p1, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->e(I)[B

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 107
    .line 108
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 109
    .line 110
    iget p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 111
    .line 112
    iget p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 113
    .line 114
    mul-int/2addr p2, p3

    .line 115
    invoke-interface {p1, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->b(I)[I

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 123
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-string v0, "Unable to decode frame, status="

    .line 2
    .line 3
    const-string v1, "No valid color table found for frame #"

    .line 4
    .line 5
    const-string v2, "Unable to decode frame, frameCount="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 9
    .line 10
    iget v3, v3, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    .line 11
    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x1

    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 17
    .line 18
    if-gez v3, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :goto_0
    const-string v3, "StandardGifDecoder"

    .line 25
    .line 26
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const-string v3, "StandardGifDecoder"

    .line 33
    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 40
    .line 41
    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    .line 42
    .line 43
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", framePointer="

    .line 47
    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 52
    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_1
    iput v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 64
    .line 65
    :cond_2
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    if-eq v2, v5, :cond_a

    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 77
    .line 78
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 83
    .line 84
    const/16 v7, 0xff

    .line 85
    .line 86
    invoke-interface {v2, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->e(I)[B

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    .line 91
    .line 92
    :cond_4
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 93
    .line 94
    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    .line 95
    .line 96
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 103
    .line 104
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 105
    .line 106
    sub-int/2addr v7, v5

    .line 107
    if-ltz v7, :cond_5

    .line 108
    .line 109
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 110
    .line 111
    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move-object v7, v3

    .line 121
    :goto_1
    iget-object v8, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    .line 122
    .line 123
    if-eqz v8, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 127
    .line 128
    iget-object v8, v8, Lcom/bumptech/glide/gifdecoder/GifHeader;->a:[I

    .line 129
    .line 130
    :goto_2
    iput-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 131
    .line 132
    if-nez v8, :cond_8

    .line 133
    .line 134
    const-string v0, "StandardGifDecoder"

    .line 135
    .line 136
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    const-string v0, "StandardGifDecoder"

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_7
    iput v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .line 163
    monitor-exit p0

    .line 164
    return-object v3

    .line 165
    :cond_8
    :try_start_1
    iget-boolean v1, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    .line 166
    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    .line 170
    .line 171
    array-length v3, v8

    .line 172
    invoke-static {v8, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    .line 176
    .line 177
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 178
    .line 179
    iget v3, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    .line 180
    .line 181
    aput v0, v1, v3

    .line 182
    .line 183
    iget v0, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    .line 184
    .line 185
    if-ne v0, v6, :cond_9

    .line 186
    .line 187
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 188
    .line 189
    if-nez v0, :cond_9

    .line 190
    .line 191
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 194
    .line 195
    :cond_9
    invoke-virtual {p0, v2, v7}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    .line 200
    return-object v0

    .line 201
    :cond_a
    :goto_3
    :try_start_2
    const-string v1, "StandardGifDecoder"

    .line 202
    .line 203
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    const-string v1, "StandardGifDecoder"

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .line 227
    .line 228
    :cond_b
    monitor-exit p0

    .line 229
    return-object v3

    .line 230
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 6
    .line 7
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    .line 8
    .line 9
    rem-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 11
    .line 12
    return-void
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->t:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_1
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 18
    .line 19
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 20
    .line 21
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 22
    .line 23
    invoke-interface {v3, v1, v2, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 2
    .line 3
    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-ltz v2, :cond_1

    .line 13
    .line 14
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 23
    .line 24
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->i:I

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public final e(Landroid/graphics/Bitmap$Config;)V
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Unsupported format: "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", must be one of "

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " or "

    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v2

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->t:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    return-void
.end method

.method public final f(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-interface {v3, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->c(Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v13, 0x3

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget v5, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    .line 31
    .line 32
    if-ne v5, v13, :cond_2

    .line 33
    .line 34
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 v14, 0x2

    .line 42
    if-eqz v2, :cond_7

    .line 43
    .line 44
    iget v5, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    .line 45
    .line 46
    if-lez v5, :cond_7

    .line 47
    .line 48
    if-ne v5, v14, :cond_6

    .line 49
    .line 50
    iget-boolean v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    .line 51
    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 55
    .line 56
    iget v7, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->k:I

    .line 57
    .line 58
    iget-object v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    .line 59
    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->j:I

    .line 63
    .line 64
    iget v8, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    .line 65
    .line 66
    if-ne v5, v8, :cond_4

    .line 67
    .line 68
    :cond_3
    move v7, v4

    .line 69
    :cond_4
    iget v5, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    .line 70
    .line 71
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 72
    .line 73
    div-int/2addr v5, v8

    .line 74
    iget v9, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    .line 75
    .line 76
    div-int/2addr v9, v8

    .line 77
    iget v10, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 78
    .line 79
    div-int/2addr v10, v8

    .line 80
    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    .line 81
    .line 82
    div-int/2addr v2, v8

    .line 83
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 84
    .line 85
    mul-int/2addr v9, v8

    .line 86
    add-int/2addr v9, v2

    .line 87
    mul-int/2addr v5, v8

    .line 88
    add-int/2addr v5, v9

    .line 89
    :goto_0
    if-ge v9, v5, :cond_7

    .line 90
    .line 91
    add-int v2, v9, v10

    .line 92
    .line 93
    move v8, v9

    .line 94
    :goto_1
    if-ge v8, v2, :cond_5

    .line 95
    .line 96
    aput v7, v6, v8

    .line 97
    .line 98
    add-int/lit8 v8, v8, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 102
    .line 103
    add-int/2addr v9, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    if-ne v5, v13, :cond_7

    .line 106
    .line 107
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 108
    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    move v11, v8

    .line 119
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->j:I

    .line 125
    .line 126
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    .line 128
    .line 129
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 130
    .line 131
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    .line 132
    .line 133
    mul-int/2addr v2, v5

    .line 134
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 135
    .line 136
    if-eqz v5, :cond_8

    .line 137
    .line 138
    array-length v5, v5

    .line 139
    if-ge v5, v2, :cond_9

    .line 140
    .line 141
    :cond_8
    invoke-interface {v3, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->e(I)[B

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 146
    .line 147
    :cond_9
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 148
    .line 149
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    .line 150
    .line 151
    const/16 v7, 0x1000

    .line 152
    .line 153
    if-nez v5, :cond_a

    .line 154
    .line 155
    new-array v5, v7, [S

    .line 156
    .line 157
    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    .line 158
    .line 159
    :cond_a
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    .line 160
    .line 161
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    .line 162
    .line 163
    if-nez v8, :cond_b

    .line 164
    .line 165
    new-array v8, v7, [B

    .line 166
    .line 167
    iput-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    .line 168
    .line 169
    :cond_b
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    .line 170
    .line 171
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    .line 172
    .line 173
    if-nez v9, :cond_c

    .line 174
    .line 175
    const/16 v9, 0x1001

    .line 176
    .line 177
    new-array v9, v9, [B

    .line 178
    .line 179
    iput-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    .line 180
    .line 181
    :cond_c
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    .line 182
    .line 183
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    and-int/lit16 v10, v10, 0xff

    .line 190
    .line 191
    const/4 v11, 0x1

    .line 192
    shl-int v12, v11, v10

    .line 193
    .line 194
    add-int/lit8 v15, v12, 0x1

    .line 195
    .line 196
    add-int/lit8 v16, v12, 0x2

    .line 197
    .line 198
    add-int/2addr v10, v11

    .line 199
    shl-int v17, v11, v10

    .line 200
    .line 201
    add-int/lit8 v17, v17, -0x1

    .line 202
    .line 203
    move v14, v4

    .line 204
    :goto_2
    if-ge v14, v12, :cond_d

    .line 205
    .line 206
    aput-short v4, v5, v14

    .line 207
    .line 208
    move/from16 p2, v11

    .line 209
    .line 210
    int-to-byte v11, v14

    .line 211
    aput-byte v11, v8, v14

    .line 212
    .line 213
    add-int/lit8 v14, v14, 0x1

    .line 214
    .line 215
    move/from16 v11, p2

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_d
    move/from16 p2, v11

    .line 219
    .line 220
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    .line 221
    .line 222
    move v7, v4

    .line 223
    move/from16 v19, v7

    .line 224
    .line 225
    move/from16 v20, v19

    .line 226
    .line 227
    move/from16 v21, v20

    .line 228
    .line 229
    move/from16 v22, v21

    .line 230
    .line 231
    move/from16 v23, v22

    .line 232
    .line 233
    move/from16 v28, v23

    .line 234
    .line 235
    move/from16 v29, v28

    .line 236
    .line 237
    move/from16 v26, v10

    .line 238
    .line 239
    move/from16 v24, v16

    .line 240
    .line 241
    move/from16 v25, v17

    .line 242
    .line 243
    const/16 v27, -0x1

    .line 244
    .line 245
    :goto_3
    const/16 v30, 0x8

    .line 246
    .line 247
    if-ge v7, v2, :cond_19

    .line 248
    .line 249
    if-nez v19, :cond_10

    .line 250
    .line 251
    const/16 v31, -0x1

    .line 252
    .line 253
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    and-int/lit16 v14, v14, 0xff

    .line 260
    .line 261
    if-gtz v14, :cond_e

    .line 262
    .line 263
    move-object/from16 v32, v5

    .line 264
    .line 265
    move-object/from16 v33, v6

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_e
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    .line 269
    .line 270
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    .line 271
    .line 272
    move-object/from16 v32, v5

    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/nio/Buffer;->remaining()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    move-object/from16 v33, v6

    .line 283
    .line 284
    const/4 v6, 0x0

    .line 285
    invoke-virtual {v13, v4, v6, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    .line 288
    :goto_4
    if-gtz v14, :cond_f

    .line 289
    .line 290
    const/4 v4, 0x3

    .line 291
    iput v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    .line 292
    .line 293
    const/4 v6, 0x0

    .line 294
    :goto_5
    move/from16 v4, v23

    .line 295
    .line 296
    goto/16 :goto_c

    .line 297
    .line 298
    :cond_f
    move/from16 v19, v14

    .line 299
    .line 300
    const/16 v20, 0x0

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_10
    move-object/from16 v32, v5

    .line 304
    .line 305
    move-object/from16 v33, v6

    .line 306
    .line 307
    const/16 v31, -0x1

    .line 308
    .line 309
    :goto_6
    aget-byte v4, v11, v20

    .line 310
    .line 311
    and-int/lit16 v4, v4, 0xff

    .line 312
    .line 313
    shl-int v4, v4, v21

    .line 314
    .line 315
    add-int v22, v22, v4

    .line 316
    .line 317
    add-int/lit8 v21, v21, 0x8

    .line 318
    .line 319
    add-int/lit8 v20, v20, 0x1

    .line 320
    .line 321
    add-int/lit8 v19, v19, -0x1

    .line 322
    .line 323
    move/from16 v4, v21

    .line 324
    .line 325
    move/from16 v5, v24

    .line 326
    .line 327
    move/from16 v6, v26

    .line 328
    .line 329
    move/from16 v13, v27

    .line 330
    .line 331
    move/from16 v14, v28

    .line 332
    .line 333
    :goto_7
    move/from16 v21, v4

    .line 334
    .line 335
    if-lt v4, v6, :cond_18

    .line 336
    .line 337
    and-int v4, v22, v25

    .line 338
    .line 339
    shr-int v22, v22, v6

    .line 340
    .line 341
    sub-int v21, v21, v6

    .line 342
    .line 343
    if-ne v4, v12, :cond_11

    .line 344
    .line 345
    move v6, v10

    .line 346
    move/from16 v5, v16

    .line 347
    .line 348
    move/from16 v25, v17

    .line 349
    .line 350
    move/from16 v4, v21

    .line 351
    .line 352
    move/from16 v13, v31

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_11
    if-ne v4, v15, :cond_12

    .line 356
    .line 357
    move/from16 v24, v5

    .line 358
    .line 359
    move/from16 v26, v6

    .line 360
    .line 361
    move/from16 v27, v13

    .line 362
    .line 363
    move/from16 v28, v14

    .line 364
    .line 365
    move-object/from16 v5, v32

    .line 366
    .line 367
    move-object/from16 v6, v33

    .line 368
    .line 369
    const/4 v4, 0x0

    .line 370
    const/4 v13, 0x3

    .line 371
    goto :goto_3

    .line 372
    :cond_12
    move/from16 v24, v6

    .line 373
    .line 374
    move/from16 v6, v31

    .line 375
    .line 376
    if-ne v13, v6, :cond_13

    .line 377
    .line 378
    aget-byte v6, v8, v4

    .line 379
    .line 380
    aput-byte v6, v3, v23

    .line 381
    .line 382
    add-int/lit8 v23, v23, 0x1

    .line 383
    .line 384
    add-int/lit8 v7, v7, 0x1

    .line 385
    .line 386
    move v13, v4

    .line 387
    move v14, v13

    .line 388
    move/from16 v4, v21

    .line 389
    .line 390
    move/from16 v6, v24

    .line 391
    .line 392
    :goto_8
    const/16 v31, -0x1

    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_13
    if-lt v4, v5, :cond_14

    .line 396
    .line 397
    int-to-byte v6, v14

    .line 398
    aput-byte v6, v9, v29

    .line 399
    .line 400
    add-int/lit8 v29, v29, 0x1

    .line 401
    .line 402
    move v6, v13

    .line 403
    goto :goto_9

    .line 404
    :cond_14
    move v6, v4

    .line 405
    :goto_9
    if-lt v6, v12, :cond_15

    .line 406
    .line 407
    aget-byte v14, v8, v6

    .line 408
    .line 409
    aput-byte v14, v9, v29

    .line 410
    .line 411
    add-int/lit8 v29, v29, 0x1

    .line 412
    .line 413
    aget-short v6, v32, v6

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_15
    aget-byte v6, v8, v6

    .line 417
    .line 418
    and-int/lit16 v14, v6, 0xff

    .line 419
    .line 420
    int-to-byte v6, v14

    .line 421
    aput-byte v6, v3, v23

    .line 422
    .line 423
    :goto_a
    add-int/lit8 v23, v23, 0x1

    .line 424
    .line 425
    add-int/lit8 v7, v7, 0x1

    .line 426
    .line 427
    if-lez v29, :cond_16

    .line 428
    .line 429
    add-int/lit8 v29, v29, -0x1

    .line 430
    .line 431
    aget-byte v26, v9, v29

    .line 432
    .line 433
    aput-byte v26, v3, v23

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_16
    move/from16 v26, v4

    .line 437
    .line 438
    const/16 v4, 0x1000

    .line 439
    .line 440
    if-ge v5, v4, :cond_17

    .line 441
    .line 442
    int-to-short v13, v13

    .line 443
    aput-short v13, v32, v5

    .line 444
    .line 445
    aput-byte v6, v8, v5

    .line 446
    .line 447
    add-int/lit8 v5, v5, 0x1

    .line 448
    .line 449
    and-int v6, v5, v25

    .line 450
    .line 451
    if-nez v6, :cond_17

    .line 452
    .line 453
    if-ge v5, v4, :cond_17

    .line 454
    .line 455
    add-int/lit8 v6, v24, 0x1

    .line 456
    .line 457
    add-int v25, v25, v5

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :cond_17
    move/from16 v6, v24

    .line 461
    .line 462
    :goto_b
    move/from16 v4, v21

    .line 463
    .line 464
    move/from16 v13, v26

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_18
    move/from16 v24, v6

    .line 468
    .line 469
    move/from16 v27, v13

    .line 470
    .line 471
    move/from16 v28, v14

    .line 472
    .line 473
    move/from16 v26, v24

    .line 474
    .line 475
    move-object/from16 v6, v33

    .line 476
    .line 477
    const/4 v4, 0x0

    .line 478
    const/4 v13, 0x3

    .line 479
    move/from16 v24, v5

    .line 480
    .line 481
    move-object/from16 v5, v32

    .line 482
    .line 483
    goto/16 :goto_3

    .line 484
    .line 485
    :cond_19
    move-object/from16 v33, v6

    .line 486
    .line 487
    move v6, v4

    .line 488
    goto/16 :goto_5

    .line 489
    .line 490
    :goto_c
    invoke-static {v3, v4, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 491
    .line 492
    .line 493
    iget-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->e:Z

    .line 494
    .line 495
    if-nez v2, :cond_24

    .line 496
    .line 497
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 498
    .line 499
    move/from16 v3, p2

    .line 500
    .line 501
    if-eq v2, v3, :cond_1a

    .line 502
    .line 503
    goto/16 :goto_12

    .line 504
    .line 505
    :cond_1a
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    .line 506
    .line 507
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    .line 508
    .line 509
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 510
    .line 511
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    .line 512
    .line 513
    iget v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 514
    .line 515
    if-nez v7, :cond_1b

    .line 516
    .line 517
    const/4 v7, 0x1

    .line 518
    goto :goto_d

    .line 519
    :cond_1b
    move v7, v6

    .line 520
    :goto_d
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 521
    .line 522
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 523
    .line 524
    move v10, v6

    .line 525
    const/4 v11, -0x1

    .line 526
    :goto_e
    if-ge v10, v2, :cond_20

    .line 527
    .line 528
    add-int v12, v10, v3

    .line 529
    .line 530
    iget v13, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 531
    .line 532
    mul-int/2addr v12, v13

    .line 533
    add-int v14, v12, v5

    .line 534
    .line 535
    add-int v15, v14, v4

    .line 536
    .line 537
    add-int/2addr v12, v13

    .line 538
    if-ge v12, v15, :cond_1c

    .line 539
    .line 540
    move v15, v12

    .line 541
    :cond_1c
    iget v12, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 542
    .line 543
    mul-int/2addr v12, v10

    .line 544
    :goto_f
    if-ge v14, v15, :cond_1f

    .line 545
    .line 546
    aget-byte v13, v8, v12

    .line 547
    .line 548
    and-int/lit16 v6, v13, 0xff

    .line 549
    .line 550
    if-eq v6, v11, :cond_1e

    .line 551
    .line 552
    aget v6, v9, v6

    .line 553
    .line 554
    if-eqz v6, :cond_1d

    .line 555
    .line 556
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    .line 557
    .line 558
    aput v6, v13, v14

    .line 559
    .line 560
    goto :goto_10

    .line 561
    :cond_1d
    move v11, v13

    .line 562
    :cond_1e
    :goto_10
    add-int/lit8 v12, v12, 0x1

    .line 563
    .line 564
    add-int/lit8 v14, v14, 0x1

    .line 565
    .line 566
    const/4 v6, 0x0

    .line 567
    goto :goto_f

    .line 568
    :cond_1f
    add-int/lit8 v10, v10, 0x1

    .line 569
    .line 570
    const/4 v6, 0x0

    .line 571
    goto :goto_e

    .line 572
    :cond_20
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 573
    .line 574
    if-eqz v2, :cond_21

    .line 575
    .line 576
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    if-nez v2, :cond_22

    .line 581
    .line 582
    :cond_21
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 583
    .line 584
    if-nez v2, :cond_23

    .line 585
    .line 586
    if-eqz v7, :cond_23

    .line 587
    .line 588
    const/4 v6, -0x1

    .line 589
    if-eq v11, v6, :cond_23

    .line 590
    .line 591
    :cond_22
    const/4 v4, 0x1

    .line 592
    goto :goto_11

    .line 593
    :cond_23
    const/4 v4, 0x0

    .line 594
    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 599
    .line 600
    goto/16 :goto_22

    .line 601
    .line 602
    :cond_24
    :goto_12
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    .line 603
    .line 604
    iget v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 605
    .line 606
    div-int/2addr v2, v3

    .line 607
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    .line 608
    .line 609
    div-int/2addr v4, v3

    .line 610
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 611
    .line 612
    div-int/2addr v5, v3

    .line 613
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    .line 614
    .line 615
    div-int/2addr v6, v3

    .line 616
    iget v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    .line 617
    .line 618
    if-nez v7, :cond_25

    .line 619
    .line 620
    const/4 v7, 0x1

    .line 621
    goto :goto_13

    .line 622
    :cond_25
    const/4 v7, 0x0

    .line 623
    :goto_13
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 624
    .line 625
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 626
    .line 627
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 628
    .line 629
    move-object v13, v10

    .line 630
    move/from16 v14, v30

    .line 631
    .line 632
    const/4 v10, 0x0

    .line 633
    const/4 v11, 0x1

    .line 634
    const/4 v12, 0x0

    .line 635
    :goto_14
    if-ge v12, v2, :cond_3b

    .line 636
    .line 637
    iget-boolean v15, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->e:Z

    .line 638
    .line 639
    if-eqz v15, :cond_2a

    .line 640
    .line 641
    if-lt v10, v2, :cond_29

    .line 642
    .line 643
    add-int/lit8 v11, v11, 0x1

    .line 644
    .line 645
    const/4 v15, 0x2

    .line 646
    if-eq v11, v15, :cond_28

    .line 647
    .line 648
    const/4 v15, 0x3

    .line 649
    if-eq v11, v15, :cond_27

    .line 650
    .line 651
    const/4 v15, 0x4

    .line 652
    if-eq v11, v15, :cond_26

    .line 653
    .line 654
    goto :goto_15

    .line 655
    :cond_26
    const/4 v10, 0x1

    .line 656
    const/4 v14, 0x2

    .line 657
    goto :goto_15

    .line 658
    :cond_27
    const/4 v15, 0x4

    .line 659
    move v14, v15

    .line 660
    const/4 v10, 0x2

    .line 661
    goto :goto_15

    .line 662
    :cond_28
    const/4 v15, 0x4

    .line 663
    move v10, v15

    .line 664
    :cond_29
    :goto_15
    add-int v15, v10, v14

    .line 665
    .line 666
    goto :goto_16

    .line 667
    :cond_2a
    move v15, v10

    .line 668
    move v10, v12

    .line 669
    :goto_16
    add-int/2addr v10, v4

    .line 670
    move/from16 v16, v2

    .line 671
    .line 672
    const/4 v2, 0x1

    .line 673
    if-ne v3, v2, :cond_2b

    .line 674
    .line 675
    const/16 v17, 0x1

    .line 676
    .line 677
    goto :goto_17

    .line 678
    :cond_2b
    const/16 v17, 0x0

    .line 679
    .line 680
    :goto_17
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 681
    .line 682
    if-ge v10, v2, :cond_3a

    .line 683
    .line 684
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 685
    .line 686
    mul-int/2addr v10, v2

    .line 687
    add-int v18, v10, v6

    .line 688
    .line 689
    move/from16 v19, v2

    .line 690
    .line 691
    add-int v2, v18, v5

    .line 692
    .line 693
    add-int v10, v10, v19

    .line 694
    .line 695
    if-ge v10, v2, :cond_2c

    .line 696
    .line 697
    move v2, v10

    .line 698
    :cond_2c
    mul-int v10, v12, v3

    .line 699
    .line 700
    move/from16 v19, v3

    .line 701
    .line 702
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 703
    .line 704
    mul-int/2addr v10, v3

    .line 705
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    .line 706
    .line 707
    if-eqz v17, :cond_31

    .line 708
    .line 709
    move-object/from16 v17, v3

    .line 710
    .line 711
    move/from16 v3, v18

    .line 712
    .line 713
    :goto_18
    if-ge v3, v2, :cond_2f

    .line 714
    .line 715
    move/from16 v18, v3

    .line 716
    .line 717
    aget-byte v3, v8, v10

    .line 718
    .line 719
    and-int/lit16 v3, v3, 0xff

    .line 720
    .line 721
    aget v3, v9, v3

    .line 722
    .line 723
    if-eqz v3, :cond_2d

    .line 724
    .line 725
    aput v3, v17, v18

    .line 726
    .line 727
    goto :goto_19

    .line 728
    :cond_2d
    if-eqz v7, :cond_2e

    .line 729
    .line 730
    if-nez v13, :cond_2e

    .line 731
    .line 732
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 733
    .line 734
    move-object v13, v3

    .line 735
    :cond_2e
    :goto_19
    add-int v10, v10, v19

    .line 736
    .line 737
    add-int/lit8 v3, v18, 0x1

    .line 738
    .line 739
    goto :goto_18

    .line 740
    :cond_2f
    :goto_1a
    move/from16 v18, v4

    .line 741
    .line 742
    :cond_30
    move/from16 v28, v5

    .line 743
    .line 744
    goto/16 :goto_20

    .line 745
    .line 746
    :cond_31
    move-object/from16 v17, v3

    .line 747
    .line 748
    sub-int v3, v2, v18

    .line 749
    .line 750
    mul-int v3, v3, v19

    .line 751
    .line 752
    add-int/2addr v3, v10

    .line 753
    move/from16 v34, v18

    .line 754
    .line 755
    move/from16 v18, v4

    .line 756
    .line 757
    move/from16 v4, v34

    .line 758
    .line 759
    :goto_1b
    if-ge v4, v2, :cond_30

    .line 760
    .line 761
    move/from16 v20, v2

    .line 762
    .line 763
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    .line 764
    .line 765
    move/from16 v26, v2

    .line 766
    .line 767
    move/from16 v27, v4

    .line 768
    .line 769
    move v2, v10

    .line 770
    const/16 v21, 0x0

    .line 771
    .line 772
    const/16 v22, 0x0

    .line 773
    .line 774
    const/16 v23, 0x0

    .line 775
    .line 776
    const/16 v24, 0x0

    .line 777
    .line 778
    const/16 v25, 0x0

    .line 779
    .line 780
    :goto_1c
    iget v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 781
    .line 782
    add-int/2addr v4, v10

    .line 783
    if-ge v2, v4, :cond_33

    .line 784
    .line 785
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 786
    .line 787
    move/from16 v28, v5

    .line 788
    .line 789
    array-length v5, v4

    .line 790
    if-ge v2, v5, :cond_34

    .line 791
    .line 792
    if-ge v2, v3, :cond_34

    .line 793
    .line 794
    aget-byte v4, v4, v2

    .line 795
    .line 796
    and-int/lit16 v4, v4, 0xff

    .line 797
    .line 798
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 799
    .line 800
    aget v4, v5, v4

    .line 801
    .line 802
    if-eqz v4, :cond_32

    .line 803
    .line 804
    shr-int/lit8 v5, v4, 0x18

    .line 805
    .line 806
    and-int/lit16 v5, v5, 0xff

    .line 807
    .line 808
    add-int v21, v21, v5

    .line 809
    .line 810
    shr-int/lit8 v5, v4, 0x10

    .line 811
    .line 812
    and-int/lit16 v5, v5, 0xff

    .line 813
    .line 814
    add-int v22, v22, v5

    .line 815
    .line 816
    shr-int/lit8 v5, v4, 0x8

    .line 817
    .line 818
    and-int/lit16 v5, v5, 0xff

    .line 819
    .line 820
    add-int v23, v23, v5

    .line 821
    .line 822
    and-int/lit16 v4, v4, 0xff

    .line 823
    .line 824
    add-int v24, v24, v4

    .line 825
    .line 826
    add-int/lit8 v25, v25, 0x1

    .line 827
    .line 828
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 829
    .line 830
    move/from16 v5, v28

    .line 831
    .line 832
    goto :goto_1c

    .line 833
    :cond_33
    move/from16 v28, v5

    .line 834
    .line 835
    :cond_34
    add-int v2, v10, v26

    .line 836
    .line 837
    move v4, v2

    .line 838
    :goto_1d
    iget v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    .line 839
    .line 840
    add-int/2addr v5, v2

    .line 841
    if-ge v4, v5, :cond_36

    .line 842
    .line 843
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    .line 844
    .line 845
    move/from16 v26, v2

    .line 846
    .line 847
    array-length v2, v5

    .line 848
    if-ge v4, v2, :cond_36

    .line 849
    .line 850
    if-ge v4, v3, :cond_36

    .line 851
    .line 852
    aget-byte v2, v5, v4

    .line 853
    .line 854
    and-int/lit16 v2, v2, 0xff

    .line 855
    .line 856
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    .line 857
    .line 858
    aget v2, v5, v2

    .line 859
    .line 860
    if-eqz v2, :cond_35

    .line 861
    .line 862
    shr-int/lit8 v5, v2, 0x18

    .line 863
    .line 864
    and-int/lit16 v5, v5, 0xff

    .line 865
    .line 866
    add-int v21, v21, v5

    .line 867
    .line 868
    shr-int/lit8 v5, v2, 0x10

    .line 869
    .line 870
    and-int/lit16 v5, v5, 0xff

    .line 871
    .line 872
    add-int v22, v22, v5

    .line 873
    .line 874
    shr-int/lit8 v5, v2, 0x8

    .line 875
    .line 876
    and-int/lit16 v5, v5, 0xff

    .line 877
    .line 878
    add-int v23, v23, v5

    .line 879
    .line 880
    and-int/lit16 v2, v2, 0xff

    .line 881
    .line 882
    add-int v24, v24, v2

    .line 883
    .line 884
    add-int/lit8 v25, v25, 0x1

    .line 885
    .line 886
    :cond_35
    add-int/lit8 v4, v4, 0x1

    .line 887
    .line 888
    move/from16 v2, v26

    .line 889
    .line 890
    goto :goto_1d

    .line 891
    :cond_36
    if-nez v25, :cond_37

    .line 892
    .line 893
    const/4 v2, 0x0

    .line 894
    goto :goto_1e

    .line 895
    :cond_37
    div-int v21, v21, v25

    .line 896
    .line 897
    shl-int/lit8 v2, v21, 0x18

    .line 898
    .line 899
    div-int v22, v22, v25

    .line 900
    .line 901
    shl-int/lit8 v4, v22, 0x10

    .line 902
    .line 903
    or-int/2addr v2, v4

    .line 904
    div-int v23, v23, v25

    .line 905
    .line 906
    shl-int/lit8 v4, v23, 0x8

    .line 907
    .line 908
    or-int/2addr v2, v4

    .line 909
    div-int v24, v24, v25

    .line 910
    .line 911
    or-int v2, v2, v24

    .line 912
    .line 913
    :goto_1e
    if-eqz v2, :cond_38

    .line 914
    .line 915
    aput v2, v17, v27

    .line 916
    .line 917
    goto :goto_1f

    .line 918
    :cond_38
    if-eqz v7, :cond_39

    .line 919
    .line 920
    if-nez v13, :cond_39

    .line 921
    .line 922
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 923
    .line 924
    move-object v13, v2

    .line 925
    :cond_39
    :goto_1f
    add-int v10, v10, v19

    .line 926
    .line 927
    add-int/lit8 v4, v27, 0x1

    .line 928
    .line 929
    move/from16 v2, v20

    .line 930
    .line 931
    move/from16 v5, v28

    .line 932
    .line 933
    goto/16 :goto_1b

    .line 934
    .line 935
    :cond_3a
    move/from16 v19, v3

    .line 936
    .line 937
    goto/16 :goto_1a

    .line 938
    .line 939
    :goto_20
    add-int/lit8 v12, v12, 0x1

    .line 940
    .line 941
    move v10, v15

    .line 942
    move/from16 v2, v16

    .line 943
    .line 944
    move/from16 v4, v18

    .line 945
    .line 946
    move/from16 v3, v19

    .line 947
    .line 948
    move/from16 v5, v28

    .line 949
    .line 950
    goto/16 :goto_14

    .line 951
    .line 952
    :cond_3b
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 953
    .line 954
    if-nez v2, :cond_3d

    .line 955
    .line 956
    if-nez v13, :cond_3c

    .line 957
    .line 958
    const/4 v4, 0x0

    .line 959
    goto :goto_21

    .line 960
    :cond_3c
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 961
    .line 962
    .line 963
    move-result v4

    .line 964
    :goto_21
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    .line 969
    .line 970
    :cond_3d
    :goto_22
    iget-boolean v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    .line 971
    .line 972
    if-eqz v2, :cond_3e

    .line 973
    .line 974
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    .line 975
    .line 976
    if-eqz v1, :cond_3f

    .line 977
    .line 978
    const/4 v2, 0x1

    .line 979
    if-ne v1, v2, :cond_3e

    .line 980
    .line 981
    goto :goto_23

    .line 982
    :cond_3e
    move-object/from16 v6, v33

    .line 983
    .line 984
    goto :goto_24

    .line 985
    :cond_3f
    :goto_23
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 986
    .line 987
    if-nez v1, :cond_40

    .line 988
    .line 989
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c()Landroid/graphics/Bitmap;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 994
    .line 995
    :cond_40
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    .line 996
    .line 997
    const/4 v10, 0x0

    .line 998
    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 999
    .line 1000
    const/4 v7, 0x0

    .line 1001
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 1002
    .line 1003
    const/4 v9, 0x0

    .line 1004
    move v11, v8

    .line 1005
    move-object/from16 v6, v33

    .line 1006
    .line 1007
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1008
    .line 1009
    .line 1010
    :goto_24
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c()Landroid/graphics/Bitmap;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    const/4 v10, 0x0

    .line 1015
    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    .line 1016
    .line 1017
    const/4 v7, 0x0

    .line 1018
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    .line 1019
    .line 1020
    const/4 v9, 0x0

    .line 1021
    move v11, v8

    .line 1022
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1023
    .line 1024
    .line 1025
    return-object v5
.end method
