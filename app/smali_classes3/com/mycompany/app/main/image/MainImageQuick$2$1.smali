.class Lcom/mycompany/app/main/image/MainImageQuick$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$2$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick$2$1;->c:Lcom/mycompany/app/main/image/MainImageQuick$2;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/image/MainImageQuick$2;->a:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, v1, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_1
    if-eqz v2, :cond_b

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    if-le v2, v3, :cond_3

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 v7, 0x0

    .line 40
    :goto_0
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 41
    .line 42
    sub-int v8, v3, v8

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    if-eqz v7, :cond_4

    .line 46
    .line 47
    div-int/lit8 v7, v2, 0x2

    .line 48
    .line 49
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 50
    .line 51
    sub-int v10, v7, v10

    .line 52
    .line 53
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 54
    .line 55
    sub-int v12, v8, v11

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    int-to-float v13, v12

    .line 59
    int-to-float v2, v2

    .line 60
    div-float/2addr v13, v2

    .line 61
    mul-float/2addr v13, v3

    .line 62
    float-to-int v13, v13

    .line 63
    sub-int v14, v10, v13

    .line 64
    .line 65
    div-int/2addr v14, v9

    .line 66
    sub-int v15, v8, v12

    .line 67
    .line 68
    div-int/2addr v15, v9

    .line 69
    sub-int v11, v10, v11

    .line 70
    .line 71
    move/from16 v16, v9

    .line 72
    .line 73
    int-to-float v9, v11

    .line 74
    div-float/2addr v9, v2

    .line 75
    mul-float/2addr v9, v3

    .line 76
    float-to-int v2, v9

    .line 77
    sub-int v3, v10, v11

    .line 78
    .line 79
    div-int/lit8 v3, v3, 0x2

    .line 80
    .line 81
    sub-int v9, v8, v2

    .line 82
    .line 83
    div-int/lit8 v9, v9, 0x2

    .line 84
    .line 85
    sget v17, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 86
    .line 87
    add-int v7, v7, v17

    .line 88
    .line 89
    add-int/2addr v7, v3

    .line 90
    const v3, 0x800005

    .line 91
    .line 92
    .line 93
    move v5, v3

    .line 94
    move v3, v2

    .line 95
    move v2, v10

    .line 96
    move v10, v11

    .line 97
    move v11, v5

    .line 98
    move v5, v9

    .line 99
    const/4 v9, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move/from16 v16, v9

    .line 102
    .line 103
    div-int/lit8 v8, v8, 0x2

    .line 104
    .line 105
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 106
    .line 107
    sub-int v7, v8, v7

    .line 108
    .line 109
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 110
    .line 111
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 112
    .line 113
    sub-int v12, v7, v10

    .line 114
    .line 115
    int-to-float v11, v2

    .line 116
    int-to-float v13, v12

    .line 117
    int-to-float v3, v3

    .line 118
    div-float/2addr v13, v3

    .line 119
    mul-float/2addr v13, v11

    .line 120
    float-to-int v13, v13

    .line 121
    sub-int v14, v2, v13

    .line 122
    .line 123
    div-int/lit8 v14, v14, 0x2

    .line 124
    .line 125
    sub-int v15, v7, v12

    .line 126
    .line 127
    div-int/lit8 v15, v15, 0x2

    .line 128
    .line 129
    sub-int v10, v2, v10

    .line 130
    .line 131
    int-to-float v5, v10

    .line 132
    div-float/2addr v5, v3

    .line 133
    mul-float/2addr v5, v11

    .line 134
    float-to-int v3, v5

    .line 135
    sub-int v5, v2, v10

    .line 136
    .line 137
    div-int/lit8 v5, v5, 0x2

    .line 138
    .line 139
    sub-int v11, v7, v3

    .line 140
    .line 141
    div-int/lit8 v11, v11, 0x2

    .line 142
    .line 143
    sget v18, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 144
    .line 145
    add-int v8, v8, v18

    .line 146
    .line 147
    add-int/2addr v8, v11

    .line 148
    const/16 v11, 0x50

    .line 149
    .line 150
    move/from16 v25, v7

    .line 151
    .line 152
    move v7, v5

    .line 153
    move v5, v8

    .line 154
    move/from16 v8, v25

    .line 155
    .line 156
    :goto_1
    iget-object v6, v1, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 157
    .line 158
    if-eqz v6, :cond_a

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    .line 166
    if-eqz v4, :cond_5

    .line 167
    .line 168
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 169
    .line 170
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 171
    .line 172
    iget-object v6, v1, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 173
    .line 174
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v4, v1, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    if-eqz v4, :cond_6

    .line 186
    .line 187
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 188
    .line 189
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 190
    .line 191
    invoke-virtual {v4, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 192
    .line 193
    .line 194
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 195
    .line 196
    iget-object v6, v1, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 197
    .line 198
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    :cond_6
    iget-object v4, v1, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 202
    .line 203
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 208
    .line 209
    if-eqz v4, :cond_7

    .line 210
    .line 211
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 212
    .line 213
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 214
    .line 215
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    .line 217
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 218
    .line 219
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 220
    .line 221
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .line 232
    if-eqz v2, :cond_8

    .line 233
    .line 234
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 235
    .line 236
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 237
    .line 238
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 239
    .line 240
    .line 241
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 242
    .line 243
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 244
    .line 245
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    :cond_8
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 249
    .line 250
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 254
    .line 255
    if-nez v2, :cond_9

    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_9
    new-instance v3, Lcom/mycompany/app/main/image/MainImageQuick$10;

    .line 260
    .line 261
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/image/MainImageQuick$10;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_a
    const/high16 v6, 0x41a00000    # 20.0f

    .line 270
    .line 271
    invoke-static {v4, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    float-to-int v6, v6

    .line 276
    new-instance v0, Lcom/mycompany/app/view/MyButtonRelative;

    .line 277
    .line 278
    invoke-direct {v0, v4}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    move/from16 v19, v5

    .line 282
    .line 283
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 284
    .line 285
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonRelative;->setClickSize(I)V

    .line 286
    .line 287
    .line 288
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 289
    .line 290
    move/from16 v20, v7

    .line 291
    .line 292
    const/4 v7, 0x1

    .line 293
    invoke-virtual {v0, v5, v7}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 294
    .line 295
    .line 296
    const v5, -0xdededf

    .line 297
    .line 298
    .line 299
    const v7, -0xd8d8d9

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v5, v7}, Lcom/mycompany/app/view/MyButtonRelative;->g(II)V

    .line 303
    .line 304
    .line 305
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .line 307
    invoke-direct {v5, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 308
    .line 309
    .line 310
    iget-object v7, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 311
    .line 312
    move/from16 v21, v3

    .line 313
    .line 314
    const/4 v3, 0x0

    .line 315
    invoke-virtual {v7, v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .line 317
    .line 318
    new-instance v3, Landroid/widget/FrameLayout;

    .line 319
    .line 320
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 321
    .line 322
    .line 323
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 324
    .line 325
    const/4 v7, -0x2

    .line 326
    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 327
    .line 328
    .line 329
    const/16 v7, 0xd

    .line 330
    .line 331
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    .line 336
    .line 337
    new-instance v5, Landroid/view/View;

    .line 338
    .line 339
    invoke-direct {v5, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 340
    .line 341
    .line 342
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_stay_current_portrait_dark_24:I

    .line 343
    .line 344
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 345
    .line 346
    .line 347
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    .line 349
    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    move/from16 v22, v10

    .line 353
    .line 354
    const/16 v10, 0x10

    .line 355
    .line 356
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 357
    .line 358
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 362
    .line 363
    const/4 v7, 0x0

    .line 364
    invoke-direct {v5, v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 365
    .line 366
    .line 367
    const/high16 v7, 0x41800000    # 16.0f

    .line 368
    .line 369
    const/4 v10, 0x1

    .line 370
    invoke-virtual {v5, v10, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 371
    .line 372
    .line 373
    const/4 v10, -0x1

    .line 374
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    .line 376
    .line 377
    sget v10, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 378
    .line 379
    const/4 v7, -0x2

    .line 380
    invoke-static {v5, v10, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    const/16 v7, 0x10

    .line 385
    .line 386
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 387
    .line 388
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 389
    .line 390
    add-int/2addr v7, v6

    .line 391
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 398
    .line 399
    invoke-direct {v5, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 403
    .line 404
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 405
    .line 406
    .line 407
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_white_24:I

    .line 408
    .line 409
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 410
    .line 411
    .line 412
    sget v10, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 413
    .line 414
    int-to-float v10, v10

    .line 415
    move-object/from16 v23, v3

    .line 416
    .line 417
    sget v3, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 418
    .line 419
    int-to-float v3, v3

    .line 420
    invoke-virtual {v5, v10, v3}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 421
    .line 422
    .line 423
    const/high16 v3, -0x5f000000

    .line 424
    .line 425
    const v10, -0x5e8a8a8b

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 429
    .line 430
    .line 431
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    .line 433
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 434
    .line 435
    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 436
    .line 437
    .line 438
    const/16 v10, 0x15

    .line 439
    .line 440
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 441
    .line 442
    .line 443
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 444
    .line 445
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 446
    .line 447
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    .line 452
    .line 453
    new-instance v3, Lcom/mycompany/app/view/MyButtonRelative;

    .line 454
    .line 455
    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 456
    .line 457
    .line 458
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 459
    .line 460
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonRelative;->setClickSize(I)V

    .line 461
    .line 462
    .line 463
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 464
    .line 465
    move-object/from16 v24, v5

    .line 466
    .line 467
    const/4 v5, 0x1

    .line 468
    invoke-virtual {v3, v10, v5}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 469
    .line 470
    .line 471
    const v5, -0xdededf

    .line 472
    .line 473
    .line 474
    const v10, -0xd8d8d9

    .line 475
    .line 476
    .line 477
    invoke-virtual {v3, v5, v10}, Lcom/mycompany/app/view/MyButtonRelative;->g(II)V

    .line 478
    .line 479
    .line 480
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .line 482
    invoke-direct {v5, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 483
    .line 484
    .line 485
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    .line 487
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 488
    .line 489
    iget-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 490
    .line 491
    const/4 v10, 0x1

    .line 492
    invoke-virtual {v2, v3, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    new-instance v2, Landroid/widget/FrameLayout;

    .line 496
    .line 497
    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 498
    .line 499
    .line 500
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 501
    .line 502
    const/4 v8, -0x2

    .line 503
    invoke-direct {v5, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    .line 505
    .line 506
    const/16 v8, 0xd

    .line 507
    .line 508
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    .line 513
    .line 514
    new-instance v5, Landroid/view/View;

    .line 515
    .line 516
    invoke-direct {v5, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 517
    .line 518
    .line 519
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_stay_current_landscape_dark_24:I

    .line 520
    .line 521
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 522
    .line 523
    .line 524
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 525
    .line 526
    invoke-direct {v8, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 527
    .line 528
    .line 529
    const/16 v9, 0x10

    .line 530
    .line 531
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 532
    .line 533
    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    .line 535
    .line 536
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 537
    .line 538
    const/4 v8, 0x0

    .line 539
    invoke-direct {v5, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 540
    .line 541
    .line 542
    const/high16 v8, 0x41800000    # 16.0f

    .line 543
    .line 544
    const/4 v10, 0x1

    .line 545
    invoke-virtual {v5, v10, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 546
    .line 547
    .line 548
    const/4 v8, -0x1

    .line 549
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    .line 551
    .line 552
    sget v8, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 553
    .line 554
    const/4 v11, -0x2

    .line 555
    invoke-static {v5, v8, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    .line 561
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 562
    .line 563
    add-int/2addr v6, v9

    .line 564
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .line 569
    .line 570
    new-instance v5, Lcom/mycompany/app/main/image/MainImageView;

    .line 571
    .line 572
    invoke-direct {v5, v4}, Lcom/mycompany/app/main/image/MainImageView;-><init>(Landroid/content/Context;)V

    .line 573
    .line 574
    .line 575
    const/4 v6, 0x0

    .line 576
    const/4 v8, 0x0

    .line 577
    invoke-virtual {v5, v1, v6, v10, v8}, Lcom/mycompany/app/main/image/MainImageView;->q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V

    .line 578
    .line 579
    .line 580
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 581
    .line 582
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 583
    .line 584
    .line 585
    const/4 v8, 0x4

    .line 586
    invoke-virtual {v5, v8}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 587
    .line 588
    .line 589
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 590
    .line 591
    invoke-direct {v9, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 595
    .line 596
    .line 597
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 598
    .line 599
    iget-object v10, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 600
    .line 601
    move/from16 v11, v16

    .line 602
    .line 603
    invoke-virtual {v10, v5, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 604
    .line 605
    .line 606
    new-instance v9, Lcom/mycompany/app/main/image/MainImageView;

    .line 607
    .line 608
    invoke-direct {v9, v4}, Lcom/mycompany/app/main/image/MainImageView;-><init>(Landroid/content/Context;)V

    .line 609
    .line 610
    .line 611
    const/4 v10, 0x0

    .line 612
    const/4 v12, 0x0

    .line 613
    invoke-virtual {v9, v1, v12, v11, v10}, Lcom/mycompany/app/main/image/MainImageView;->q(Lcom/mycompany/app/main/MainActivity;ZILcom/mycompany/app/main/image/MainImageView$MainImageListener;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v9, v8}, Lcom/mycompany/app/main/image/MainImageView;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 623
    .line 624
    move/from16 v8, v21

    .line 625
    .line 626
    move/from16 v10, v22

    .line 627
    .line 628
    invoke-direct {v6, v10, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 629
    .line 630
    .line 631
    move/from16 v8, v20

    .line 632
    .line 633
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 634
    .line 635
    .line 636
    move/from16 v8, v19

    .line 637
    .line 638
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 639
    .line 640
    iget-object v8, v1, Lcom/mycompany/app/main/image/MainImageQuick;->k1:Lcom/mycompany/app/view/MySizeFrame;

    .line 641
    .line 642
    const/4 v10, 0x3

    .line 643
    invoke-virtual {v8, v9, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .line 645
    .line 646
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 647
    .line 648
    invoke-direct {v6, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 652
    .line 653
    .line 654
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_white_24:I

    .line 655
    .line 656
    invoke-virtual {v6, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 657
    .line 658
    .line 659
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 660
    .line 661
    int-to-float v4, v4

    .line 662
    sget v7, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 663
    .line 664
    int-to-float v7, v7

    .line 665
    invoke-virtual {v6, v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 666
    .line 667
    .line 668
    const v4, -0x5e8a8a8b

    .line 669
    .line 670
    .line 671
    const/high16 v7, -0x5f000000

    .line 672
    .line 673
    invoke-virtual {v6, v7, v4}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 674
    .line 675
    .line 676
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 677
    .line 678
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 679
    .line 680
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 681
    .line 682
    .line 683
    const/16 v7, 0x15

    .line 684
    .line 685
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 686
    .line 687
    .line 688
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 689
    .line 690
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 691
    .line 692
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    .line 697
    .line 698
    iput-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->t1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 699
    .line 700
    move-object/from16 v4, v23

    .line 701
    .line 702
    iput-object v4, v1, Lcom/mycompany/app/main/image/MainImageQuick;->u1:Landroid/widget/FrameLayout;

    .line 703
    .line 704
    iput-object v5, v1, Lcom/mycompany/app/main/image/MainImageQuick;->v1:Lcom/mycompany/app/main/image/MainImageView;

    .line 705
    .line 706
    iput-object v3, v1, Lcom/mycompany/app/main/image/MainImageQuick;->w1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 707
    .line 708
    iput-object v2, v1, Lcom/mycompany/app/main/image/MainImageQuick;->x1:Landroid/widget/FrameLayout;

    .line 709
    .line 710
    iput-object v9, v1, Lcom/mycompany/app/main/image/MainImageQuick;->y1:Lcom/mycompany/app/main/image/MainImageView;

    .line 711
    .line 712
    const/4 v10, 0x1

    .line 713
    iput-boolean v10, v1, Lcom/mycompany/app/main/image/MainImageQuick;->F1:Z

    .line 714
    .line 715
    new-instance v2, Lcom/mycompany/app/main/image/MainImageQuick$11;

    .line 716
    .line 717
    invoke-direct {v2, v1}, Lcom/mycompany/app/main/image/MainImageQuick$11;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    .line 722
    .line 723
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$12;

    .line 724
    .line 725
    invoke-direct {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick$12;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    .line 730
    .line 731
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$13;

    .line 732
    .line 733
    invoke-direct {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick$13;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 734
    .line 735
    .line 736
    move-object/from16 v2, v24

    .line 737
    .line 738
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    .line 740
    .line 741
    new-instance v0, Lcom/mycompany/app/main/image/MainImageQuick$14;

    .line 742
    .line 743
    invoke-direct {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick$14;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v6, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    .line 748
    .line 749
    iget-boolean v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->j1:Z

    .line 750
    .line 751
    if-eqz v0, :cond_b

    .line 752
    .line 753
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->Y1:Landroid/graphics/Bitmap;

    .line 754
    .line 755
    const/4 v3, 0x0

    .line 756
    invoke-virtual {v1, v0, v3, v3}, Lcom/mycompany/app/main/image/MainImageQuick;->B0(Landroid/graphics/Bitmap;ZZ)V

    .line 757
    .line 758
    .line 759
    iget-object v0, v1, Lcom/mycompany/app/main/image/MainImageQuick;->Z1:Landroid/graphics/Bitmap;

    .line 760
    .line 761
    const/4 v10, 0x1

    .line 762
    invoke-virtual {v1, v0, v3, v10}, Lcom/mycompany/app/main/image/MainImageQuick;->B0(Landroid/graphics/Bitmap;ZZ)V

    .line 763
    .line 764
    .line 765
    :cond_b
    :goto_2
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 766
    .line 767
    if-nez v0, :cond_c

    .line 768
    .line 769
    :goto_3
    return-void

    .line 770
    :cond_c
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$2$1$1;

    .line 771
    .line 772
    move-object/from16 v2, p0

    .line 773
    .line 774
    invoke-direct {v1, v2}, Lcom/mycompany/app/main/image/MainImageQuick$2$1$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$2$1;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 778
    .line 779
    .line 780
    return-void
.end method
