.class Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Lcom/mycompany/app/main/MainItem$ViewItem;

.field public g:Landroid/graphics/Bitmap;

.field public final h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iget-boolean p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->h:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_31

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 14
    .line 15
    if-eqz v1, :cond_58

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_31

    .line 22
    .line 23
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 24
    .line 25
    iget-boolean v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/mycompany/app/curl/CurlMesh;->s:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    :cond_3
    move/from16 v19, v5

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto/16 :goto_25

    .line 51
    .line 52
    :cond_4
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_33

    .line 59
    .line 60
    iget-boolean v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 61
    .line 62
    if-nez v3, :cond_33

    .line 63
    .line 64
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 65
    .line 66
    if-nez v3, :cond_6

    .line 67
    .line 68
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-le v3, v8, :cond_5

    .line 81
    .line 82
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 83
    .line 84
    iput v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iput v5, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 89
    .line 90
    move v3, v6

    .line 91
    :goto_0
    iput v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    move v3, v6

    .line 95
    :goto_1
    const/4 v8, 0x3

    .line 96
    if-eqz v3, :cond_2c

    .line 97
    .line 98
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 99
    .line 100
    if-lt v3, v5, :cond_2c

    .line 101
    .line 102
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 103
    .line 104
    if-eqz v3, :cond_2c

    .line 105
    .line 106
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 107
    .line 108
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_7

    .line 113
    .line 114
    goto/16 :goto_21

    .line 115
    .line 116
    :cond_7
    :try_start_0
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 117
    .line 118
    const/4 v10, -0x1

    .line 119
    if-ne v3, v8, :cond_12

    .line 120
    .line 121
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_8

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_2

    .line 134
    :cond_8
    move v11, v6

    .line 135
    :goto_2
    move/from16 v19, v5

    .line 136
    .line 137
    move v5, v6

    .line 138
    move/from16 v20, v5

    .line 139
    .line 140
    move v12, v10

    .line 141
    move v13, v12

    .line 142
    move v14, v13

    .line 143
    move v15, v14

    .line 144
    move/from16 v16, v15

    .line 145
    .line 146
    move/from16 v17, v16

    .line 147
    .line 148
    move/from16 v18, v17

    .line 149
    .line 150
    :goto_3
    if-ge v5, v11, :cond_11

    .line 151
    .line 152
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v21

    .line 156
    move-object/from16 v4, v21

    .line 157
    .line 158
    check-cast v4, Lcom/mycompany/app/curl/CurlMesh;

    .line 159
    .line 160
    if-nez v4, :cond_9

    .line 161
    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_9
    iget-object v4, v4, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 165
    .line 166
    if-nez v4, :cond_a

    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_a
    iget v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 171
    .line 172
    iget v9, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 173
    .line 174
    const/16 v22, 0x1

    .line 175
    .line 176
    add-int/lit8 v7, v9, -0x1

    .line 177
    .line 178
    if-ne v6, v7, :cond_e

    .line 179
    .line 180
    iget v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 181
    .line 182
    if-ne v6, v8, :cond_c

    .line 183
    .line 184
    iget-boolean v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 185
    .line 186
    if-eqz v6, :cond_b

    .line 187
    .line 188
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 189
    .line 190
    add-int/lit8 v6, v6, 0x1

    .line 191
    .line 192
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 193
    .line 194
    rem-int/2addr v6, v7

    .line 195
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 196
    .line 197
    :goto_4
    const/4 v6, 0x4

    .line 198
    goto :goto_5

    .line 199
    :cond_b
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 200
    .line 201
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 202
    .line 203
    move/from16 v9, v22

    .line 204
    .line 205
    invoke-static {v6, v7, v9, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :goto_5
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    iput-boolean v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 218
    .line 219
    .line 220
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 221
    .line 222
    add-int/lit8 v6, v6, -0x2

    .line 223
    .line 224
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 225
    .line 226
    move v12, v4

    .line 227
    move v10, v6

    .line 228
    move v14, v8

    .line 229
    const/16 v16, 0x0

    .line 230
    .line 231
    :goto_6
    const/16 v20, 0x1

    .line 232
    .line 233
    goto/16 :goto_a

    .line 234
    .line 235
    :cond_c
    if-nez v6, :cond_10

    .line 236
    .line 237
    iget v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 238
    .line 239
    const/4 v7, 0x4

    .line 240
    if-eq v6, v7, :cond_10

    .line 241
    .line 242
    iget-boolean v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 243
    .line 244
    if-eqz v6, :cond_d

    .line 245
    .line 246
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 247
    .line 248
    const/16 v22, 0x1

    .line 249
    .line 250
    add-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 253
    .line 254
    rem-int/2addr v6, v7

    .line 255
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 256
    .line 257
    :goto_7
    const/4 v6, 0x4

    .line 258
    goto :goto_8

    .line 259
    :cond_d
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 260
    .line 261
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 262
    .line 263
    const/4 v9, 0x1

    .line 264
    invoke-static {v6, v7, v9, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :goto_8
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 272
    .line 273
    const/4 v6, 0x0

    .line 274
    iput-boolean v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 275
    .line 276
    invoke-virtual {v1, v4}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 277
    .line 278
    .line 279
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 280
    .line 281
    add-int/lit8 v6, v6, -0x2

    .line 282
    .line 283
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 284
    .line 285
    move v12, v4

    .line 286
    move v10, v6

    .line 287
    move/from16 v16, v8

    .line 288
    .line 289
    const/4 v14, 0x0

    .line 290
    goto :goto_6

    .line 291
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 292
    .line 293
    if-ne v6, v9, :cond_10

    .line 294
    .line 295
    iget v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 296
    .line 297
    const/4 v7, 0x4

    .line 298
    if-eq v6, v7, :cond_10

    .line 299
    .line 300
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 301
    .line 302
    iput v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 303
    .line 304
    iput v7, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    iput-boolean v6, v4, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 308
    .line 309
    invoke-virtual {v1, v4}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 310
    .line 311
    .line 312
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 313
    .line 314
    add-int/lit8 v4, v4, 0x2

    .line 315
    .line 316
    iget-boolean v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 317
    .line 318
    if-eqz v6, :cond_f

    .line 319
    .line 320
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 321
    .line 322
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 323
    .line 324
    const/4 v9, 0x1

    .line 325
    invoke-static {v6, v7, v9, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    goto :goto_9

    .line 330
    :cond_f
    const/4 v9, 0x1

    .line 331
    iget v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 332
    .line 333
    add-int/2addr v6, v9

    .line 334
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 335
    .line 336
    rem-int/2addr v6, v7

    .line 337
    :goto_9
    move v13, v4

    .line 338
    move v15, v6

    .line 339
    move/from16 v18, v8

    .line 340
    .line 341
    const/16 v17, 0x0

    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 345
    .line 346
    const/4 v6, 0x0

    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_11
    move v5, v12

    .line 350
    move v6, v13

    .line 351
    move v7, v14

    .line 352
    move/from16 v9, v16

    .line 353
    .line 354
    move/from16 v11, v17

    .line 355
    .line 356
    move/from16 v12, v18

    .line 357
    .line 358
    goto/16 :goto_1d

    .line 359
    .line 360
    :cond_12
    move/from16 v19, v5

    .line 361
    .line 362
    const/4 v6, 0x4

    .line 363
    if-ne v3, v6, :cond_1d

    .line 364
    .line 365
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 366
    .line 367
    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    if-eqz v3, :cond_13

    .line 372
    .line 373
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    goto :goto_b

    .line 378
    :cond_13
    const/4 v4, 0x0

    .line 379
    :goto_b
    move v5, v10

    .line 380
    move v6, v5

    .line 381
    move v7, v6

    .line 382
    move v9, v7

    .line 383
    move v11, v9

    .line 384
    move v12, v11

    .line 385
    move v13, v12

    .line 386
    const/4 v14, 0x0

    .line 387
    const/16 v20, 0x0

    .line 388
    .line 389
    :goto_c
    if-ge v14, v4, :cond_1c

    .line 390
    .line 391
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v15

    .line 395
    check-cast v15, Lcom/mycompany/app/curl/CurlMesh;

    .line 396
    .line 397
    if-nez v15, :cond_14

    .line 398
    .line 399
    :goto_d
    move-object/from16 v17, v3

    .line 400
    .line 401
    goto/16 :goto_14

    .line 402
    .line 403
    :cond_14
    iget-object v15, v15, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 404
    .line 405
    if-nez v15, :cond_15

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_15
    iget v8, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 409
    .line 410
    move-object/from16 v17, v3

    .line 411
    .line 412
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 413
    .line 414
    move/from16 v18, v3

    .line 415
    .line 416
    add-int/lit8 v3, v18, -0x1

    .line 417
    .line 418
    if-ne v8, v3, :cond_17

    .line 419
    .line 420
    iget v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 421
    .line 422
    const/4 v8, 0x3

    .line 423
    if-eq v3, v8, :cond_1b

    .line 424
    .line 425
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 426
    .line 427
    iput v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 428
    .line 429
    iput v8, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 430
    .line 431
    const/4 v3, 0x0

    .line 432
    iput-boolean v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 433
    .line 434
    invoke-virtual {v1, v15}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 435
    .line 436
    .line 437
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 438
    .line 439
    add-int/lit8 v3, v3, -0x2

    .line 440
    .line 441
    iget-boolean v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 442
    .line 443
    if-eqz v5, :cond_16

    .line 444
    .line 445
    iget v5, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 446
    .line 447
    const/16 v22, 0x1

    .line 448
    .line 449
    add-int/lit8 v5, v5, 0x1

    .line 450
    .line 451
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 452
    .line 453
    rem-int/2addr v5, v7

    .line 454
    goto :goto_e

    .line 455
    :cond_16
    iget v5, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 456
    .line 457
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 458
    .line 459
    const/4 v8, 0x1

    .line 460
    invoke-static {v5, v7, v8, v7}, Landroid/support/v4/media/a;->B(IIII)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    :goto_e
    move v10, v3

    .line 465
    const/4 v7, 0x0

    .line 466
    const/4 v11, 0x4

    .line 467
    const/16 v20, 0x1

    .line 468
    .line 469
    goto/16 :goto_14

    .line 470
    .line 471
    :cond_17
    add-int/lit8 v3, v18, 0x1

    .line 472
    .line 473
    if-ne v8, v3, :cond_1b

    .line 474
    .line 475
    iget v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 476
    .line 477
    const/4 v8, 0x4

    .line 478
    if-ne v3, v8, :cond_19

    .line 479
    .line 480
    iget-boolean v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 481
    .line 482
    if-eqz v3, :cond_18

    .line 483
    .line 484
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 485
    .line 486
    iget v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 487
    .line 488
    const/4 v9, 0x1

    .line 489
    invoke-static {v3, v6, v9, v6}, Landroid/support/v4/media/a;->B(IIII)I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    iput v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 494
    .line 495
    :goto_f
    const/4 v8, 0x3

    .line 496
    goto :goto_10

    .line 497
    :cond_18
    const/4 v9, 0x1

    .line 498
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 499
    .line 500
    add-int/2addr v3, v9

    .line 501
    iget v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 502
    .line 503
    rem-int/2addr v3, v6

    .line 504
    iput v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 505
    .line 506
    goto :goto_f

    .line 507
    :goto_10
    iput v8, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 508
    .line 509
    const/4 v6, 0x0

    .line 510
    iput-boolean v6, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 511
    .line 512
    invoke-virtual {v1, v15}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 513
    .line 514
    .line 515
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 516
    .line 517
    add-int/lit8 v3, v3, 0x2

    .line 518
    .line 519
    iget v6, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 520
    .line 521
    move v9, v6

    .line 522
    const/4 v12, 0x4

    .line 523
    const/4 v13, 0x0

    .line 524
    :goto_11
    const/16 v20, 0x1

    .line 525
    .line 526
    move v6, v3

    .line 527
    goto :goto_14

    .line 528
    :cond_19
    if-nez v3, :cond_1b

    .line 529
    .line 530
    iget v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 531
    .line 532
    const/4 v8, 0x3

    .line 533
    if-eq v3, v8, :cond_1b

    .line 534
    .line 535
    iget-boolean v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 536
    .line 537
    if-eqz v3, :cond_1a

    .line 538
    .line 539
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 540
    .line 541
    iget v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 542
    .line 543
    const/4 v9, 0x1

    .line 544
    invoke-static {v3, v6, v9, v6}, Landroid/support/v4/media/a;->B(IIII)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    iput v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 549
    .line 550
    :goto_12
    const/4 v8, 0x3

    .line 551
    goto :goto_13

    .line 552
    :cond_1a
    const/4 v9, 0x1

    .line 553
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 554
    .line 555
    add-int/2addr v3, v9

    .line 556
    iget v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 557
    .line 558
    rem-int/2addr v3, v6

    .line 559
    iput v3, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :goto_13
    iput v8, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 563
    .line 564
    const/4 v6, 0x0

    .line 565
    iput-boolean v6, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 566
    .line 567
    invoke-virtual {v1, v15}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 568
    .line 569
    .line 570
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 571
    .line 572
    add-int/lit8 v3, v3, 0x2

    .line 573
    .line 574
    iget v6, v15, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 575
    .line 576
    move v9, v6

    .line 577
    const/4 v12, 0x0

    .line 578
    const/4 v13, 0x4

    .line 579
    goto :goto_11

    .line 580
    :cond_1b
    :goto_14
    add-int/lit8 v14, v14, 0x1

    .line 581
    .line 582
    move-object/from16 v3, v17

    .line 583
    .line 584
    const/4 v8, 0x3

    .line 585
    goto/16 :goto_c

    .line 586
    .line 587
    :cond_1c
    move v15, v9

    .line 588
    move v9, v11

    .line 589
    move v11, v12

    .line 590
    move v12, v13

    .line 591
    goto/16 :goto_1d

    .line 592
    .line 593
    :cond_1d
    if-eqz v3, :cond_26

    .line 594
    .line 595
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 596
    .line 597
    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    if-eqz v3, :cond_1e

    .line 602
    .line 603
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    goto :goto_15

    .line 608
    :cond_1e
    const/4 v4, 0x0

    .line 609
    :goto_15
    move v5, v10

    .line 610
    move v6, v5

    .line 611
    move v7, v6

    .line 612
    move v8, v7

    .line 613
    move v9, v8

    .line 614
    move v11, v9

    .line 615
    move v12, v11

    .line 616
    const/4 v13, 0x0

    .line 617
    const/16 v20, 0x0

    .line 618
    .line 619
    :goto_16
    if-ge v13, v4, :cond_25

    .line 620
    .line 621
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v14

    .line 625
    check-cast v14, Lcom/mycompany/app/curl/CurlMesh;

    .line 626
    .line 627
    if-nez v14, :cond_1f

    .line 628
    .line 629
    :goto_17
    move-object/from16 v17, v3

    .line 630
    .line 631
    goto/16 :goto_1c

    .line 632
    .line 633
    :cond_1f
    iget-object v14, v14, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 634
    .line 635
    if-nez v14, :cond_20

    .line 636
    .line 637
    goto :goto_17

    .line 638
    :cond_20
    iget v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 639
    .line 640
    move-object/from16 v17, v3

    .line 641
    .line 642
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 643
    .line 644
    move/from16 v18, v3

    .line 645
    .line 646
    add-int/lit8 v3, v18, -0x1

    .line 647
    .line 648
    if-ne v15, v3, :cond_22

    .line 649
    .line 650
    iget v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 651
    .line 652
    iget v15, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 653
    .line 654
    if-ne v3, v15, :cond_24

    .line 655
    .line 656
    iget-boolean v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 657
    .line 658
    if-eqz v3, :cond_21

    .line 659
    .line 660
    add-int/lit8 v15, v15, 0x1

    .line 661
    .line 662
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 663
    .line 664
    rem-int/2addr v15, v3

    .line 665
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 666
    .line 667
    :goto_18
    const/4 v3, 0x0

    .line 668
    goto :goto_19

    .line 669
    :cond_21
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 670
    .line 671
    const/4 v9, 0x1

    .line 672
    invoke-static {v15, v3, v9, v3}, Landroid/support/v4/media/a;->B(IIII)I

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    iput v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 677
    .line 678
    goto :goto_18

    .line 679
    :goto_19
    iput v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 680
    .line 681
    const/4 v7, 0x4

    .line 682
    iput v7, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 683
    .line 684
    iput-boolean v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 685
    .line 686
    invoke-virtual {v1, v14}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 687
    .line 688
    .line 689
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 690
    .line 691
    add-int/lit8 v3, v3, -0x2

    .line 692
    .line 693
    iget v5, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 694
    .line 695
    move v10, v3

    .line 696
    const/4 v7, 0x0

    .line 697
    const/4 v9, 0x3

    .line 698
    const/16 v20, 0x1

    .line 699
    .line 700
    goto :goto_1c

    .line 701
    :cond_22
    add-int/lit8 v3, v18, 0x1

    .line 702
    .line 703
    if-ne v15, v3, :cond_24

    .line 704
    .line 705
    iget v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 706
    .line 707
    iget v15, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 708
    .line 709
    if-ne v3, v15, :cond_24

    .line 710
    .line 711
    iget-boolean v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 712
    .line 713
    if-eqz v3, :cond_23

    .line 714
    .line 715
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 716
    .line 717
    const/4 v8, 0x1

    .line 718
    invoke-static {v15, v3, v8, v3}, Landroid/support/v4/media/a;->B(IIII)I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    iput v3, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 723
    .line 724
    :goto_1a
    const/4 v6, 0x0

    .line 725
    goto :goto_1b

    .line 726
    :cond_23
    add-int/lit8 v15, v15, 0x1

    .line 727
    .line 728
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 729
    .line 730
    rem-int/2addr v15, v3

    .line 731
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 732
    .line 733
    goto :goto_1a

    .line 734
    :goto_1b
    iput v6, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 735
    .line 736
    const/4 v8, 0x3

    .line 737
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 738
    .line 739
    iput-boolean v6, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 740
    .line 741
    invoke-virtual {v1, v14}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 742
    .line 743
    .line 744
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 745
    .line 746
    add-int/lit8 v3, v3, 0x2

    .line 747
    .line 748
    iget v6, v14, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 749
    .line 750
    move v8, v6

    .line 751
    const/4 v11, 0x0

    .line 752
    const/4 v12, 0x4

    .line 753
    const/16 v20, 0x1

    .line 754
    .line 755
    move v6, v3

    .line 756
    :cond_24
    :goto_1c
    add-int/lit8 v13, v13, 0x1

    .line 757
    .line 758
    move-object/from16 v3, v17

    .line 759
    .line 760
    goto/16 :goto_16

    .line 761
    .line 762
    :cond_25
    move v15, v8

    .line 763
    goto :goto_1d

    .line 764
    :cond_26
    move v5, v10

    .line 765
    move v6, v5

    .line 766
    move v7, v6

    .line 767
    move v9, v7

    .line 768
    move v11, v9

    .line 769
    move v12, v11

    .line 770
    move v15, v12

    .line 771
    const/16 v20, 0x0

    .line 772
    .line 773
    :goto_1d
    if-eqz v20, :cond_2d

    .line 774
    .line 775
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 776
    .line 777
    invoke-virtual {v3}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    if-eqz v3, :cond_27

    .line 782
    .line 783
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 784
    .line 785
    .line 786
    move-result v4

    .line 787
    goto :goto_1e

    .line 788
    :cond_27
    const/4 v4, 0x0

    .line 789
    :goto_1e
    const/4 v8, 0x0

    .line 790
    :goto_1f
    if-ge v8, v4, :cond_2d

    .line 791
    .line 792
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v13

    .line 796
    check-cast v13, Lcom/mycompany/app/curl/CurlMesh;

    .line 797
    .line 798
    if-nez v13, :cond_28

    .line 799
    .line 800
    goto :goto_20

    .line 801
    :cond_28
    iget-object v13, v13, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 802
    .line 803
    if-nez v13, :cond_29

    .line 804
    .line 805
    goto :goto_20

    .line 806
    :cond_29
    iget v14, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 807
    .line 808
    if-ne v14, v10, :cond_2a

    .line 809
    .line 810
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 811
    .line 812
    iput v7, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 813
    .line 814
    iput v9, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 815
    .line 816
    const/4 v14, 0x0

    .line 817
    iput-boolean v14, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 818
    .line 819
    invoke-virtual {v1, v13}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 820
    .line 821
    .line 822
    goto :goto_20

    .line 823
    :cond_2a
    if-ne v14, v6, :cond_2b

    .line 824
    .line 825
    iput v15, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 826
    .line 827
    iput v11, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 828
    .line 829
    iput v12, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 830
    .line 831
    const/4 v14, 0x0

    .line 832
    iput-boolean v14, v13, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 833
    .line 834
    invoke-virtual {v1, v13}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 835
    .line 836
    .line 837
    :cond_2b
    :goto_20
    add-int/lit8 v8, v8, 0x1

    .line 838
    .line 839
    goto :goto_1f

    .line 840
    :catch_0
    :cond_2c
    :goto_21
    move/from16 v19, v5

    .line 841
    .line 842
    :catch_1
    :cond_2d
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 843
    .line 844
    const/4 v8, 0x3

    .line 845
    if-ne v3, v8, :cond_2f

    .line 846
    .line 847
    :try_start_2
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 848
    .line 849
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    div-int/lit8 v3, v3, 0x2

    .line 854
    .line 855
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 856
    .line 857
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 858
    .line 859
    .line 860
    move-result v4

    .line 861
    if-lez v3, :cond_2e

    .line 862
    .line 863
    mul-int/lit8 v5, v3, 0x2

    .line 864
    .line 865
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 866
    .line 867
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 868
    .line 869
    .line 870
    move-result v6

    .line 871
    if-gt v5, v6, :cond_2e

    .line 872
    .line 873
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 874
    .line 875
    const/4 v6, 0x0

    .line 876
    invoke-static {v5, v6, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 881
    .line 882
    goto :goto_22

    .line 883
    :catch_2
    const/4 v3, 0x0

    .line 884
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 885
    .line 886
    const/4 v9, 0x1

    .line 887
    iput-boolean v9, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 888
    .line 889
    :cond_2e
    :goto_22
    const/4 v3, 0x0

    .line 890
    :goto_23
    const/4 v4, 0x1

    .line 891
    goto :goto_24

    .line 892
    :cond_2f
    const/4 v6, 0x4

    .line 893
    if-ne v3, v6, :cond_30

    .line 894
    .line 895
    :try_start_3
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 896
    .line 897
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 898
    .line 899
    .line 900
    move-result v3

    .line 901
    div-int/lit8 v3, v3, 0x2

    .line 902
    .line 903
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 904
    .line 905
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 906
    .line 907
    .line 908
    move-result v4

    .line 909
    if-lez v3, :cond_2e

    .line 910
    .line 911
    mul-int/lit8 v5, v3, 0x2

    .line 912
    .line 913
    iget-object v6, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 914
    .line 915
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 916
    .line 917
    .line 918
    move-result v6

    .line 919
    if-gt v5, v6, :cond_2e

    .line 920
    .line 921
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 922
    .line 923
    const/4 v6, 0x0

    .line 924
    invoke-static {v5, v3, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 925
    .line 926
    .line 927
    move-result-object v3

    .line 928
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    .line 929
    .line 930
    goto :goto_22

    .line 931
    :catch_3
    const/4 v3, 0x0

    .line 932
    iput-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 933
    .line 934
    const/4 v9, 0x1

    .line 935
    iput-boolean v9, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 936
    .line 937
    goto :goto_23

    .line 938
    :cond_30
    const/4 v3, 0x0

    .line 939
    const/4 v4, 0x0

    .line 940
    :goto_24
    if-eqz v4, :cond_35

    .line 941
    .line 942
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 943
    .line 944
    if-nez v4, :cond_31

    .line 945
    .line 946
    goto/16 :goto_31

    .line 947
    .line 948
    :cond_31
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 949
    .line 950
    if-eqz v4, :cond_32

    .line 951
    .line 952
    goto/16 :goto_31

    .line 953
    .line 954
    :cond_32
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 955
    .line 956
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 957
    .line 958
    .line 959
    move-result v4

    .line 960
    if-nez v4, :cond_35

    .line 961
    .line 962
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 963
    .line 964
    iget-object v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 965
    .line 966
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result v4

    .line 970
    if-nez v4, :cond_35

    .line 971
    .line 972
    goto/16 :goto_31

    .line 973
    .line 974
    :cond_33
    move/from16 v19, v5

    .line 975
    .line 976
    const/4 v3, 0x0

    .line 977
    goto :goto_26

    .line 978
    :goto_25
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 979
    .line 980
    if-eqz v4, :cond_34

    .line 981
    .line 982
    const/4 v6, 0x0

    .line 983
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 984
    .line 985
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 986
    .line 987
    .line 988
    return-void

    .line 989
    :cond_34
    const/4 v9, 0x1

    .line 990
    iput-boolean v9, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 991
    .line 992
    :cond_35
    :goto_26
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 993
    .line 994
    .line 995
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 996
    .line 997
    if-eqz v4, :cond_36

    .line 998
    .line 999
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 1000
    .line 1001
    if-nez v4, :cond_36

    .line 1002
    .line 1003
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->p:Z

    .line 1004
    .line 1005
    if-eqz v4, :cond_53

    .line 1006
    .line 1007
    :cond_36
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 1008
    .line 1009
    const/high16 v5, 0x40000000    # 2.0f

    .line 1010
    .line 1011
    if-eqz v4, :cond_3c

    .line 1012
    .line 1013
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->k:Ljava/lang/String;

    .line 1014
    .line 1015
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1016
    .line 1017
    if-nez v6, :cond_37

    .line 1018
    .line 1019
    goto/16 :goto_28

    .line 1020
    .line 1021
    :cond_37
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 1022
    .line 1023
    .line 1024
    move-result v6

    .line 1025
    iget-object v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1026
    .line 1027
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 1028
    .line 1029
    .line 1030
    move-result v7

    .line 1031
    if-eqz v6, :cond_3b

    .line 1032
    .line 1033
    if-nez v7, :cond_38

    .line 1034
    .line 1035
    goto :goto_28

    .line 1036
    :cond_38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v8

    .line 1040
    if-eqz v8, :cond_39

    .line 1041
    .line 1042
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 1043
    .line 1044
    sget v8, Lnet/kaki87/soul2/testing/R$string;->next_file:I

    .line 1045
    .line 1046
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v4

    .line 1050
    :cond_39
    :try_start_4
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1051
    .line 1052
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v8
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    .line 1056
    new-instance v9, Landroid/graphics/Canvas;

    .line 1057
    .line 1058
    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1059
    .line 1060
    .line 1061
    sget v10, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 1062
    .line 1063
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1064
    .line 1065
    .line 1066
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 1067
    .line 1068
    sub-int v10, v6, v10

    .line 1069
    .line 1070
    if-lez v10, :cond_4c

    .line 1071
    .line 1072
    new-instance v11, Landroid/text/TextPaint;

    .line 1073
    .line 1074
    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    .line 1075
    .line 1076
    .line 1077
    const/4 v12, 0x1

    .line 1078
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1079
    .line 1080
    .line 1081
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 1082
    .line 1083
    div-int/lit8 v12, v12, 0x2

    .line 1084
    .line 1085
    int-to-float v12, v12

    .line 1086
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1087
    .line 1088
    .line 1089
    sget v12, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 1090
    .line 1091
    const v13, 0x3e4ccccd    # 0.2f

    .line 1092
    .line 1093
    .line 1094
    cmpl-float v12, v12, v13

    .line 1095
    .line 1096
    if-lez v12, :cond_3a

    .line 1097
    .line 1098
    const v12, -0x50506

    .line 1099
    .line 1100
    .line 1101
    goto :goto_27

    .line 1102
    :cond_3a
    const/high16 v12, -0x1000000

    .line 1103
    .line 1104
    :goto_27
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1105
    .line 1106
    .line 1107
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1108
    .line 1109
    const/4 v13, 0x1

    .line 1110
    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v12

    .line 1114
    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1115
    .line 1116
    .line 1117
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1118
    .line 1119
    invoke-static {v4, v11, v10}, Lcom/mycompany/app/main/MainUtil;->y3(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4

    .line 1123
    sub-int/2addr v6, v10

    .line 1124
    int-to-float v6, v6

    .line 1125
    div-float/2addr v6, v5

    .line 1126
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    .line 1127
    .line 1128
    .line 1129
    move-result v10

    .line 1130
    sub-int/2addr v7, v10

    .line 1131
    int-to-float v7, v7

    .line 1132
    div-float/2addr v7, v5

    .line 1133
    invoke-virtual {v9, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v4, v9}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_2f

    .line 1140
    .line 1141
    :catch_4
    :cond_3b
    :goto_28
    move-object v8, v3

    .line 1142
    goto/16 :goto_2f

    .line 1143
    .line 1144
    :cond_3c
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 1145
    .line 1146
    if-eqz v4, :cond_3f

    .line 1147
    .line 1148
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1149
    .line 1150
    if-nez v4, :cond_3d

    .line 1151
    .line 1152
    goto :goto_28

    .line 1153
    :cond_3d
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 1154
    .line 1155
    .line 1156
    move-result v4

    .line 1157
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1158
    .line 1159
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 1160
    .line 1161
    .line 1162
    move-result v6

    .line 1163
    if-eqz v4, :cond_3b

    .line 1164
    .line 1165
    if-nez v6, :cond_3e

    .line 1166
    .line 1167
    goto :goto_28

    .line 1168
    :cond_3e
    iget-object v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->b:Landroid/content/Context;

    .line 1169
    .line 1170
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v7

    .line 1174
    invoke-static {}, Lcom/mycompany/app/view/MyImageView;->getErrorIcon()I

    .line 1175
    .line 1176
    .line 1177
    move-result v8

    .line 1178
    invoke-static {v7, v8}, Lcom/mycompany/app/main/BitmapUtil;->d(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v7

    .line 1182
    :try_start_5
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1183
    .line 1184
    invoke-static {v4, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v8
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    .line 1188
    new-instance v9, Landroid/graphics/Canvas;

    .line 1189
    .line 1190
    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1191
    .line 1192
    .line 1193
    sget v10, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 1194
    .line 1195
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1196
    .line 1197
    .line 1198
    if-eqz v7, :cond_4c

    .line 1199
    .line 1200
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1201
    .line 1202
    .line 1203
    move-result v10

    .line 1204
    if-nez v10, :cond_4c

    .line 1205
    .line 1206
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1207
    .line 1208
    .line 1209
    move-result v10

    .line 1210
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1211
    .line 1212
    .line 1213
    move-result v11

    .line 1214
    new-instance v12, Landroid/graphics/Paint;

    .line 1215
    .line 1216
    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1217
    .line 1218
    .line 1219
    const/4 v13, 0x1

    .line 1220
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1224
    .line 1225
    .line 1226
    sub-int/2addr v4, v10

    .line 1227
    int-to-float v4, v4

    .line 1228
    div-float/2addr v4, v5

    .line 1229
    sub-int/2addr v6, v11

    .line 1230
    int-to-float v6, v6

    .line 1231
    div-float/2addr v6, v5

    .line 1232
    invoke-virtual {v9, v7, v4, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_2f

    .line 1239
    .line 1240
    :cond_3f
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 1241
    .line 1242
    iget-boolean v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 1243
    .line 1244
    if-eqz v4, :cond_4a

    .line 1245
    .line 1246
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1247
    .line 1248
    .line 1249
    move-result v7

    .line 1250
    if-eqz v7, :cond_40

    .line 1251
    .line 1252
    goto/16 :goto_2d

    .line 1253
    .line 1254
    :cond_40
    iget-object v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1255
    .line 1256
    if-nez v7, :cond_41

    .line 1257
    .line 1258
    goto/16 :goto_2d

    .line 1259
    .line 1260
    :cond_41
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 1261
    .line 1262
    .line 1263
    move-result v7

    .line 1264
    iget-object v8, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1265
    .line 1266
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 1267
    .line 1268
    .line 1269
    move-result v8

    .line 1270
    if-eqz v7, :cond_4a

    .line 1271
    .line 1272
    if-nez v8, :cond_42

    .line 1273
    .line 1274
    goto/16 :goto_2d

    .line 1275
    .line 1276
    :cond_42
    :try_start_6
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1277
    .line 1278
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v9
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_5

    .line 1282
    new-instance v10, Landroid/graphics/Canvas;

    .line 1283
    .line 1284
    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1285
    .line 1286
    .line 1287
    sget v11, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 1288
    .line 1289
    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1290
    .line 1291
    .line 1292
    const/4 v11, 0x0

    .line 1293
    if-eqz v6, :cond_46

    .line 1294
    .line 1295
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 1296
    .line 1297
    if-eqz v6, :cond_46

    .line 1298
    .line 1299
    iget-object v5, v6, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 1300
    .line 1301
    if-nez v5, :cond_43

    .line 1302
    .line 1303
    move v6, v11

    .line 1304
    goto :goto_29

    .line 1305
    :cond_43
    iget v6, v5, Landroid/graphics/RectF;->right:F

    .line 1306
    .line 1307
    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 1308
    .line 1309
    sub-float/2addr v6, v5

    .line 1310
    :goto_29
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1311
    .line 1312
    .line 1313
    move-result v5

    .line 1314
    int-to-float v5, v5

    .line 1315
    div-float/2addr v6, v5

    .line 1316
    iget-object v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 1317
    .line 1318
    iget-object v5, v5, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 1319
    .line 1320
    if-nez v5, :cond_44

    .line 1321
    .line 1322
    move v7, v11

    .line 1323
    goto :goto_2a

    .line 1324
    :cond_44
    iget v7, v5, Landroid/graphics/RectF;->left:F

    .line 1325
    .line 1326
    :goto_2a
    div-float/2addr v7, v6

    .line 1327
    if-nez v5, :cond_45

    .line 1328
    .line 1329
    goto :goto_2b

    .line 1330
    :cond_45
    iget v11, v5, Landroid/graphics/RectF;->top:F

    .line 1331
    .line 1332
    :goto_2b
    div-float/2addr v11, v6

    .line 1333
    move/from16 v23, v11

    .line 1334
    .line 1335
    move v11, v7

    .line 1336
    move/from16 v7, v23

    .line 1337
    .line 1338
    goto :goto_2c

    .line 1339
    :cond_46
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 1340
    .line 1341
    .line 1342
    move-result v6

    .line 1343
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 1344
    .line 1345
    .line 1346
    move-result v12

    .line 1347
    iget-object v13, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 1348
    .line 1349
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v13

    .line 1353
    if-eqz v13, :cond_48

    .line 1354
    .line 1355
    int-to-float v7, v7

    .line 1356
    int-to-float v6, v6

    .line 1357
    div-float v13, v7, v6

    .line 1358
    .line 1359
    int-to-float v12, v12

    .line 1360
    mul-float v14, v12, v13

    .line 1361
    .line 1362
    int-to-float v8, v8

    .line 1363
    cmpl-float v14, v14, v8

    .line 1364
    .line 1365
    if-lez v14, :cond_47

    .line 1366
    .line 1367
    div-float/2addr v8, v12

    .line 1368
    div-float/2addr v7, v8

    .line 1369
    sub-float/2addr v7, v6

    .line 1370
    div-float/2addr v7, v5

    .line 1371
    move v6, v11

    .line 1372
    move v11, v7

    .line 1373
    move v7, v6

    .line 1374
    move v6, v8

    .line 1375
    goto :goto_2c

    .line 1376
    :cond_47
    div-float/2addr v8, v13

    .line 1377
    sub-float/2addr v8, v12

    .line 1378
    div-float/2addr v8, v5

    .line 1379
    move v7, v8

    .line 1380
    move v6, v13

    .line 1381
    goto :goto_2c

    .line 1382
    :cond_48
    int-to-float v7, v7

    .line 1383
    int-to-float v6, v6

    .line 1384
    div-float v6, v7, v6

    .line 1385
    .line 1386
    int-to-float v7, v8

    .line 1387
    div-float/2addr v7, v6

    .line 1388
    int-to-float v8, v12

    .line 1389
    sub-float/2addr v7, v8

    .line 1390
    div-float/2addr v7, v5

    .line 1391
    cmpg-float v5, v7, v11

    .line 1392
    .line 1393
    if-gez v5, :cond_49

    .line 1394
    .line 1395
    move v7, v11

    .line 1396
    :cond_49
    :goto_2c
    invoke-virtual {v10, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 1400
    .line 1401
    .line 1402
    move-result v5

    .line 1403
    if-nez v5, :cond_4b

    .line 1404
    .line 1405
    new-instance v5, Landroid/graphics/Paint;

    .line 1406
    .line 1407
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1408
    .line 1409
    .line 1410
    const/4 v8, 0x1

    .line 1411
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v10, v4, v11, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1418
    .line 1419
    .line 1420
    goto :goto_2e

    .line 1421
    :catch_5
    :cond_4a
    :goto_2d
    move-object v9, v3

    .line 1422
    :cond_4b
    :goto_2e
    move-object v8, v9

    .line 1423
    :cond_4c
    :goto_2f
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1424
    .line 1425
    if-nez v4, :cond_4d

    .line 1426
    .line 1427
    goto/16 :goto_31

    .line 1428
    .line 1429
    :cond_4d
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1430
    .line 1431
    if-eqz v4, :cond_4e

    .line 1432
    .line 1433
    goto/16 :goto_31

    .line 1434
    .line 1435
    :cond_4e
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 1436
    .line 1437
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1438
    .line 1439
    .line 1440
    move-result v4

    .line 1441
    if-nez v4, :cond_4f

    .line 1442
    .line 1443
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 1444
    .line 1445
    iget-object v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 1446
    .line 1447
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    .line 1449
    .line 1450
    move-result v4

    .line 1451
    if-nez v4, :cond_4f

    .line 1452
    .line 1453
    goto/16 :goto_31

    .line 1454
    .line 1455
    :cond_4f
    iget-object v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 1456
    .line 1457
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 1458
    .line 1459
    invoke-virtual {v4, v5, v8}, Lcom/mycompany/app/curl/CurlMesh;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1460
    .line 1461
    .line 1462
    const/4 v9, 0x1

    .line 1463
    iput-boolean v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->i:Z

    .line 1464
    .line 1465
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 1466
    .line 1467
    if-eqz v4, :cond_50

    .line 1468
    .line 1469
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 1470
    .line 1471
    if-nez v4, :cond_50

    .line 1472
    .line 1473
    const/4 v6, 0x0

    .line 1474
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->p:Z

    .line 1475
    .line 1476
    goto :goto_30

    .line 1477
    :cond_50
    const/4 v6, 0x0

    .line 1478
    :goto_30
    iput-boolean v9, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 1479
    .line 1480
    iput-boolean v6, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 1481
    .line 1482
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 1483
    .line 1484
    iget v5, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 1485
    .line 1486
    if-ne v4, v5, :cond_53

    .line 1487
    .line 1488
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 1489
    .line 1490
    if-eqz v4, :cond_53

    .line 1491
    .line 1492
    iget-object v4, v4, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 1493
    .line 1494
    if-nez v4, :cond_51

    .line 1495
    .line 1496
    move-object v4, v3

    .line 1497
    :cond_51
    if-eqz v4, :cond_52

    .line 1498
    .line 1499
    new-instance v3, Landroid/graphics/RectF;

    .line 1500
    .line 1501
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1502
    .line 1503
    .line 1504
    :cond_52
    move-object v4, v3

    .line 1505
    iput-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->m0:Landroid/graphics/RectF;

    .line 1506
    .line 1507
    :cond_53
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 1508
    .line 1509
    if-nez v3, :cond_54

    .line 1510
    .line 1511
    goto :goto_31

    .line 1512
    :cond_54
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1513
    .line 1514
    if-eqz v3, :cond_55

    .line 1515
    .line 1516
    goto :goto_31

    .line 1517
    :cond_55
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 1518
    .line 1519
    if-nez v3, :cond_56

    .line 1520
    .line 1521
    goto :goto_31

    .line 1522
    :cond_56
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 1523
    .line 1524
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v3

    .line 1528
    if-nez v3, :cond_57

    .line 1529
    .line 1530
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 1531
    .line 1532
    iget-object v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 1533
    .line 1534
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v3

    .line 1538
    if-nez v3, :cond_57

    .line 1539
    .line 1540
    goto :goto_31

    .line 1541
    :cond_57
    const/4 v6, 0x0

    .line 1542
    invoke-virtual {v1, v6}, Lcom/mycompany/app/image/ImageViewPageEffect;->g0(Z)V

    .line 1543
    .line 1544
    .line 1545
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 1546
    .line 1547
    const/16 v22, 0x1

    .line 1548
    .line 1549
    add-int/lit8 v3, v3, 0x1

    .line 1550
    .line 1551
    invoke-virtual {v1, v3}, Lcom/mycompany/app/image/ImageViewPageEffect;->c0(I)V

    .line 1552
    .line 1553
    .line 1554
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 1555
    .line 1556
    add-int/lit8 v2, v2, -0x1

    .line 1557
    .line 1558
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->c0(I)V

    .line 1559
    .line 1560
    .line 1561
    :cond_58
    :goto_31
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 25
    .line 26
    .line 27
    :cond_3
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_2
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->i:Z

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 28
    .line 29
    .line 30
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 31
    .line 32
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 33
    .line 34
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_11

    .line 37
    .line 38
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 39
    .line 40
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_11

    .line 43
    .line 44
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 45
    .line 46
    iget v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 47
    .line 48
    if-eq v2, v3, :cond_4

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    iget-object v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :cond_5
    iget-boolean v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->h:Z

    .line 73
    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/mycompany/app/curl/CurlView;->setPrepared(Z)V

    .line 80
    .line 81
    .line 82
    :cond_6
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 83
    .line 84
    iget-object v2, v2, Lcom/mycompany/app/curl/CurlView;->h:Lcom/mycompany/app/curl/CurlRenderer;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/mycompany/app/curl/CurlRenderer;->g:Ljava/util/ArrayList;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v5, 0x3

    .line 96
    if-ge v4, v5, :cond_7

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_7
    move v4, v3

    .line 100
    :goto_0
    if-ge v4, v5, :cond_11

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Lcom/mycompany/app/curl/CurlMesh;

    .line 107
    .line 108
    if-nez v6, :cond_8

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_8
    iget-object v6, v6, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 112
    .line 113
    if-eqz v6, :cond_a

    .line 114
    .line 115
    iget-boolean v6, v6, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 116
    .line 117
    if-nez v6, :cond_9

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_a
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/mycompany/app/curl/CurlView;->getPageList()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-nez v2, :cond_b

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_b
    iget-object v4, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 133
    .line 134
    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    const/4 v5, -0x1

    .line 139
    if-ne v4, v5, :cond_c

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_c
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    :goto_2
    if-ge v3, v5, :cond_11

    .line 147
    .line 148
    if-ne v3, v4, :cond_d

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_d
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lcom/mycompany/app/curl/CurlMesh;

    .line 156
    .line 157
    if-nez v6, :cond_e

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_e
    iget-object v7, v6, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 161
    .line 162
    if-eqz v7, :cond_f

    .line 163
    .line 164
    iget-boolean v8, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 165
    .line 166
    if-eqz v8, :cond_f

    .line 167
    .line 168
    iget-boolean v8, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 169
    .line 170
    if-nez v8, :cond_f

    .line 171
    .line 172
    iget-boolean v7, v7, Lcom/mycompany/app/main/MainItem$ViewItem;->p:Z

    .line 173
    .line 174
    if-eqz v7, :cond_10

    .line 175
    .line 176
    :cond_f
    iget v7, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 177
    .line 178
    sub-int v8, v3, v4

    .line 179
    .line 180
    add-int/2addr v8, v7

    .line 181
    invoke-static {v0, v6, v8}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/curl/CurlMesh;I)Lcom/mycompany/app/main/MainItem$ViewItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    :cond_10
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catch_0
    :cond_11
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->g:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_10

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$ImageTask;->f:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 30
    .line 31
    if-eqz v2, :cond_10

    .line 32
    .line 33
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 34
    .line 35
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 36
    .line 37
    if-eq v3, v4, :cond_3

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_3
    iget-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->n0:Z

    .line 42
    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 46
    .line 47
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 48
    .line 49
    if-ne v3, v4, :cond_4

    .line 50
    .line 51
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 52
    .line 53
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 54
    .line 55
    if-ne v3, v4, :cond_4

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_4
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_5

    .line 66
    .line 67
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_5
    const/4 v3, 0x0

    .line 80
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->n0:Z

    .line 81
    .line 82
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    const/4 v6, 0x2

    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    move v4, v6

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    iget-boolean v4, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 91
    .line 92
    if-eqz v4, :cond_7

    .line 93
    .line 94
    move v4, v5

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    move v4, v3

    .line 97
    :goto_0
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 98
    .line 99
    iget-object v8, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 100
    .line 101
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyImageView;->setFit(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 109
    .line 110
    iget-object v8, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->k:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v7, v4, v8}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 116
    .line 117
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    .line 119
    .line 120
    iget-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 121
    .line 122
    iget-boolean v8, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->l:Z

    .line 123
    .line 124
    if-nez v7, :cond_8

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_8
    new-instance v9, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 128
    .line 129
    invoke-direct {v9, v7, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 130
    .line 131
    .line 132
    iput-object v9, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 133
    .line 134
    iget-object v10, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 135
    .line 136
    iput-object v10, v9, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 137
    .line 138
    iput-boolean v8, v9, Lcom/mycompany/app/zoom/ZoomImageAttacher;->x:Z

    .line 139
    .line 140
    iput-boolean v5, v9, Lcom/mycompany/app/zoom/ZoomImageAttacher;->z:Z

    .line 141
    .line 142
    invoke-virtual {v9}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->onGlobalLayout()V

    .line 143
    .line 144
    .line 145
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 146
    .line 147
    invoke-virtual {v7, v5}, Lcom/mycompany/app/view/MyImageView;->setAttacher(Lcom/mycompany/app/zoom/ZoomImageAttacher;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 151
    .line 152
    if-eqz v5, :cond_b

    .line 153
    .line 154
    iget-object v5, v5, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    if-nez v5, :cond_9

    .line 158
    .line 159
    move-object v5, v7

    .line 160
    :cond_9
    if-eqz v5, :cond_a

    .line 161
    .line 162
    new-instance v7, Landroid/graphics/RectF;

    .line 163
    .line 164
    invoke-direct {v7, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    iput-object v7, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->m0:Landroid/graphics/RectF;

    .line 168
    .line 169
    :cond_b
    iget v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L:I

    .line 170
    .line 171
    if-nez v5, :cond_c

    .line 172
    .line 173
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 174
    .line 175
    new-instance v7, Lcom/mycompany/app/image/ImageViewPageEffect$24;

    .line 176
    .line 177
    invoke-direct {v7, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$24;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    .line 182
    .line 183
    :cond_c
    iget v5, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 184
    .line 185
    iput v5, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 186
    .line 187
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 188
    .line 189
    iput v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 190
    .line 191
    if-nez v4, :cond_f

    .line 192
    .line 193
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_f

    .line 198
    .line 199
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 200
    .line 201
    const/4 v4, 0x3

    .line 202
    if-eq v2, v4, :cond_d

    .line 203
    .line 204
    const/4 v4, 0x4

    .line 205
    if-ne v2, v4, :cond_e

    .line 206
    .line 207
    :cond_d
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 208
    .line 209
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_e

    .line 214
    .line 215
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    mul-int/2addr v2, v6

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 237
    .line 238
    .line 239
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 240
    .line 241
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-nez v1, :cond_10

    .line 248
    .line 249
    new-instance v1, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 250
    .line 251
    iget v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->W:I

    .line 252
    .line 253
    iget v4, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->X:I

    .line 254
    .line 255
    invoke-direct {v1, v2, v4, v3}, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;-><init>(III)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 259
    .line 260
    iget v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 261
    .line 262
    invoke-virtual {v2, v0}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v0, v1}, Lcom/mycompany/app/compress/Compress;->P(Ljava/lang/String;Lcom/mycompany/app/compress/CompressCache$BitmapInfo;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_f
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 271
    .line 272
    .line 273
    :cond_10
    :goto_3
    return-void
.end method
