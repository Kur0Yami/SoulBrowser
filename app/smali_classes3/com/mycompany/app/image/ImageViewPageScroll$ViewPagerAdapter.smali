.class Lcom/mycompany/app/image/ImageViewPageScroll$ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/image/ImageViewPageScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$ViewPagerAdapter;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    return v0
.end method

.method public final d(Landroidx/viewpager/widget/ViewPager;I)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Lcom/mycompany/app/view/MyImageView;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/image/ImageViewPageScroll$ViewPagerAdapter;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 10
    .line 11
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 12
    .line 13
    invoke-direct {v2, v5}, Lcom/mycompany/app/view/MyImageView;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyImageView;->setDrawBack(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v7, -0x1

    .line 23
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 34
    .line 35
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyImageView;->setParentView(Landroid/view/ViewGroup;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 39
    .line 40
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 41
    .line 42
    const/4 v10, 0x3

    .line 43
    const/4 v11, 0x2

    .line 44
    const/4 v12, 0x0

    .line 45
    if-lez v8, :cond_21

    .line 46
    .line 47
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 48
    .line 49
    const/4 v13, 0x4

    .line 50
    if-ne v1, v8, :cond_9

    .line 51
    .line 52
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 53
    .line 54
    iget-object v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 55
    .line 56
    invoke-static {v14}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    if-nez v14, :cond_1

    .line 61
    .line 62
    move v13, v5

    .line 63
    :goto_0
    move v8, v12

    .line 64
    move v9, v8

    .line 65
    :goto_1
    move v14, v9

    .line 66
    :goto_2
    const/4 v15, 0x0

    .line 67
    goto/16 :goto_19

    .line 68
    .line 69
    :cond_1
    if-eqz v8, :cond_3

    .line 70
    .line 71
    if-ne v8, v5, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    move v13, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :goto_3
    iget v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->A:I

    .line 77
    .line 78
    if-eqz v14, :cond_4

    .line 79
    .line 80
    iput v12, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->A:I

    .line 81
    .line 82
    move v13, v8

    .line 83
    move v8, v12

    .line 84
    move v9, v8

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 87
    .line 88
    invoke-virtual {v14, v6}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    if-eqz v14, :cond_7

    .line 93
    .line 94
    iget v8, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 95
    .line 96
    iget v15, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 97
    .line 98
    if-le v8, v15, :cond_6

    .line 99
    .line 100
    iget-boolean v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 101
    .line 102
    if-eqz v8, :cond_5

    .line 103
    .line 104
    :goto_4
    move v8, v12

    .line 105
    move v9, v8

    .line 106
    :goto_5
    move-object v15, v14

    .line 107
    move v14, v9

    .line 108
    goto/16 :goto_19

    .line 109
    .line 110
    :cond_5
    move v13, v10

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    move v13, v11

    .line 113
    goto :goto_4

    .line 114
    :cond_7
    iget-boolean v15, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 115
    .line 116
    if-eqz v15, :cond_8

    .line 117
    .line 118
    move v9, v12

    .line 119
    move-object v15, v14

    .line 120
    move v14, v13

    .line 121
    move v13, v8

    .line 122
    move v8, v9

    .line 123
    goto/16 :goto_19

    .line 124
    .line 125
    :cond_8
    move v13, v8

    .line 126
    move v8, v12

    .line 127
    move v9, v8

    .line 128
    :goto_6
    move-object v15, v14

    .line 129
    move v14, v10

    .line 130
    goto/16 :goto_19

    .line 131
    .line 132
    :cond_9
    if-ge v1, v8, :cond_15

    .line 133
    .line 134
    iget-object v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 135
    .line 136
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_d

    .line 141
    .line 142
    iget-boolean v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 143
    .line 144
    if-eqz v6, :cond_b

    .line 145
    .line 146
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 147
    .line 148
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 149
    .line 150
    sub-int/2addr v8, v5

    .line 151
    if-ne v6, v8, :cond_a

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_a

    .line 158
    .line 159
    move v6, v5

    .line 160
    goto :goto_7

    .line 161
    :cond_a
    move v6, v12

    .line 162
    :goto_7
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 163
    .line 164
    add-int/2addr v8, v5

    .line 165
    iget v13, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 166
    .line 167
    rem-int/2addr v8, v13

    .line 168
    :goto_8
    move/from16 v18, v8

    .line 169
    .line 170
    move v8, v6

    .line 171
    move/from16 v6, v18

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_b
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 175
    .line 176
    if-nez v6, :cond_c

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_c

    .line 183
    .line 184
    move v6, v5

    .line 185
    goto :goto_9

    .line 186
    :cond_c
    move v6, v12

    .line 187
    :goto_9
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 188
    .line 189
    iget v13, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 190
    .line 191
    invoke-static {v8, v13, v5, v13}, Landroid/support/v4/media/a;->B(IIII)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    goto :goto_8

    .line 196
    :goto_a
    move v13, v5

    .line 197
    :goto_b
    move v9, v12

    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_d
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 201
    .line 202
    if-ne v8, v13, :cond_e

    .line 203
    .line 204
    move v13, v10

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_e
    iget-boolean v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 208
    .line 209
    if-eqz v6, :cond_10

    .line 210
    .line 211
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 212
    .line 213
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 214
    .line 215
    sub-int/2addr v8, v5

    .line 216
    if-ne v6, v8, :cond_f

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_f

    .line 223
    .line 224
    move v6, v5

    .line 225
    goto :goto_c

    .line 226
    :cond_f
    move v6, v12

    .line 227
    :goto_c
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 228
    .line 229
    add-int/2addr v8, v5

    .line 230
    iget v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 231
    .line 232
    rem-int/2addr v8, v14

    .line 233
    :goto_d
    move/from16 v18, v8

    .line 234
    .line 235
    move v8, v6

    .line 236
    move/from16 v6, v18

    .line 237
    .line 238
    goto :goto_f

    .line 239
    :cond_10
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 240
    .line 241
    if-nez v6, :cond_11

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_11

    .line 248
    .line 249
    move v6, v5

    .line 250
    goto :goto_e

    .line 251
    :cond_11
    move v6, v12

    .line 252
    :goto_e
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 253
    .line 254
    iget v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 255
    .line 256
    invoke-static {v8, v14, v5, v14}, Landroid/support/v4/media/a;->B(IIII)I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    goto :goto_d

    .line 261
    :goto_f
    if-eqz v8, :cond_12

    .line 262
    .line 263
    :goto_10
    move v13, v11

    .line 264
    goto :goto_b

    .line 265
    :cond_12
    iget-object v14, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 266
    .line 267
    invoke-virtual {v14, v6}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 268
    .line 269
    .line 270
    move-result-object v14

    .line 271
    if-eqz v14, :cond_14

    .line 272
    .line 273
    iget v15, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 274
    .line 275
    iget v9, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 276
    .line 277
    if-le v15, v9, :cond_13

    .line 278
    .line 279
    :goto_11
    move v9, v12

    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_13
    move v13, v11

    .line 283
    goto :goto_11

    .line 284
    :cond_14
    move v9, v12

    .line 285
    move-object v15, v14

    .line 286
    move v14, v13

    .line 287
    move v13, v9

    .line 288
    goto/16 :goto_19

    .line 289
    .line 290
    :cond_15
    if-le v1, v8, :cond_20

    .line 291
    .line 292
    iget-object v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 293
    .line 294
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 295
    .line 296
    .line 297
    move-result v8

    .line 298
    if-nez v8, :cond_19

    .line 299
    .line 300
    iget-boolean v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 301
    .line 302
    if-eqz v6, :cond_17

    .line 303
    .line 304
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 305
    .line 306
    if-nez v6, :cond_16

    .line 307
    .line 308
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-eqz v6, :cond_16

    .line 313
    .line 314
    move v6, v5

    .line 315
    goto :goto_12

    .line 316
    :cond_16
    move v6, v12

    .line 317
    :goto_12
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 318
    .line 319
    iget v9, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 320
    .line 321
    invoke-static {v8, v9, v5, v9}, Landroid/support/v4/media/a;->B(IIII)I

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    goto/16 :goto_8

    .line 326
    .line 327
    :cond_17
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 328
    .line 329
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 330
    .line 331
    sub-int/2addr v8, v5

    .line 332
    if-ne v6, v8, :cond_18

    .line 333
    .line 334
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eqz v6, :cond_18

    .line 339
    .line 340
    move v6, v5

    .line 341
    goto :goto_13

    .line 342
    :cond_18
    move v6, v12

    .line 343
    :goto_13
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 344
    .line 345
    add-int/2addr v8, v5

    .line 346
    iget v9, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 347
    .line 348
    rem-int/2addr v8, v9

    .line 349
    goto/16 :goto_8

    .line 350
    .line 351
    :cond_19
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 352
    .line 353
    if-ne v8, v10, :cond_1a

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_1a
    iget-boolean v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 358
    .line 359
    if-eqz v6, :cond_1c

    .line 360
    .line 361
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 362
    .line 363
    if-nez v6, :cond_1b

    .line 364
    .line 365
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-eqz v6, :cond_1b

    .line 370
    .line 371
    move v6, v5

    .line 372
    goto :goto_14

    .line 373
    :cond_1b
    move v6, v12

    .line 374
    :goto_14
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 375
    .line 376
    iget v9, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 377
    .line 378
    invoke-static {v8, v9, v5, v9}, Landroid/support/v4/media/a;->B(IIII)I

    .line 379
    .line 380
    .line 381
    move-result v8

    .line 382
    :goto_15
    move/from16 v18, v8

    .line 383
    .line 384
    move v8, v6

    .line 385
    move/from16 v6, v18

    .line 386
    .line 387
    goto :goto_17

    .line 388
    :cond_1c
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 389
    .line 390
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 391
    .line 392
    sub-int/2addr v8, v5

    .line 393
    if-ne v6, v8, :cond_1d

    .line 394
    .line 395
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eqz v6, :cond_1d

    .line 400
    .line 401
    move v6, v5

    .line 402
    goto :goto_16

    .line 403
    :cond_1d
    move v6, v12

    .line 404
    :goto_16
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 405
    .line 406
    add-int/2addr v8, v5

    .line 407
    iget v9, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 408
    .line 409
    rem-int/2addr v8, v9

    .line 410
    goto :goto_15

    .line 411
    :goto_17
    if-eqz v8, :cond_1e

    .line 412
    .line 413
    goto/16 :goto_10

    .line 414
    .line 415
    :cond_1e
    iget-object v9, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 416
    .line 417
    invoke-virtual {v9, v6}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 418
    .line 419
    .line 420
    move-result-object v14

    .line 421
    if-eqz v14, :cond_1f

    .line 422
    .line 423
    iget v9, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 424
    .line 425
    iget v13, v14, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 426
    .line 427
    if-le v9, v13, :cond_13

    .line 428
    .line 429
    move v13, v10

    .line 430
    goto/16 :goto_11

    .line 431
    .line 432
    :cond_1f
    move v9, v12

    .line 433
    move v13, v9

    .line 434
    goto/16 :goto_6

    .line 435
    .line 436
    :cond_20
    move v8, v12

    .line 437
    move v9, v8

    .line 438
    move v13, v9

    .line 439
    move v14, v13

    .line 440
    goto/16 :goto_2

    .line 441
    .line 442
    :cond_21
    iget v8, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 443
    .line 444
    if-eq v1, v8, :cond_22

    .line 445
    .line 446
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->P0()Z

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    if-eqz v8, :cond_22

    .line 451
    .line 452
    move v8, v5

    .line 453
    move v9, v12

    .line 454
    goto :goto_18

    .line 455
    :cond_22
    move v9, v5

    .line 456
    move v8, v12

    .line 457
    :goto_18
    move v13, v11

    .line 458
    move v14, v12

    .line 459
    goto/16 :goto_2

    .line 460
    .line 461
    :goto_19
    iget v12, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 462
    .line 463
    if-le v12, v11, :cond_2d

    .line 464
    .line 465
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 466
    .line 467
    .line 468
    move-result v12

    .line 469
    const/4 v7, 0x0

    .line 470
    const/4 v10, 0x0

    .line 471
    :goto_1a
    if-ge v7, v12, :cond_2b

    .line 472
    .line 473
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    if-nez v11, :cond_23

    .line 478
    .line 479
    goto :goto_1b

    .line 480
    :cond_23
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v16

    .line 484
    move-object/from16 v5, v16

    .line 485
    .line 486
    check-cast v5, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 487
    .line 488
    if-nez v5, :cond_24

    .line 489
    .line 490
    goto :goto_1b

    .line 491
    :cond_24
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 492
    .line 493
    if-ne v3, v1, :cond_26

    .line 494
    .line 495
    if-nez v10, :cond_25

    .line 496
    .line 497
    new-instance v10, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    :cond_25
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    goto :goto_1b

    .line 506
    :cond_26
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 507
    .line 508
    move/from16 v16, v3

    .line 509
    .line 510
    if-ne v3, v6, :cond_28

    .line 511
    .line 512
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 513
    .line 514
    if-ne v3, v13, :cond_28

    .line 515
    .line 516
    iget v3, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 517
    .line 518
    if-ne v3, v14, :cond_28

    .line 519
    .line 520
    if-nez v10, :cond_27

    .line 521
    .line 522
    new-instance v10, Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .line 526
    .line 527
    :cond_27
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    goto :goto_1b

    .line 531
    :cond_28
    iget v3, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->y:I

    .line 532
    .line 533
    sub-int v3, v3, v16

    .line 534
    .line 535
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    const/4 v5, 0x1

    .line 540
    if-le v3, v5, :cond_2a

    .line 541
    .line 542
    move/from16 v17, v5

    .line 543
    .line 544
    iget v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->x:I

    .line 545
    .line 546
    add-int/lit8 v5, v5, -0x1

    .line 547
    .line 548
    if-eq v3, v5, :cond_2a

    .line 549
    .line 550
    if-nez v10, :cond_29

    .line 551
    .line 552
    new-instance v10, Ljava/util/ArrayList;

    .line 553
    .line 554
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .line 556
    .line 557
    :cond_29
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    :cond_2a
    :goto_1b
    add-int/lit8 v7, v7, 0x1

    .line 561
    .line 562
    move-object/from16 v3, p0

    .line 563
    .line 564
    const/4 v5, 0x1

    .line 565
    const/4 v11, 0x2

    .line 566
    goto :goto_1a

    .line 567
    :cond_2b
    if-eqz v10, :cond_2d

    .line 568
    .line 569
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    sub-int/2addr v12, v3

    .line 574
    if-lez v12, :cond_2d

    .line 575
    .line 576
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    const/4 v5, 0x0

    .line 581
    :goto_1c
    if-ge v5, v3, :cond_2d

    .line 582
    .line 583
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    add-int/lit8 v5, v5, 0x1

    .line 588
    .line 589
    check-cast v7, Landroid/view/View;

    .line 590
    .line 591
    if-nez v7, :cond_2c

    .line 592
    .line 593
    goto :goto_1c

    .line 594
    :cond_2c
    move-object v11, v7

    .line 595
    check-cast v11, Lcom/mycompany/app/view/MyImageView;

    .line 596
    .line 597
    invoke-virtual {v11}, Lcom/mycompany/app/view/MyImageView;->d()V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v7}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 601
    .line 602
    .line 603
    goto :goto_1c

    .line 604
    :cond_2d
    new-instance v3, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 605
    .line 606
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 607
    .line 608
    .line 609
    const/16 v5, 0x8

    .line 610
    .line 611
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 612
    .line 613
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->E:Lcom/mycompany/app/compress/Compress;

    .line 614
    .line 615
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 616
    .line 617
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->m:Ljava/lang/String;

    .line 618
    .line 619
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 620
    .line 621
    iput-object v2, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->d:Lcom/mycompany/app/view/MyImageView;

    .line 622
    .line 623
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->e:I

    .line 624
    .line 625
    iput v6, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 626
    .line 627
    iput v13, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 628
    .line 629
    iput v14, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->h:I

    .line 630
    .line 631
    iput-object v15, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 632
    .line 633
    iput-boolean v8, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 634
    .line 635
    iput-boolean v8, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->m:Z

    .line 636
    .line 637
    xor-int/lit8 v5, v8, 0x1

    .line 638
    .line 639
    iput-boolean v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->n:Z

    .line 640
    .line 641
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 642
    .line 643
    invoke-virtual {v4}, Lcom/mycompany/app/image/ImageViewPageScroll;->O0()Z

    .line 644
    .line 645
    .line 646
    move-result v6

    .line 647
    iget v7, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 648
    .line 649
    const/4 v10, 0x2

    .line 650
    if-ne v7, v10, :cond_2e

    .line 651
    .line 652
    const/4 v7, 0x1

    .line 653
    goto :goto_1d

    .line 654
    :cond_2e
    const/4 v7, 0x0

    .line 655
    :goto_1d
    invoke-static {v5, v6, v7}, Lcom/mycompany/app/main/MainUtil;->l0(Landroid/content/Context;ZZ)I

    .line 656
    .line 657
    .line 658
    move-result v5

    .line 659
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 660
    .line 661
    iget v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 662
    .line 663
    const/16 v6, 0xc

    .line 664
    .line 665
    if-ne v5, v6, :cond_2f

    .line 666
    .line 667
    const/4 v5, 0x1

    .line 668
    goto :goto_1e

    .line 669
    :cond_2f
    const/4 v5, 0x0

    .line 670
    :goto_1e
    iput-boolean v5, v3, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 671
    .line 672
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 676
    .line 677
    .line 678
    iget-object v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 679
    .line 680
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyImageView;->setFit(Z)V

    .line 685
    .line 686
    .line 687
    if-eqz v8, :cond_41

    .line 688
    .line 689
    iget-object v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->w:Ljava/lang/String;

    .line 690
    .line 691
    iget v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 692
    .line 693
    if-le v1, v5, :cond_30

    .line 694
    .line 695
    const/4 v12, 0x1

    .line 696
    goto :goto_1f

    .line 697
    :cond_30
    const/4 v12, 0x0

    .line 698
    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 699
    .line 700
    .line 701
    move-result v5

    .line 702
    if-eqz v5, :cond_31

    .line 703
    .line 704
    goto/16 :goto_24

    .line 705
    .line 706
    :cond_31
    iget v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 707
    .line 708
    const/4 v6, 0x1

    .line 709
    if-ne v5, v6, :cond_32

    .line 710
    .line 711
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 712
    .line 713
    invoke-static {v5}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    iget-object v5, v5, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 718
    .line 719
    goto :goto_20

    .line 720
    :cond_32
    const/4 v10, 0x2

    .line 721
    if-ne v5, v10, :cond_33

    .line 722
    .line 723
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 724
    .line 725
    invoke-static {v5}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    iget-object v5, v5, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 730
    .line 731
    goto :goto_20

    .line 732
    :cond_33
    const/4 v6, 0x3

    .line 733
    if-ne v5, v6, :cond_34

    .line 734
    .line 735
    iget-object v5, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 736
    .line 737
    invoke-static {v5}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    iget-object v5, v5, Lcom/mycompany/app/data/DataList;->b:Ljava/util/List;

    .line 742
    .line 743
    goto :goto_20

    .line 744
    :cond_34
    const/4 v5, 0x0

    .line 745
    :goto_20
    if-eqz v5, :cond_40

    .line 746
    .line 747
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    const/4 v10, 0x2

    .line 752
    if-ge v6, v10, :cond_35

    .line 753
    .line 754
    goto/16 :goto_24

    .line 755
    .line 756
    :cond_35
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->t:I

    .line 757
    .line 758
    const/4 v7, -0x1

    .line 759
    if-eq v6, v7, :cond_36

    .line 760
    .line 761
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 762
    .line 763
    .line 764
    move-result v8

    .line 765
    if-ge v6, v8, :cond_36

    .line 766
    .line 767
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v8

    .line 771
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v8

    .line 775
    if-nez v8, :cond_37

    .line 776
    .line 777
    :cond_36
    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    if-ne v6, v7, :cond_37

    .line 782
    .line 783
    goto/16 :goto_24

    .line 784
    .line 785
    :cond_37
    if-eqz v12, :cond_39

    .line 786
    .line 787
    iget-boolean v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 788
    .line 789
    if-eqz v0, :cond_38

    .line 790
    .line 791
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    add-int/2addr v0, v6

    .line 796
    const/4 v7, 0x1

    .line 797
    sub-int/2addr v0, v7

    .line 798
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 799
    .line 800
    .line 801
    move-result v6

    .line 802
    rem-int/2addr v0, v6

    .line 803
    goto :goto_21

    .line 804
    :cond_38
    const/4 v7, 0x1

    .line 805
    add-int/2addr v6, v7

    .line 806
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    rem-int v0, v6, v0

    .line 811
    .line 812
    goto :goto_21

    .line 813
    :cond_39
    const/4 v7, 0x1

    .line 814
    iget-boolean v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->f:Z

    .line 815
    .line 816
    if-eqz v0, :cond_3a

    .line 817
    .line 818
    add-int/2addr v6, v7

    .line 819
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    rem-int v0, v6, v0

    .line 824
    .line 825
    goto :goto_21

    .line 826
    :cond_3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    add-int/2addr v0, v6

    .line 831
    sub-int/2addr v0, v7

    .line 832
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 833
    .line 834
    .line 835
    move-result v6

    .line 836
    rem-int/2addr v0, v6

    .line 837
    :goto_21
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 838
    .line 839
    if-ne v6, v7, :cond_3b

    .line 840
    .line 841
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 842
    .line 843
    invoke-static {v6}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    invoke-virtual {v6, v0}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 848
    .line 849
    .line 850
    move-result-object v9

    .line 851
    goto :goto_22

    .line 852
    :cond_3b
    const/4 v10, 0x2

    .line 853
    if-ne v6, v10, :cond_3c

    .line 854
    .line 855
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 856
    .line 857
    invoke-static {v6}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    invoke-virtual {v6, v0}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 862
    .line 863
    .line 864
    move-result-object v9

    .line 865
    goto :goto_22

    .line 866
    :cond_3c
    const/4 v7, 0x3

    .line 867
    if-ne v6, v7, :cond_3d

    .line 868
    .line 869
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 870
    .line 871
    invoke-static {v6}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    invoke-virtual {v6, v0}, Lcom/mycompany/app/data/DataList;->f(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 876
    .line 877
    .line 878
    move-result-object v9

    .line 879
    goto :goto_22

    .line 880
    :cond_3d
    const/4 v9, 0x0

    .line 881
    :goto_22
    if-eqz v9, :cond_3e

    .line 882
    .line 883
    iget-object v9, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 884
    .line 885
    :goto_23
    const/4 v10, 0x2

    .line 886
    goto :goto_25

    .line 887
    :cond_3e
    iget v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 888
    .line 889
    const/4 v7, 0x1

    .line 890
    if-ne v6, v7, :cond_3f

    .line 891
    .line 892
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 893
    .line 894
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    check-cast v0, Ljava/lang/String;

    .line 899
    .line 900
    invoke-static {v6, v0}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v9

    .line 904
    goto :goto_23

    .line 905
    :cond_3f
    iget-object v6, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 906
    .line 907
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    check-cast v0, Ljava/lang/String;

    .line 912
    .line 913
    invoke-static {v6, v0}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v9

    .line 917
    goto :goto_23

    .line 918
    :cond_40
    :goto_24
    const/4 v9, 0x0

    .line 919
    goto :goto_23

    .line 920
    :goto_25
    invoke-virtual {v2, v10, v9}, Lcom/mycompany/app/view/MyImageView;->f(ILjava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->h0:I

    .line 924
    .line 925
    if-ne v1, v0, :cond_42

    .line 926
    .line 927
    iget-object v0, v4, Lcom/mycompany/app/image/ImageViewPageScroll;->R:Lcom/mycompany/app/image/ImageCoverView;

    .line 928
    .line 929
    if-eqz v0, :cond_42

    .line 930
    .line 931
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageCoverView;->c()V

    .line 932
    .line 933
    .line 934
    goto :goto_26

    .line 935
    :cond_41
    if-eqz v9, :cond_42

    .line 936
    .line 937
    invoke-virtual {v4, v3}, Lcom/mycompany/app/image/ImageViewPageScroll;->o1(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 938
    .line 939
    .line 940
    :cond_42
    :goto_26
    invoke-virtual {v4, v3}, Lcom/mycompany/app/image/ImageViewPageScroll;->T0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 941
    .line 942
    .line 943
    return-object v2
.end method

.method public final e(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
