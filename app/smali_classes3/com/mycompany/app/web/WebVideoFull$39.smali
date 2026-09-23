.class Lcom/mycompany/app/web/WebVideoFull$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$39;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$39;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_2
    const/high16 v4, 0x41600000    # 14.0f

    .line 24
    .line 25
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    float-to-int v5, v5

    .line 30
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    float-to-int v4, v4

    .line 35
    const/high16 v6, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-static {v3, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    float-to-int v6, v6

    .line 42
    const/high16 v7, 0x42a00000    # 80.0f

    .line 43
    .line 44
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    float-to-int v7, v7

    .line 49
    const/high16 v8, 0x42800000    # 64.0f

    .line 50
    .line 51
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    float-to-int v8, v8

    .line 56
    sget v9, Lnet/kaki87/soul2/testing/R$id;->wv_align_1:I

    .line 57
    .line 58
    sget v10, Lnet/kaki87/soul2/testing/R$id;->wv_align_2:I

    .line 59
    .line 60
    sget v11, Lnet/kaki87/soul2/testing/R$id;->wv_icon_play:I

    .line 61
    .line 62
    new-instance v12, Lcom/mycompany/app/view/MyButtonCheck;

    .line 63
    .line 64
    invoke-direct {v12, v3}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    .line 69
    .line 70
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_red_24:I

    .line 71
    .line 72
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_white_24:I

    .line 73
    .line 74
    invoke-virtual {v12, v13, v14}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 75
    .line 76
    .line 77
    int-to-float v5, v5

    .line 78
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 79
    .line 80
    int-to-float v13, v13

    .line 81
    invoke-virtual {v12, v5, v13}, Lcom/mycompany/app/view/MyButtonCheck;->o(FF)V

    .line 82
    .line 83
    .line 84
    const/high16 v13, -0x1000000

    .line 85
    .line 86
    const v14, -0x5e8a8a8b

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v13, v14}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 90
    .line 91
    .line 92
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    .line 94
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 95
    .line 96
    invoke-direct {v15, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    const/16 v13, 0x15

    .line 100
    .line 101
    invoke-virtual {v15, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    .line 103
    .line 104
    sget v16, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 105
    .line 106
    const/4 v13, 0x2

    .line 107
    mul-int/lit8 v16, v16, 0x2

    .line 108
    .line 109
    sget v17, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 110
    .line 111
    add-int v13, v16, v17

    .line 112
    .line 113
    iput v13, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 114
    .line 115
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 116
    .line 117
    invoke-virtual {v15, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    new-instance v13, Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-direct {v13, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13, v9}, Landroid/view/View;->setId(I)V

    .line 129
    .line 130
    .line 131
    const/4 v15, 0x4

    .line 132
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    const/4 v14, -0x2

    .line 136
    const/16 v15, 0xc

    .line 137
    .line 138
    invoke-static {v6, v14, v15}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 143
    .line 144
    invoke-virtual {v2, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Landroid/view/View;

    .line 148
    .line 149
    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    const/16 v15, 0x8

    .line 153
    .line 154
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13, v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 158
    .line 159
    .line 160
    new-instance v14, Landroid/view/View;

    .line 161
    .line 162
    invoke-direct {v14, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    const/high16 v15, 0x41400000    # 12.0f

    .line 169
    .line 170
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    float-to-int v15, v15

    .line 175
    invoke-virtual {v13, v14, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 176
    .line 177
    .line 178
    new-instance v13, Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-direct {v13, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v13, v10}, Landroid/view/View;->setId(I)V

    .line 184
    .line 185
    .line 186
    const/4 v15, 0x4

    .line 187
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    .line 192
    move-object/from16 v17, v14

    .line 193
    .line 194
    const/4 v14, -0x2

    .line 195
    invoke-direct {v15, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    .line 197
    .line 198
    const/16 v14, 0xc

    .line 199
    .line 200
    invoke-virtual {v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    .line 202
    .line 203
    iput v7, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 204
    .line 205
    invoke-virtual {v2, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    new-instance v7, Landroid/view/View;

    .line 209
    .line 210
    invoke-direct {v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 211
    .line 212
    .line 213
    const/16 v14, 0x8

    .line 214
    .line 215
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v13, v7, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 219
    .line 220
    .line 221
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    invoke-direct {v6, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v11}, Landroid/view/View;->setId(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    .line 231
    .line 232
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 233
    .line 234
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 235
    .line 236
    .line 237
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->baseline_pause_white_24:I

    .line 238
    .line 239
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 240
    .line 241
    .line 242
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 243
    .line 244
    int-to-float v13, v13

    .line 245
    invoke-virtual {v6, v5, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 246
    .line 247
    .line 248
    const v13, -0x5e8a8a8b

    .line 249
    .line 250
    .line 251
    const/high16 v14, -0x1000000

    .line 252
    .line 253
    invoke-virtual {v6, v14, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 254
    .line 255
    .line 256
    const/16 v14, 0x8

    .line 257
    .line 258
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .line 263
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 264
    .line 265
    invoke-direct {v13, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    .line 267
    .line 268
    const/4 v14, 0x2

    .line 269
    invoke-virtual {v13, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 270
    .line 271
    .line 272
    const/16 v14, 0xe

    .line 273
    .line 274
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 281
    .line 282
    invoke-direct {v13, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    .line 290
    .line 291
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_rewind_white_24:I

    .line 292
    .line 293
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 294
    .line 295
    .line 296
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 297
    .line 298
    int-to-float v14, v14

    .line 299
    invoke-virtual {v13, v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 300
    .line 301
    .line 302
    const v14, -0x5e8a8a8b

    .line 303
    .line 304
    .line 305
    const/high16 v15, -0x1000000

    .line 306
    .line 307
    invoke-virtual {v13, v15, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 308
    .line 309
    .line 310
    const/16 v14, 0x8

    .line 311
    .line 312
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    .line 317
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 318
    .line 319
    invoke-direct {v14, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 320
    .line 321
    .line 322
    const/4 v15, 0x2

    .line 323
    invoke-virtual {v14, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    .line 325
    .line 326
    const/16 v15, 0x10

    .line 327
    .line 328
    invoke-virtual {v14, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    .line 330
    .line 331
    const/high16 v15, 0x42000000    # 32.0f

    .line 332
    .line 333
    move-object/from16 v19, v7

    .line 334
    .line 335
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    float-to-int v7, v7

    .line 340
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    .line 345
    .line 346
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 347
    .line 348
    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 355
    .line 356
    .line 357
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->baseline_fast_forward_white_24:I

    .line 358
    .line 359
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 360
    .line 361
    .line 362
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 363
    .line 364
    int-to-float v14, v14

    .line 365
    invoke-virtual {v7, v5, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 366
    .line 367
    .line 368
    const v14, -0x5e8a8a8b

    .line 369
    .line 370
    .line 371
    const/high16 v15, -0x1000000

    .line 372
    .line 373
    invoke-virtual {v7, v15, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 374
    .line 375
    .line 376
    const/16 v14, 0x8

    .line 377
    .line 378
    invoke-virtual {v7, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 379
    .line 380
    .line 381
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 382
    .line 383
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 384
    .line 385
    invoke-direct {v14, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    .line 387
    .line 388
    const/4 v15, 0x2

    .line 389
    invoke-virtual {v14, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 390
    .line 391
    .line 392
    const/16 v15, 0x11

    .line 393
    .line 394
    invoke-virtual {v14, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    .line 396
    .line 397
    const/high16 v11, 0x42000000    # 32.0f

    .line 398
    .line 399
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 400
    .line 401
    .line 402
    move-result v11

    .line 403
    float-to-int v11, v11

    .line 404
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    new-instance v11, Lcom/mycompany/app/view/MyButtonCheck;

    .line 411
    .line 412
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v11, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    .line 417
    .line 418
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_checked_white_24:I

    .line 419
    .line 420
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 421
    .line 422
    invoke-virtual {v11, v14, v15}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 423
    .line 424
    .line 425
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 426
    .line 427
    int-to-float v14, v14

    .line 428
    invoke-virtual {v11, v5, v14}, Lcom/mycompany/app/view/MyButtonCheck;->o(FF)V

    .line 429
    .line 430
    .line 431
    const v14, -0x5e8a8a8b

    .line 432
    .line 433
    .line 434
    const/high16 v15, -0x1000000

    .line 435
    .line 436
    invoke-virtual {v11, v15, v14}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 437
    .line 438
    .line 439
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 440
    .line 441
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 442
    .line 443
    invoke-direct {v14, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 444
    .line 445
    .line 446
    const/4 v15, 0x2

    .line 447
    invoke-virtual {v14, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    .line 449
    .line 450
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 451
    .line 452
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    .line 457
    .line 458
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 459
    .line 460
    invoke-direct {v14, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v14, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 467
    .line 468
    .line 469
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 470
    .line 471
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 472
    .line 473
    .line 474
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 475
    .line 476
    int-to-float v15, v15

    .line 477
    invoke-virtual {v14, v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 478
    .line 479
    .line 480
    move-object/from16 v20, v0

    .line 481
    .line 482
    const/high16 v0, -0x1000000

    .line 483
    .line 484
    const v15, -0x5e8a8a8b

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14, v0, v15}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 488
    .line 489
    .line 490
    const/16 v0, 0x8

    .line 491
    .line 492
    invoke-virtual {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 493
    .line 494
    .line 495
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 496
    .line 497
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 498
    .line 499
    invoke-direct {v0, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 500
    .line 501
    .line 502
    const/4 v15, 0x2

    .line 503
    invoke-virtual {v0, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 504
    .line 505
    .line 506
    const/16 v15, 0x15

    .line 507
    .line 508
    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 509
    .line 510
    .line 511
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 512
    .line 513
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 520
    .line 521
    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 528
    .line 529
    .line 530
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_white_24:I

    .line 531
    .line 532
    invoke-virtual {v0, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 533
    .line 534
    .line 535
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 536
    .line 537
    int-to-float v15, v15

    .line 538
    invoke-virtual {v0, v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 539
    .line 540
    .line 541
    move-object/from16 v18, v14

    .line 542
    .line 543
    const/high16 v14, -0x1000000

    .line 544
    .line 545
    const v15, -0x5e8a8a8b

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 549
    .line 550
    .line 551
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    .line 553
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 554
    .line 555
    invoke-direct {v14, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 556
    .line 557
    .line 558
    const/4 v15, 0x2

    .line 559
    invoke-virtual {v14, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 560
    .line 561
    .line 562
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 563
    .line 564
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 565
    .line 566
    .line 567
    const/high16 v15, 0x42500000    # 52.0f

    .line 568
    .line 569
    move-object/from16 v21, v11

    .line 570
    .line 571
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 572
    .line 573
    .line 574
    move-result v11

    .line 575
    float-to-int v11, v11

    .line 576
    iput v11, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 577
    .line 578
    invoke-virtual {v2, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    .line 580
    .line 581
    new-instance v11, Lcom/mycompany/app/view/MyTextView;

    .line 582
    .line 583
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 584
    .line 585
    .line 586
    const/16 v14, 0x10

    .line 587
    .line 588
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 589
    .line 590
    .line 591
    const/4 v14, 0x1

    .line 592
    const/high16 v15, 0x41800000    # 16.0f

    .line 593
    .line 594
    invoke-virtual {v11, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 595
    .line 596
    .line 597
    const/4 v14, -0x1

    .line 598
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 599
    .line 600
    .line 601
    const/4 v14, 0x0

    .line 602
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 603
    .line 604
    .line 605
    const/high16 v14, -0x1000000

    .line 606
    .line 607
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 608
    .line 609
    .line 610
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 611
    .line 612
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 613
    .line 614
    move-object/from16 v22, v0

    .line 615
    .line 616
    const/4 v0, -0x2

    .line 617
    invoke-direct {v14, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 618
    .line 619
    .line 620
    const/4 v15, 0x2

    .line 621
    invoke-virtual {v14, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 622
    .line 623
    .line 624
    sget v0, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 625
    .line 626
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 627
    .line 628
    .line 629
    const/high16 v0, 0x42500000    # 52.0f

    .line 630
    .line 631
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 632
    .line 633
    .line 634
    move-result v10

    .line 635
    float-to-int v0, v10

    .line 636
    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 637
    .line 638
    invoke-virtual {v2, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    .line 640
    .line 641
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 642
    .line 643
    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 650
    .line 651
    .line 652
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_white_24:I

    .line 653
    .line 654
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 655
    .line 656
    .line 657
    sget v4, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 658
    .line 659
    int-to-float v4, v4

    .line 660
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 661
    .line 662
    .line 663
    const v14, -0x5e8a8a8b

    .line 664
    .line 665
    .line 666
    const/high16 v15, -0x1000000

    .line 667
    .line 668
    invoke-virtual {v0, v15, v14}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 669
    .line 670
    .line 671
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 672
    .line 673
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 674
    .line 675
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 676
    .line 677
    .line 678
    const/4 v15, 0x2

    .line 679
    invoke-virtual {v4, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 680
    .line 681
    .line 682
    const/16 v15, 0x15

    .line 683
    .line 684
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 685
    .line 686
    .line 687
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 688
    .line 689
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 690
    .line 691
    .line 692
    const/high16 v5, 0x42500000    # 52.0f

    .line 693
    .line 694
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    float-to-int v5, v8

    .line 699
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 700
    .line 701
    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    .line 703
    .line 704
    new-instance v4, Lcom/mycompany/app/view/MyTextView;

    .line 705
    .line 706
    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 707
    .line 708
    .line 709
    const/16 v14, 0x10

    .line 710
    .line 711
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 712
    .line 713
    .line 714
    const/high16 v5, 0x41800000    # 16.0f

    .line 715
    .line 716
    const/4 v8, 0x1

    .line 717
    invoke-virtual {v4, v8, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 718
    .line 719
    .line 720
    const/4 v5, -0x1

    .line 721
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 722
    .line 723
    .line 724
    const/4 v5, 0x0

    .line 725
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 726
    .line 727
    .line 728
    const/high16 v15, -0x1000000

    .line 729
    .line 730
    invoke-virtual {v4, v15}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 731
    .line 732
    .line 733
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 734
    .line 735
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 736
    .line 737
    const/4 v14, -0x2

    .line 738
    invoke-direct {v5, v14, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 739
    .line 740
    .line 741
    const/4 v15, 0x2

    .line 742
    invoke-virtual {v5, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 743
    .line 744
    .line 745
    const/16 v15, 0x15

    .line 746
    .line 747
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 748
    .line 749
    .line 750
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 751
    .line 752
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 753
    .line 754
    .line 755
    const/high16 v8, 0x42500000    # 52.0f

    .line 756
    .line 757
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    float-to-int v3, v3

    .line 762
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 763
    .line 764
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    .line 766
    .line 767
    iput-object v12, v1, Lcom/mycompany/app/web/WebVideoFull;->A:Lcom/mycompany/app/view/MyButtonCheck;

    .line 768
    .line 769
    iput-object v13, v1, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 770
    .line 771
    iput-object v6, v1, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 772
    .line 773
    iput-object v7, v1, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 774
    .line 775
    move-object/from16 v2, v21

    .line 776
    .line 777
    iput-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->E:Lcom/mycompany/app/view/MyButtonCheck;

    .line 778
    .line 779
    move-object/from16 v2, v18

    .line 780
    .line 781
    iput-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 782
    .line 783
    move-object/from16 v2, v22

    .line 784
    .line 785
    iput-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->G:Lcom/mycompany/app/view/MyButtonImage;

    .line 786
    .line 787
    iput-object v11, v1, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 788
    .line 789
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 790
    .line 791
    iput-object v4, v1, Lcom/mycompany/app/web/WebVideoFull;->J:Lcom/mycompany/app/view/MyTextView;

    .line 792
    .line 793
    move-object/from16 v0, v20

    .line 794
    .line 795
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->N:Landroid/view/View;

    .line 796
    .line 797
    move-object/from16 v0, v17

    .line 798
    .line 799
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->O:Landroid/view/View;

    .line 800
    .line 801
    move-object/from16 v0, v19

    .line 802
    .line 803
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->P:Landroid/view/View;

    .line 804
    .line 805
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 806
    .line 807
    if-nez v0, :cond_3

    .line 808
    .line 809
    return-void

    .line 810
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$39$1;

    .line 811
    .line 812
    move-object/from16 v2, p0

    .line 813
    .line 814
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebVideoFull$39$1;-><init>(Lcom/mycompany/app/web/WebVideoFull$39;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 818
    .line 819
    .line 820
    return-void
.end method
