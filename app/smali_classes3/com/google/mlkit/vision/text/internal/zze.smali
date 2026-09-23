.class final Lcom/google/mlkit/vision/text/internal/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/text/internal/zzm;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;

.field public c:Z

.field public d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zze;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zze;->a:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/internal/zze;->zzb()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v2, v1, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 13
    .line 14
    if-eqz v2, :cond_15

    .line 15
    .line 16
    iget v2, v0, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    if-ne v2, v5, :cond_1

    .line 24
    .line 25
    iget-object v2, v0, Lcom/google/mlkit/vision/common/InputImage;->a:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    :goto_0
    move/from16 v16, v3

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_1
    if-eq v2, v5, :cond_9

    .line 32
    .line 33
    const/16 v8, 0x11

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    if-eq v2, v8, :cond_8

    .line 37
    .line 38
    const/16 v8, 0x23

    .line 39
    .line 40
    if-eq v2, v8, :cond_5

    .line 41
    .line 42
    const v5, 0x32315659

    .line 43
    .line 44
    .line 45
    if-ne v2, v5, :cond_4

    .line 46
    .line 47
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    iget v5, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 54
    .line 55
    iget v8, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    div-int/lit8 v10, v9, 0x6

    .line 65
    .line 66
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    move v11, v7

    .line 71
    :goto_1
    mul-int/lit8 v12, v10, 0x4

    .line 72
    .line 73
    if-ge v11, v12, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    invoke-virtual {v9, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    .line 82
    add-int/lit8 v11, v11, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v11, v7

    .line 86
    :goto_2
    add-int v13, v10, v10

    .line 87
    .line 88
    if-ge v11, v13, :cond_3

    .line 89
    .line 90
    add-int v13, v12, v11

    .line 91
    .line 92
    rem-int/lit8 v14, v11, 0x2

    .line 93
    .line 94
    mul-int/2addr v14, v10

    .line 95
    add-int/2addr v14, v12

    .line 96
    div-int/lit8 v15, v11, 0x2

    .line 97
    .line 98
    add-int/2addr v15, v14

    .line 99
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual {v9, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v5, v8}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->b([BII)[B

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    array-length v5, v2

    .line 118
    invoke-static {v2, v7, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-static {v2, v7, v7, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 136
    .line 137
    const-string v2, "Unsupported image format"

    .line 138
    .line 139
    const/16 v3, 0xd

    .line 140
    .line 141
    invoke-direct {v0, v2, v3}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_5
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, [Landroid/media/Image$Plane;

    .line 150
    .line 151
    iget v9, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 152
    .line 153
    iget v10, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 154
    .line 155
    mul-int v14, v9, v10

    .line 156
    .line 157
    invoke-static {v14, v4, v14}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    new-array v11, v8, [B

    .line 162
    .line 163
    aget-object v8, v2, v6

    .line 164
    .line 165
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    aget-object v12, v2, v3

    .line 170
    .line 171
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    invoke-virtual {v8}, Ljava/nio/Buffer;->limit()I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    move/from16 v16, v3

    .line 184
    .line 185
    add-int/lit8 v3, v13, 0x1

    .line 186
    .line 187
    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 188
    .line 189
    .line 190
    add-int/lit8 v3, v15, -0x1

    .line 191
    .line 192
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12}, Ljava/nio/Buffer;->remaining()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    add-int v17, v14, v14

    .line 200
    .line 201
    div-int/lit8 v17, v17, 0x4

    .line 202
    .line 203
    move/from16 v18, v5

    .line 204
    .line 205
    add-int/lit8 v5, v17, -0x2

    .line 206
    .line 207
    if-ne v3, v5, :cond_6

    .line 208
    .line 209
    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_6

    .line 214
    .line 215
    move v3, v6

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    move v3, v7

    .line 218
    :goto_3
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 222
    .line 223
    .line 224
    if-eqz v3, :cond_7

    .line 225
    .line 226
    aget-object v3, v2, v7

    .line 227
    .line 228
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3, v11, v7, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 233
    .line 234
    .line 235
    aget-object v3, v2, v6

    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    aget-object v2, v2, v16

    .line 242
    .line 243
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2, v11, v14, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 248
    .line 249
    .line 250
    add-int/2addr v14, v6

    .line 251
    add-int/lit8 v2, v17, -0x1

    .line 252
    .line 253
    invoke-virtual {v3, v11, v14, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_7
    aget-object v8, v2, v7

    .line 258
    .line 259
    const/4 v12, 0x0

    .line 260
    const/4 v13, 0x1

    .line 261
    invoke-static/range {v8 .. v13}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->c(Landroid/media/Image$Plane;II[BII)V

    .line 262
    .line 263
    .line 264
    aget-object v8, v2, v6

    .line 265
    .line 266
    add-int/lit8 v12, v14, 0x1

    .line 267
    .line 268
    const/4 v13, 0x2

    .line 269
    invoke-static/range {v8 .. v13}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->c(Landroid/media/Image$Plane;II[BII)V

    .line 270
    .line 271
    .line 272
    aget-object v8, v2, v16

    .line 273
    .line 274
    move v12, v14

    .line 275
    invoke-static/range {v8 .. v13}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->c(Landroid/media/Image$Plane;II[BII)V

    .line 276
    .line 277
    .line 278
    :goto_4
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    iget v3, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 283
    .line 284
    iget v5, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 285
    .line 286
    invoke-static {v2, v3, v5}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->a(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    goto :goto_5

    .line 291
    :cond_8
    move/from16 v16, v3

    .line 292
    .line 293
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 298
    .line 299
    iget v3, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 300
    .line 301
    iget v5, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 302
    .line 303
    invoke-static {v2, v3, v5}, Lcom/google/mlkit/vision/common/internal/ImageConvertUtils;->a(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    goto :goto_5

    .line 308
    :cond_9
    move/from16 v16, v3

    .line 309
    .line 310
    iget-object v2, v0, Lcom/google/mlkit/vision/common/InputImage;->a:Landroid/graphics/Bitmap;

    .line 311
    .line 312
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    check-cast v2, Landroid/graphics/Bitmap;

    .line 317
    .line 318
    iget v3, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 319
    .line 320
    iget v5, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 321
    .line 322
    invoke-static {v2, v7, v7, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    :goto_5
    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 327
    .line 328
    invoke-direct {v3, v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzd;

    .line 332
    .line 333
    iget v9, v0, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 334
    .line 335
    iget v10, v0, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 336
    .line 337
    const/4 v11, 0x0

    .line 338
    const-wide/16 v13, 0x0

    .line 339
    .line 340
    const/4 v12, 0x0

    .line 341
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzd;-><init>(IIIIJ)V

    .line 342
    .line 343
    .line 344
    :try_start_0
    iget-object v0, v1, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 345
    .line 346
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->I1()Landroid/os/Parcel;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzc;->a(Landroid/os/Parcel;Lcom/google/android/gms/dynamic/ObjectWrapper;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v8, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->f2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    check-cast v2, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 376
    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .line 379
    .line 380
    new-instance v0, Landroid/util/SparseArray;

    .line 381
    .line 382
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 383
    .line 384
    .line 385
    array-length v3, v2

    .line 386
    move v5, v7

    .line 387
    :goto_6
    if-ge v5, v3, :cond_b

    .line 388
    .line 389
    aget-object v8, v2, v5

    .line 390
    .line 391
    iget v9, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->n:I

    .line 392
    .line 393
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    check-cast v9, Landroid/util/SparseArray;

    .line 398
    .line 399
    if-nez v9, :cond_a

    .line 400
    .line 401
    new-instance v9, Landroid/util/SparseArray;

    .line 402
    .line 403
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 404
    .line 405
    .line 406
    iget v10, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->n:I

    .line 407
    .line 408
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_a
    iget v10, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->o:I

    .line 412
    .line 413
    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    add-int/lit8 v5, v5, 0x1

    .line 417
    .line 418
    goto :goto_6

    .line 419
    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    .line 420
    .line 421
    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;-><init>()V

    .line 422
    .line 423
    .line 424
    move v3, v7

    .line 425
    :goto_7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-ge v3, v5, :cond_14

    .line 430
    .line 431
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    check-cast v5, Landroid/util/SparseArray;

    .line 436
    .line 437
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    .line 438
    .line 439
    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;-><init>()V

    .line 440
    .line 441
    .line 442
    move v9, v7

    .line 443
    :goto_8
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    if-ge v9, v10, :cond_c

    .line 448
    .line 449
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 454
    .line 455
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->a(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    add-int/lit8 v9, v9, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->b()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    new-instance v8, Lcom/google/mlkit/vision/text/internal/zzh;

    .line 466
    .line 467
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    .line 471
    .line 472
    .line 473
    move-result-object v14

    .line 474
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 479
    .line 480
    iget-object v8, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 481
    .line 482
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;->r(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcp;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    const/high16 v9, -0x80000000

    .line 487
    .line 488
    const v10, 0x7fffffff

    .line 489
    .line 490
    .line 491
    move v11, v10

    .line 492
    move v12, v11

    .line 493
    move v10, v9

    .line 494
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    if-eqz v13, :cond_e

    .line 499
    .line 500
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v13

    .line 504
    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 505
    .line 506
    iget-object v13, v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 507
    .line 508
    move/from16 v17, v6

    .line 509
    .line 510
    iget v6, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->c:I

    .line 511
    .line 512
    move/from16 v18, v7

    .line 513
    .line 514
    iget v7, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->i:F

    .line 515
    .line 516
    neg-int v6, v6

    .line 517
    const/16 p1, 0x3

    .line 518
    .line 519
    iget v15, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->f:I

    .line 520
    .line 521
    neg-int v15, v15

    .line 522
    move-object/from16 v19, v5

    .line 523
    .line 524
    float-to-double v4, v7

    .line 525
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 526
    .line 527
    .line 528
    move-result-wide v20

    .line 529
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    .line 530
    .line 531
    .line 532
    move-result-wide v20

    .line 533
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 534
    .line 535
    .line 536
    move-result-wide v4

    .line 537
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 538
    .line 539
    .line 540
    move-result-wide v4

    .line 541
    move-object/from16 v22, v0

    .line 542
    .line 543
    const/4 v7, 0x4

    .line 544
    new-array v0, v7, [Landroid/graphics/Point;

    .line 545
    .line 546
    new-instance v7, Landroid/graphics/Point;

    .line 547
    .line 548
    move-object/from16 v23, v0

    .line 549
    .line 550
    iget v0, v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->c:I

    .line 551
    .line 552
    iget v1, v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->h:I

    .line 553
    .line 554
    move/from16 v24, v1

    .line 555
    .line 556
    iget v1, v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->g:I

    .line 557
    .line 558
    iget v13, v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->f:I

    .line 559
    .line 560
    invoke-direct {v7, v0, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 561
    .line 562
    .line 563
    aput-object v7, v23, v18

    .line 564
    .line 565
    invoke-virtual {v7, v6, v15}, Landroid/graphics/Point;->offset(II)V

    .line 566
    .line 567
    .line 568
    aget-object v0, v23, v18

    .line 569
    .line 570
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 571
    .line 572
    move v7, v3

    .line 573
    move-wide/from16 v25, v4

    .line 574
    .line 575
    int-to-double v3, v6

    .line 576
    mul-double v3, v3, v25

    .line 577
    .line 578
    iget v5, v0, Landroid/graphics/Point;->y:I

    .line 579
    .line 580
    move-wide/from16 v27, v3

    .line 581
    .line 582
    int-to-double v3, v5

    .line 583
    mul-double v29, v3, v20

    .line 584
    .line 585
    neg-int v5, v6

    .line 586
    int-to-double v5, v5

    .line 587
    mul-double v5, v5, v20

    .line 588
    .line 589
    mul-double v3, v3, v25

    .line 590
    .line 591
    move-wide/from16 v20, v3

    .line 592
    .line 593
    add-double v3, v27, v29

    .line 594
    .line 595
    double-to-int v3, v3

    .line 596
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 597
    .line 598
    add-double v5, v5, v20

    .line 599
    .line 600
    double-to-int v4, v5

    .line 601
    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 602
    .line 603
    new-instance v0, Landroid/graphics/Point;

    .line 604
    .line 605
    add-int/2addr v1, v3

    .line 606
    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 607
    .line 608
    .line 609
    aput-object v0, v23, v17

    .line 610
    .line 611
    new-instance v0, Landroid/graphics/Point;

    .line 612
    .line 613
    add-int v4, v4, v24

    .line 614
    .line 615
    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 616
    .line 617
    .line 618
    aput-object v0, v23, v16

    .line 619
    .line 620
    new-instance v0, Landroid/graphics/Point;

    .line 621
    .line 622
    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 623
    .line 624
    .line 625
    aput-object v0, v23, p1

    .line 626
    .line 627
    move/from16 v0, v18

    .line 628
    .line 629
    :goto_a
    const/4 v1, 0x4

    .line 630
    if-ge v0, v1, :cond_d

    .line 631
    .line 632
    aget-object v1, v23, v0

    .line 633
    .line 634
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 635
    .line 636
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    .line 637
    .line 638
    .line 639
    move-result v11

    .line 640
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 641
    .line 642
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    .line 643
    .line 644
    .line 645
    move-result v9

    .line 646
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 647
    .line 648
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    .line 649
    .line 650
    .line 651
    move-result v12

    .line 652
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 653
    .line 654
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 655
    .line 656
    .line 657
    move-result v10

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 659
    .line 660
    goto :goto_a

    .line 661
    :cond_d
    move v4, v1

    .line 662
    move v3, v7

    .line 663
    move/from16 v6, v17

    .line 664
    .line 665
    move/from16 v7, v18

    .line 666
    .line 667
    move-object/from16 v5, v19

    .line 668
    .line 669
    move-object/from16 v0, v22

    .line 670
    .line 671
    move-object/from16 v1, p0

    .line 672
    .line 673
    goto/16 :goto_9

    .line 674
    .line 675
    :cond_e
    move-object/from16 v22, v0

    .line 676
    .line 677
    move/from16 v17, v6

    .line 678
    .line 679
    move/from16 v18, v7

    .line 680
    .line 681
    const/16 p1, 0x3

    .line 682
    .line 683
    move v7, v3

    .line 684
    iget v0, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->c:I

    .line 685
    .line 686
    iget v1, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->i:F

    .line 687
    .line 688
    iget v3, v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->f:I

    .line 689
    .line 690
    float-to-double v4, v1

    .line 691
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 692
    .line 693
    .line 694
    move-result-wide v19

    .line 695
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    .line 696
    .line 697
    .line 698
    move-result-wide v19

    .line 699
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 700
    .line 701
    .line 702
    move-result-wide v4

    .line 703
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 704
    .line 705
    .line 706
    move-result-wide v4

    .line 707
    new-instance v1, Landroid/graphics/Point;

    .line 708
    .line 709
    invoke-direct {v1, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 710
    .line 711
    .line 712
    new-instance v6, Landroid/graphics/Point;

    .line 713
    .line 714
    invoke-direct {v6, v9, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 715
    .line 716
    .line 717
    new-instance v8, Landroid/graphics/Point;

    .line 718
    .line 719
    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 720
    .line 721
    .line 722
    new-instance v9, Landroid/graphics/Point;

    .line 723
    .line 724
    invoke-direct {v9, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 725
    .line 726
    .line 727
    const/4 v15, 0x4

    .line 728
    new-array v10, v15, [Landroid/graphics/Point;

    .line 729
    .line 730
    aput-object v1, v10, v18

    .line 731
    .line 732
    aput-object v6, v10, v17

    .line 733
    .line 734
    aput-object v8, v10, v16

    .line 735
    .line 736
    aput-object v9, v10, p1

    .line 737
    .line 738
    move/from16 v1, v18

    .line 739
    .line 740
    :goto_b
    if-ge v1, v15, :cond_f

    .line 741
    .line 742
    aget-object v6, v10, v1

    .line 743
    .line 744
    iget v8, v6, Landroid/graphics/Point;->x:I

    .line 745
    .line 746
    int-to-double v8, v8

    .line 747
    mul-double v11, v8, v4

    .line 748
    .line 749
    iget v13, v6, Landroid/graphics/Point;->y:I

    .line 750
    .line 751
    move-wide/from16 v23, v4

    .line 752
    .line 753
    int-to-double v4, v13

    .line 754
    mul-double v25, v4, v19

    .line 755
    .line 756
    mul-double v8, v8, v19

    .line 757
    .line 758
    mul-double v4, v4, v23

    .line 759
    .line 760
    sub-double v11, v11, v25

    .line 761
    .line 762
    double-to-int v11, v11

    .line 763
    iput v11, v6, Landroid/graphics/Point;->x:I

    .line 764
    .line 765
    add-double/2addr v8, v4

    .line 766
    double-to-int v4, v8

    .line 767
    iput v4, v6, Landroid/graphics/Point;->y:I

    .line 768
    .line 769
    invoke-virtual {v6, v0, v3}, Landroid/graphics/Point;->offset(II)V

    .line 770
    .line 771
    .line 772
    add-int/lit8 v1, v1, 0x1

    .line 773
    .line 774
    move-wide/from16 v4, v23

    .line 775
    .line 776
    goto :goto_b

    .line 777
    :cond_f
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 778
    .line 779
    .line 780
    move-result-object v12

    .line 781
    new-instance v9, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 782
    .line 783
    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzi;

    .line 784
    .line 785
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 786
    .line 787
    .line 788
    invoke-static {v14, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;->a(Ljava/util/AbstractList;)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v10

    .line 796
    invoke-static {v12}, Lcom/google/mlkit/vision/text/internal/zza;->a(Ljava/util/List;)Landroid/graphics/Rect;

    .line 797
    .line 798
    .line 799
    move-result-object v11

    .line 800
    new-instance v0, Ljava/util/HashMap;

    .line 801
    .line 802
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 803
    .line 804
    .line 805
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    if-eqz v3, :cond_11

    .line 814
    .line 815
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    check-cast v3, Lcom/google/mlkit/vision/text/Text$Line;

    .line 820
    .line 821
    invoke-virtual {v3}, Lcom/google/mlkit/vision/text/Text$Line;->b()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    if-eqz v4, :cond_10

    .line 830
    .line 831
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    check-cast v4, Ljava/lang/Integer;

    .line 836
    .line 837
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 838
    .line 839
    .line 840
    move-result v4

    .line 841
    goto :goto_d

    .line 842
    :cond_10
    move/from16 v4, v18

    .line 843
    .line 844
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 845
    .line 846
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    goto :goto_c

    .line 854
    :cond_11
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 859
    .line 860
    .line 861
    move-result v1

    .line 862
    if-eqz v1, :cond_12

    .line 863
    .line 864
    goto :goto_f

    .line 865
    :cond_12
    sget-object v1, Lcom/google/mlkit/vision/text/internal/zzk;->a:Lcom/google/mlkit/vision/text/internal/zzf;

    .line 866
    .line 867
    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    check-cast v0, Ljava/util/Map$Entry;

    .line 872
    .line 873
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Ljava/lang/String;

    .line 878
    .line 879
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->b(Ljava/lang/String;)Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-nez v1, :cond_13

    .line 884
    .line 885
    :goto_e
    move-object v13, v0

    .line 886
    goto :goto_10

    .line 887
    :cond_13
    :goto_f
    const-string v0, "und"

    .line 888
    .line 889
    goto :goto_e

    .line 890
    :goto_10
    invoke-direct/range {v9 .. v14}, Lcom/google/mlkit/vision/text/Text$TextBlock;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/AbstractList;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->a(Ljava/lang/Object;)V

    .line 894
    .line 895
    .line 896
    add-int/lit8 v3, v7, 0x1

    .line 897
    .line 898
    move-object/from16 v1, p0

    .line 899
    .line 900
    move v4, v15

    .line 901
    move/from16 v6, v17

    .line 902
    .line 903
    move/from16 v7, v18

    .line 904
    .line 905
    move-object/from16 v0, v22

    .line 906
    .line 907
    goto/16 :goto_7

    .line 908
    .line 909
    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->b()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    new-instance v1, Lcom/google/mlkit/vision/text/Text;

    .line 914
    .line 915
    new-instance v2, Lcom/google/mlkit/vision/text/internal/zzg;

    .line 916
    .line 917
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 918
    .line 919
    .line 920
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzv;->a(Ljava/util/AbstractList;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    invoke-direct {v1, v0}, Lcom/google/mlkit/vision/text/Text;-><init>(Ljava/util/List;)V

    .line 928
    .line 929
    .line 930
    return-object v1

    .line 931
    :catch_0
    move-exception v0

    .line 932
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 933
    .line 934
    const-string v2, "Failed to run legacy text recognizer."

    .line 935
    .line 936
    invoke-direct {v1, v0, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    throw v1

    .line 940
    :cond_15
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 941
    .line 942
    const-string v1, "Waiting for the text recognition module to be downloaded. Please wait."

    .line 943
    .line 944
    const/16 v2, 0xe

    .line 945
    .line 946
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 947
    .line 948
    .line 949
    throw v0
.end method

.method public final zzb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zze;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 9
    .line 10
    const-string v2, "com.google.android.gms.vision.dynamite"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzj;->c:I

    .line 23
    .line 24
    const-string v2, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzk;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    move-object v1, v3

    .line 39
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzk;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzi;

    .line 43
    .line 44
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v1, v3

    .line 48
    :goto_0
    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zze;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzk;->Y2(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzp;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zze;->c:Z

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    const-string v1, "LegacyTextDelegate"

    .line 68
    .line 69
    const-string v2, "Request OCR optional module download."

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const-string v1, "ocr"

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zze;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    :goto_1
    return-void

    .line 88
    :goto_2
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 89
    .line 90
    const-string v2, "Failed to load deprecated vision dynamite module."

    .line 91
    .line 92
    invoke-direct {v1, v0, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :goto_3
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 97
    .line 98
    const-string v2, "Failed to create legacy text recognizer."

    .line 99
    .line 100
    invoke-direct {v1, v0, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->I1()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->r2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "LegacyTextDelegate"

    .line 16
    .line 17
    const-string v2, "Failed to release legacy text recognizer."

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zze;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzh;

    .line 24
    .line 25
    :cond_0
    return-void
.end method
