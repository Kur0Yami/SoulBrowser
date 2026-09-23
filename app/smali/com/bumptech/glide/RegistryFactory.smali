.class final Lcom/bumptech/glide/RegistryFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)Lcom/bumptech/glide/Registry;
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 6
    .line 7
    iget-object v4, v0, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 8
    .line 9
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v4, v4, Lcom/bumptech/glide/GlideContext;->h:Lcom/bumptech/glide/GlideExperiments;

    .line 14
    .line 15
    new-instance v6, Lcom/bumptech/glide/Registry;

    .line 16
    .line 17
    invoke-direct {v6}, Lcom/bumptech/glide/Registry;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v7, v6, Lcom/bumptech/glide/Registry;->b:Lcom/bumptech/glide/provider/EncoderRegistry;

    .line 21
    .line 22
    const-class v8, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 23
    .line 24
    const-string v9, "BitmapDrawable"

    .line 25
    .line 26
    const-class v10, Ljava/lang/String;

    .line 27
    .line 28
    const-string v11, "legacy_append"

    .line 29
    .line 30
    const-class v12, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 31
    .line 32
    const-string v13, "Animation"

    .line 33
    .line 34
    const-class v14, [B

    .line 35
    .line 36
    const-class v15, Ljava/lang/Integer;

    .line 37
    .line 38
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    .line 40
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 41
    .line 42
    move-object/from16 v16, v14

    .line 43
    .line 44
    const-string v14, "Bitmap"

    .line 45
    .line 46
    move-object/from16 v17, v10

    .line 47
    .line 48
    const-class v10, Ljava/io/File;

    .line 49
    .line 50
    move-object/from16 v18, v15

    .line 51
    .line 52
    const-class v15, Landroid/content/res/AssetFileDescriptor;

    .line 53
    .line 54
    move-object/from16 v19, v10

    .line 55
    .line 56
    const-class v10, Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    move-object/from16 v20, v11

    .line 59
    .line 60
    const-class v11, Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    move-object/from16 v21, v8

    .line 63
    .line 64
    const-class v8, Landroid/graphics/Bitmap;

    .line 65
    .line 66
    move-object/from16 v22, v12

    .line 67
    .line 68
    const-class v12, Landroid/net/Uri;

    .line 69
    .line 70
    move-object/from16 v23, v12

    .line 71
    .line 72
    const-class v12, Ljava/io/InputStream;

    .line 73
    .line 74
    move-object/from16 v24, v1

    .line 75
    .line 76
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    move-object/from16 v25, v9

    .line 82
    .line 83
    iget-object v9, v6, Lcom/bumptech/glide/Registry;->g:Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;

    .line 84
    .line 85
    monitor-enter v9

    .line 86
    move-object/from16 v26, v15

    .line 87
    .line 88
    :try_start_0
    iget-object v15, v9, Lcom/bumptech/glide/provider/ImageHeaderParserRegistry;->a:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit v9

    .line 94
    iget-object v1, v6, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 95
    .line 96
    iget-object v9, v6, Lcom/bumptech/glide/Registry;->d:Lcom/bumptech/glide/provider/ResourceEncoderRegistry;

    .line 97
    .line 98
    iget-object v15, v6, Lcom/bumptech/glide/Registry;->c:Lcom/bumptech/glide/provider/ResourceDecoderRegistry;

    .line 99
    .line 100
    move-object/from16 v27, v1

    .line 101
    .line 102
    iget-object v1, v6, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 103
    .line 104
    move-object/from16 v28, v9

    .line 105
    .line 106
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 107
    .line 108
    move-object/from16 v29, v1

    .line 109
    .line 110
    const/16 v1, 0x1b

    .line 111
    .line 112
    if-lt v9, v1, :cond_0

    .line 113
    .line 114
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v1}, Lcom/bumptech/glide/Registry;->d(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 120
    .line 121
    .line 122
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    move-object/from16 v30, v1

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->b()Ljava/util/ArrayList;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    move-object/from16 v31, v0

    .line 133
    .line 134
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;

    .line 135
    .line 136
    invoke-direct {v0, v5, v1, v2, v3}, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v32, v0

    .line 140
    .line 141
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->f(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move-object/from16 v33, v0

    .line 146
    .line 147
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 148
    .line 149
    move-object/from16 v34, v8

    .line 150
    .line 151
    invoke-virtual {v6}, Lcom/bumptech/glide/Registry;->b()Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    move-object/from16 v35, v14

    .line 156
    .line 157
    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-direct {v0, v8, v14, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 162
    .line 163
    .line 164
    const/16 v8, 0x1c

    .line 165
    .line 166
    if-lt v9, v8, :cond_1

    .line 167
    .line 168
    const-class v14, Lcom/bumptech/glide/GlideBuilder$EnableImageDecoderForBitmaps;

    .line 169
    .line 170
    iget-object v8, v4, Lcom/bumptech/glide/GlideExperiments;->a:Ljava/util/Map;

    .line 171
    .line 172
    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_1

    .line 177
    .line 178
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;

    .line 179
    .line 180
    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/InputStreamBitmapImageDecoderResourceDecoder;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;

    .line 184
    .line 185
    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapImageDecoderResourceDecoder;-><init>()V

    .line 186
    .line 187
    .line 188
    :goto_0
    move-object/from16 v36, v4

    .line 189
    .line 190
    const/16 v4, 0x1c

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_1
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;

    .line 194
    .line 195
    invoke-direct {v14, v0}, Lcom/bumptech/glide/load/resource/bitmap/ByteBufferBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 196
    .line 197
    .line 198
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    .line 199
    .line 200
    invoke-direct {v8, v0, v3}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :goto_1
    if-lt v9, v4, :cond_2

    .line 205
    .line 206
    invoke-static {v1, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->c(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-virtual {v6, v4, v12, v11, v13}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v3}, Lcom/bumptech/glide/load/resource/drawable/AnimatedImageDecoder;->a(Ljava/util/ArrayList;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ResourceDecoder;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v6, v4, v10, v11, v13}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_2
    new-instance v4, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;

    .line 221
    .line 222
    invoke-direct {v4, v5}, Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    move/from16 v37, v9

    .line 226
    .line 227
    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 228
    .line 229
    invoke-direct {v9, v3}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 230
    .line 231
    .line 232
    move-object/from16 v38, v5

    .line 233
    .line 234
    new-instance v5, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;

    .line 235
    .line 236
    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    .line 237
    .line 238
    .line 239
    move-object/from16 v39, v5

    .line 240
    .line 241
    new-instance v5, Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    .line 242
    .line 243
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    move-object/from16 v40, v5

    .line 247
    .line 248
    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    move-object/from16 v41, v5

    .line 253
    .line 254
    new-instance v5, Lcom/bumptech/glide/load/model/ByteBufferEncoder;

    .line 255
    .line 256
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v10, v5}, Lcom/bumptech/glide/provider/EncoderRegistry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 260
    .line 261
    .line 262
    new-instance v5, Lcom/bumptech/glide/load/model/StreamEncoder;

    .line 263
    .line 264
    invoke-direct {v5, v3}, Lcom/bumptech/glide/load/model/StreamEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v7, v12, v5}, Lcom/bumptech/glide/provider/EncoderRegistry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/Encoder;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v7, v34

    .line 271
    .line 272
    move-object/from16 v5, v35

    .line 273
    .line 274
    invoke-virtual {v15, v14, v10, v7, v5}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v8, v12, v7, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v34, v4

    .line 281
    .line 282
    const-string v4, "robolectric"

    .line 283
    .line 284
    move-object/from16 v35, v11

    .line 285
    .line 286
    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_3

    .line 293
    .line 294
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;

    .line 295
    .line 296
    invoke-direct {v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/ParcelFileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/bitmap/Downsampler;)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v0, v31

    .line 300
    .line 301
    invoke-virtual {v6, v4, v0, v7, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_3
    move-object/from16 v0, v31

    .line 306
    .line 307
    :goto_2
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    move-object/from16 v31, v11

    .line 312
    .line 313
    move-object/from16 v11, v26

    .line 314
    .line 315
    invoke-virtual {v6, v4, v11, v7, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v4, v33

    .line 319
    .line 320
    invoke-virtual {v15, v4, v0, v7, v5}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sget-object v11, Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;->a:Lcom/bumptech/glide/load/model/UnitModelLoader$Factory;

    .line 324
    .line 325
    move-object/from16 v33, v6

    .line 326
    .line 327
    move-object/from16 v6, v29

    .line 328
    .line 329
    invoke-virtual {v6, v7, v7, v11}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 330
    .line 331
    .line 332
    new-instance v6, Lcom/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder;

    .line 333
    .line 334
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v15, v6, v7, v7, v5}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v6, v28

    .line 341
    .line 342
    invoke-virtual {v6, v7, v9}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v28, v5

    .line 346
    .line 347
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 348
    .line 349
    move-object/from16 v42, v7

    .line 350
    .line 351
    move-object/from16 v7, v30

    .line 352
    .line 353
    invoke-direct {v5, v7, v14}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 354
    .line 355
    .line 356
    move-object/from16 v14, v24

    .line 357
    .line 358
    move-object/from16 v24, v11

    .line 359
    .line 360
    move-object v11, v14

    .line 361
    move-object/from16 v14, v25

    .line 362
    .line 363
    invoke-virtual {v15, v5, v10, v11, v14}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 367
    .line 368
    invoke-direct {v5, v7, v8}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v15, v5, v12, v11, v14}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 375
    .line 376
    invoke-direct {v5, v7, v4}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v15, v5, v0, v11, v14}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    new-instance v4, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;

    .line 383
    .line 384
    invoke-direct {v4, v2, v9}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v6, v11, v4}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;

    .line 391
    .line 392
    move-object/from16 v5, v32

    .line 393
    .line 394
    invoke-direct {v4, v1, v5, v3}, Lcom/bumptech/glide/load/resource/gif/StreamGifDecoder;-><init>(Ljava/util/ArrayList;Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v1, v22

    .line 398
    .line 399
    invoke-virtual {v15, v4, v12, v1, v13}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v15, v5, v10, v1, v13}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    new-instance v4, Lcom/bumptech/glide/load/resource/gif/GifDrawableEncoder;

    .line 406
    .line 407
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v1, v4}, Lcom/bumptech/glide/provider/ResourceEncoderRegistry;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v1, v21

    .line 414
    .line 415
    move-object/from16 v4, v24

    .line 416
    .line 417
    move-object/from16 v6, v29

    .line 418
    .line 419
    invoke-virtual {v6, v1, v1, v4}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 420
    .line 421
    .line 422
    new-instance v5, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;

    .line 423
    .line 424
    invoke-direct {v5, v2}, Lcom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v8, v28

    .line 428
    .line 429
    move-object/from16 v9, v42

    .line 430
    .line 431
    invoke-virtual {v15, v5, v1, v9, v8}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    move-object/from16 v5, v20

    .line 435
    .line 436
    move-object/from16 v13, v23

    .line 437
    .line 438
    move-object/from16 v1, v33

    .line 439
    .line 440
    move-object/from16 v14, v34

    .line 441
    .line 442
    move-object/from16 v8, v35

    .line 443
    .line 444
    invoke-virtual {v1, v14, v13, v8, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v15, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;

    .line 448
    .line 449
    invoke-direct {v15, v14, v2}, Lcom/bumptech/glide/load/resource/bitmap/ResourceBitmapDecoder;-><init>(Lcom/bumptech/glide/load/resource/drawable/ResourceDrawableDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v15, v13, v9, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    new-instance v14, Lcom/bumptech/glide/load/resource/bytes/ByteBufferRewinder$Factory;

    .line 456
    .line 457
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/Registry;->e(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 461
    .line 462
    .line 463
    new-instance v14, Lcom/bumptech/glide/load/model/ByteBufferFileLoader$Factory;

    .line 464
    .line 465
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 466
    .line 467
    .line 468
    move-object/from16 v15, v19

    .line 469
    .line 470
    invoke-virtual {v6, v15, v10, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 471
    .line 472
    .line 473
    new-instance v14, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;

    .line 474
    .line 475
    invoke-direct {v14}, Lcom/bumptech/glide/load/model/FileLoader$StreamFactory;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v6, v15, v12, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 479
    .line 480
    .line 481
    new-instance v14, Lcom/bumptech/glide/load/resource/file/FileDecoder;

    .line 482
    .line 483
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1, v14, v15, v15, v5}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    new-instance v14, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;

    .line 490
    .line 491
    invoke-direct {v14}, Lcom/bumptech/glide/load/model/FileLoader$FileDescriptorFactory;-><init>()V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v6, v15, v0, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6, v15, v15, v4}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 498
    .line 499
    .line 500
    new-instance v14, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;

    .line 501
    .line 502
    invoke-direct {v14, v3}, Lcom/bumptech/glide/load/data/InputStreamRewinder$Factory;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v14}, Lcom/bumptech/glide/Registry;->e(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 506
    .line 507
    .line 508
    const-string v3, "robolectric"

    .line 509
    .line 510
    move-object/from16 v14, v31

    .line 511
    .line 512
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-nez v3, :cond_4

    .line 517
    .line 518
    new-instance v3, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$Factory;

    .line 519
    .line 520
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/Registry;->e(Lcom/bumptech/glide/load/data/DataRewinder$Factory;)V

    .line 524
    .line 525
    .line 526
    :cond_4
    invoke-static/range {v38 .. v38}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->e(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static/range {v38 .. v38}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->c(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 531
    .line 532
    .line 533
    move-result-object v14

    .line 534
    move-object/from16 v19, v2

    .line 535
    .line 536
    invoke-static/range {v38 .. v38}, Lcom/bumptech/glide/load/model/DirectResourceLoader;->d(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    move-object/from16 v34, v9

    .line 541
    .line 542
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 543
    .line 544
    invoke-virtual {v6, v9, v12, v3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 545
    .line 546
    .line 547
    move-object/from16 v24, v11

    .line 548
    .line 549
    move-object/from16 v11, v18

    .line 550
    .line 551
    invoke-virtual {v6, v11, v12, v3}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 552
    .line 553
    .line 554
    move-object/from16 v3, v26

    .line 555
    .line 556
    invoke-virtual {v6, v9, v3, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6, v11, v3, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v9, v8, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v6, v11, v8, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 566
    .line 567
    .line 568
    invoke-static/range {v38 .. v38}, Lcom/bumptech/glide/load/model/ResourceUriLoader;->d(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-virtual {v6, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 573
    .line 574
    .line 575
    invoke-static/range {v38 .. v38}, Lcom/bumptech/glide/load/model/ResourceUriLoader;->c(Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    iget-object v14, v1, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 580
    .line 581
    invoke-virtual {v14, v13, v3, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 582
    .line 583
    .line 584
    new-instance v2, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;

    .line 585
    .line 586
    invoke-direct {v2, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$UriFactory;-><init>(Landroid/content/res/Resources;)V

    .line 587
    .line 588
    .line 589
    new-instance v14, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;

    .line 590
    .line 591
    invoke-direct {v14, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/res/Resources;)V

    .line 592
    .line 593
    .line 594
    move-object/from16 v20, v5

    .line 595
    .line 596
    new-instance v5, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;

    .line 597
    .line 598
    invoke-direct {v5, v7}, Lcom/bumptech/glide/load/model/ResourceLoader$StreamFactory;-><init>(Landroid/content/res/Resources;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v6, v11, v13, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v6, v9, v13, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6, v11, v3, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6, v9, v3, v14}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v6, v11, v12, v5}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 614
    .line 615
    .line 616
    iget-object v2, v1, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 617
    .line 618
    invoke-virtual {v2, v9, v12, v5}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 619
    .line 620
    .line 621
    new-instance v2, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    .line 622
    .line 623
    invoke-direct {v2}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 624
    .line 625
    .line 626
    move-object/from16 v5, v17

    .line 627
    .line 628
    invoke-virtual {v6, v5, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 629
    .line 630
    .line 631
    new-instance v2, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;

    .line 632
    .line 633
    invoke-direct {v2}, Lcom/bumptech/glide/load/model/DataUrlLoader$StreamFactory;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 637
    .line 638
    .line 639
    new-instance v2, Lcom/bumptech/glide/load/model/StringLoader$StreamFactory;

    .line 640
    .line 641
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v6, v5, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 645
    .line 646
    .line 647
    new-instance v2, Lcom/bumptech/glide/load/model/StringLoader$FileDescriptorFactory;

    .line 648
    .line 649
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v6, v5, v0, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 653
    .line 654
    .line 655
    new-instance v2, Lcom/bumptech/glide/load/model/StringLoader$AssetFileDescriptorFactory;

    .line 656
    .line 657
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v6, v5, v3, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 661
    .line 662
    .line 663
    new-instance v2, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;

    .line 664
    .line 665
    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v6, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 673
    .line 674
    .line 675
    new-instance v2, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;

    .line 676
    .line 677
    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;-><init>(Landroid/content/res/AssetManager;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6, v13, v3, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 685
    .line 686
    .line 687
    new-instance v2, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;

    .line 688
    .line 689
    move-object/from16 v5, v38

    .line 690
    .line 691
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/stream/MediaStoreImageThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v6, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 695
    .line 696
    .line 697
    new-instance v2, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;

    .line 698
    .line 699
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/stream/MediaStoreVideoThumbLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 700
    .line 701
    .line 702
    iget-object v9, v1, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 703
    .line 704
    invoke-virtual {v9, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 705
    .line 706
    .line 707
    const/16 v2, 0x1d

    .line 708
    .line 709
    move/from16 v9, v37

    .line 710
    .line 711
    if-lt v9, v2, :cond_5

    .line 712
    .line 713
    new-instance v2, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;

    .line 714
    .line 715
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$InputStreamFactory;-><init>(Landroid/content/Context;)V

    .line 716
    .line 717
    .line 718
    iget-object v9, v1, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 719
    .line 720
    invoke-virtual {v9, v13, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 721
    .line 722
    .line 723
    new-instance v2, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;

    .line 724
    .line 725
    invoke-direct {v2, v5}, Lcom/bumptech/glide/load/model/stream/QMediaStoreUriLoader$FileDescriptorFactory;-><init>(Landroid/content/Context;)V

    .line 726
    .line 727
    .line 728
    iget-object v9, v1, Lcom/bumptech/glide/Registry;->a:Lcom/bumptech/glide/load/model/ModelLoaderRegistry;

    .line 729
    .line 730
    invoke-virtual {v9, v13, v0, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 731
    .line 732
    .line 733
    :cond_5
    const-class v2, Lcom/bumptech/glide/GlideBuilder$UseMediaStoreOpenFileApisIfPossible;

    .line 734
    .line 735
    move-object/from16 v9, v36

    .line 736
    .line 737
    iget-object v9, v9, Lcom/bumptech/glide/GlideExperiments;->a:Ljava/util/Map;

    .line 738
    .line 739
    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;

    .line 744
    .line 745
    move-object/from16 v11, v41

    .line 746
    .line 747
    invoke-direct {v9, v11, v2}, Lcom/bumptech/glide/load/model/UriLoader$StreamFactory;-><init>(Landroid/content/ContentResolver;Z)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v6, v13, v12, v9}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 751
    .line 752
    .line 753
    new-instance v9, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;

    .line 754
    .line 755
    invoke-direct {v9, v11, v2}, Lcom/bumptech/glide/load/model/UriLoader$FileDescriptorFactory;-><init>(Landroid/content/ContentResolver;Z)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v6, v13, v0, v9}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 759
    .line 760
    .line 761
    new-instance v0, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;

    .line 762
    .line 763
    invoke-direct {v0, v11, v2}, Lcom/bumptech/glide/load/model/UriLoader$AssetFileDescriptorFactory;-><init>(Landroid/content/ContentResolver;Z)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v6, v13, v3, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 767
    .line 768
    .line 769
    new-instance v0, Lcom/bumptech/glide/load/model/UrlUriLoader$StreamFactory;

    .line 770
    .line 771
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6, v13, v12, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 775
    .line 776
    .line 777
    const-class v0, Ljava/net/URL;

    .line 778
    .line 779
    new-instance v2, Lcom/bumptech/glide/load/model/stream/UrlLoader$StreamFactory;

    .line 780
    .line 781
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v6, v0, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 785
    .line 786
    .line 787
    new-instance v0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;

    .line 788
    .line 789
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;-><init>(Landroid/content/Context;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v6, v13, v15, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 793
    .line 794
    .line 795
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 796
    .line 797
    new-instance v2, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;

    .line 798
    .line 799
    invoke-direct {v2}, Lcom/bumptech/glide/load/model/stream/HttpGlideUrlLoader$Factory;-><init>()V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v6, v0, v12, v2}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 803
    .line 804
    .line 805
    new-instance v0, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    .line 806
    .line 807
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 808
    .line 809
    .line 810
    move-object/from16 v2, v16

    .line 811
    .line 812
    invoke-virtual {v6, v2, v10, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 813
    .line 814
    .line 815
    new-instance v0, Lcom/bumptech/glide/load/model/ByteArrayLoader$StreamFactory;

    .line 816
    .line 817
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v6, v2, v12, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v6, v13, v13, v4}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v6, v8, v8, v4}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 827
    .line 828
    .line 829
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/UnitDrawableDecoder;

    .line 830
    .line 831
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 832
    .line 833
    .line 834
    move-object/from16 v3, v20

    .line 835
    .line 836
    invoke-virtual {v1, v0, v8, v8, v3}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;

    .line 840
    .line 841
    invoke-direct {v0, v7}, Lcom/bumptech/glide/load/resource/transcode/BitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;)V

    .line 842
    .line 843
    .line 844
    move-object/from16 v11, v24

    .line 845
    .line 846
    move-object/from16 v3, v27

    .line 847
    .line 848
    move-object/from16 v9, v34

    .line 849
    .line 850
    invoke-virtual {v3, v9, v11, v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 851
    .line 852
    .line 853
    move-object/from16 v0, v39

    .line 854
    .line 855
    invoke-virtual {v3, v9, v2, v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 856
    .line 857
    .line 858
    new-instance v4, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;

    .line 859
    .line 860
    move-object/from16 v6, v19

    .line 861
    .line 862
    move-object/from16 v12, v40

    .line 863
    .line 864
    invoke-direct {v4, v6, v0, v12}, Lcom/bumptech/glide/load/resource/transcode/DrawableBytesTranscoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;)V

    .line 865
    .line 866
    .line 867
    invoke-virtual {v3, v8, v2, v4}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 868
    .line 869
    .line 870
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 871
    .line 872
    const-class v2, [B

    .line 873
    .line 874
    iget-object v3, v1, Lcom/bumptech/glide/Registry;->f:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 875
    .line 876
    invoke-virtual {v3, v0, v2, v12}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 877
    .line 878
    .line 879
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->d(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    const-string v2, "legacy_append"

    .line 884
    .line 885
    invoke-virtual {v1, v0, v10, v9, v2}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;

    .line 889
    .line 890
    invoke-direct {v2, v7, v0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapDrawableDecoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 891
    .line 892
    .line 893
    const-string v0, "legacy_append"

    .line 894
    .line 895
    invoke-virtual {v1, v2, v10, v11, v0}, Lcom/bumptech/glide/Registry;->a(Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 903
    .line 904
    .line 905
    move-result v2

    .line 906
    if-eqz v2, :cond_6

    .line 907
    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    check-cast v2, Lcom/bumptech/glide/module/GlideModule;

    .line 913
    .line 914
    move-object/from16 v3, p0

    .line 915
    .line 916
    :try_start_1
    invoke-interface {v2, v5, v3, v1}, Lcom/bumptech/glide/module/GlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 917
    .line 918
    .line 919
    goto :goto_3

    .line 920
    :catch_0
    move-exception v0

    .line 921
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 922
    .line 923
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 932
    .line 933
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    .line 939
    .line 940
    throw v1

    .line 941
    :cond_6
    move-object/from16 v3, p0

    .line 942
    .line 943
    if-eqz p2, :cond_7

    .line 944
    .line 945
    move-object/from16 v0, p2

    .line 946
    .line 947
    invoke-virtual {v0, v5, v3, v1}, Lcom/bumptech/glide/module/LibraryGlideModule;->a(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 948
    .line 949
    .line 950
    :cond_7
    return-object v1

    .line 951
    :catchall_0
    move-exception v0

    .line 952
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    throw v0
.end method
