.class Lcom/mycompany/app/dialog/DialogViewSrc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc$1;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_find_frame:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_cast_icon:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_cast_ctrl:I

    .line 16
    .line 17
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 18
    .line 19
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    const/4 v8, -0x1

    .line 25
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-direct {v7, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x2

    .line 37
    invoke-static {v8, v8, v9, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v10, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v8, v8, v9, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance v11, Landroid/view/View;

    .line 57
    .line 58
    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 62
    .line 63
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 64
    .line 65
    .line 66
    const/16 v12, 0x8

    .line 67
    .line 68
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    sget v13, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 72
    .line 73
    invoke-virtual {v7, v11, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 74
    .line 75
    .line 76
    new-instance v13, Lcom/mycompany/app/view/MyScrollBar;

    .line 77
    .line 78
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13}, Lcom/mycompany/app/view/MyScrollBar;->n()V

    .line 82
    .line 83
    .line 84
    const/4 v14, 0x4

    .line 85
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    const/high16 v15, 0x42000000    # 32.0f

    .line 89
    .line 90
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    float-to-int v15, v15

    .line 95
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v14, v15, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    sget v15, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 101
    .line 102
    const/4 v12, 0x1

    .line 103
    if-ne v15, v12, :cond_1

    .line 104
    .line 105
    const/16 v15, 0x9

    .line 106
    .line 107
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v12}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/16 v15, 0xb

    .line 115
    .line 116
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {v14, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    new-instance v9, Landroid/widget/FrameLayout;

    .line 126
    .line 127
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    .line 135
    const/4 v14, -0x2

    .line 136
    invoke-direct {v3, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    const/16 v15, 0xc

    .line 140
    .line 141
    invoke-virtual {v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Lcom/mycompany/app/view/MyFadeFrame;

    .line 148
    .line 149
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 156
    .line 157
    .line 158
    const/16 v15, 0x8

    .line 159
    .line 160
    invoke-virtual {v3, v15}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v3, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 164
    .line 165
    .line 166
    new-instance v15, Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    invoke-direct {v15, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 172
    .line 173
    invoke-virtual {v3, v15, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 174
    .line 175
    .line 176
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 182
    .line 183
    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    .line 185
    .line 186
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 187
    .line 188
    int-to-float v14, v14

    .line 189
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 190
    .line 191
    int-to-float v0, v0

    .line 192
    invoke-virtual {v12, v14, v0}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    .line 197
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 198
    .line 199
    invoke-direct {v0, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .line 201
    .line 202
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 203
    .line 204
    iput v14, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 205
    .line 206
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v15, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 217
    .line 218
    int-to-float v14, v14

    .line 219
    move-object/from16 v16, v11

    .line 220
    .line 221
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 222
    .line 223
    int-to-float v11, v11

    .line 224
    invoke-virtual {v0, v14, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 225
    .line 226
    .line 227
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .line 229
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 230
    .line 231
    invoke-direct {v11, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .line 233
    .line 234
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 235
    .line 236
    iput v14, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 237
    .line 238
    const/16 v14, 0x10

    .line 239
    .line 240
    invoke-virtual {v11, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v15, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 247
    .line 248
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    sget v14, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 252
    .line 253
    int-to-float v14, v14

    .line 254
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorRadius(F)V

    .line 255
    .line 256
    .line 257
    const/16 v14, 0x8

    .line 258
    .line 259
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    .line 264
    move-object/from16 v17, v9

    .line 265
    .line 266
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 267
    .line 268
    invoke-direct {v14, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 272
    .line 273
    iput v9, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 274
    .line 275
    const/16 v9, 0x15

    .line 276
    .line 277
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v15, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    new-instance v14, Landroid/widget/FrameLayout;

    .line 284
    .line 285
    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 289
    .line 290
    .line 291
    const/4 v4, 0x4

    .line 292
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 296
    .line 297
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 298
    .line 299
    move-object/from16 v18, v11

    .line 300
    .line 301
    const/4 v11, -0x2

    .line 302
    invoke-direct {v4, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 306
    .line 307
    iput v9, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 308
    .line 309
    const/16 v9, 0x15

    .line 310
    .line 311
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v15, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    new-instance v4, Landroid/widget/LinearLayout;

    .line 318
    .line 319
    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    const/4 v9, 0x0

    .line 323
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 327
    .line 328
    .line 329
    const/high16 v11, 0x42a00000    # 80.0f

    .line 330
    .line 331
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    float-to-int v11, v11

    .line 336
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 337
    .line 338
    const/4 v9, -0x1

    .line 339
    invoke-direct {v15, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    const/16 v9, 0x50

    .line 343
    .line 344
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    .line 346
    invoke-virtual {v3, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    new-instance v9, Landroid/view/View;

    .line 350
    .line 351
    invoke-direct {v9, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 352
    .line 353
    .line 354
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .line 356
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 357
    .line 358
    move-object/from16 v19, v14

    .line 359
    .line 360
    const/4 v14, 0x0

    .line 361
    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    .line 363
    .line 364
    const/high16 v14, 0x3f800000    # 1.0f

    .line 365
    .line 366
    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 367
    .line 368
    const v15, 0x800013

    .line 369
    .line 370
    .line 371
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 372
    .line 373
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .line 375
    .line 376
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 382
    .line 383
    .line 384
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 385
    .line 386
    int-to-float v11, v11

    .line 387
    const/4 v14, 0x1

    .line 388
    invoke-virtual {v9, v11, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 389
    .line 390
    .line 391
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 392
    .line 393
    int-to-float v11, v11

    .line 394
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 395
    .line 396
    .line 397
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .line 399
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 400
    .line 401
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    .line 403
    .line 404
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 405
    .line 406
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    new-instance v11, Landroid/view/View;

    .line 410
    .line 411
    invoke-direct {v11, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 412
    .line 413
    .line 414
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    .line 416
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    move-object/from16 v20, v9

    .line 419
    .line 420
    const/4 v9, 0x0

    .line 421
    invoke-direct {v14, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    .line 423
    .line 424
    const/high16 v9, 0x3f800000    # 1.0f

    .line 425
    .line 426
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 427
    .line 428
    const v9, 0x800013

    .line 429
    .line 430
    .line 431
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 432
    .line 433
    invoke-virtual {v4, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .line 435
    .line 436
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 437
    .line 438
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 442
    .line 443
    .line 444
    sget v8, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 445
    .line 446
    int-to-float v8, v8

    .line 447
    const/4 v14, 0x1

    .line 448
    invoke-virtual {v9, v8, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 449
    .line 450
    .line 451
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 452
    .line 453
    int-to-float v8, v8

    .line 454
    invoke-virtual {v9, v8}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 455
    .line 456
    .line 457
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    .line 459
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 460
    .line 461
    invoke-direct {v8, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    .line 463
    .line 464
    const v11, 0x800013

    .line 465
    .line 466
    .line 467
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 468
    .line 469
    invoke-virtual {v4, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    new-instance v8, Landroid/view/View;

    .line 473
    .line 474
    invoke-direct {v8, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 478
    .line 479
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 480
    .line 481
    const/4 v11, 0x0

    .line 482
    invoke-direct {v14, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    .line 484
    .line 485
    const/high16 v11, 0x3f800000    # 1.0f

    .line 486
    .line 487
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 488
    .line 489
    const v11, 0x800013

    .line 490
    .line 491
    .line 492
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 493
    .line 494
    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    .line 496
    .line 497
    new-instance v8, Lcom/mycompany/app/view/MyCoverView;

    .line 498
    .line 499
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 500
    .line 501
    .line 502
    const/16 v15, 0x8

    .line 503
    .line 504
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 505
    .line 506
    .line 507
    const/4 v11, -0x1

    .line 508
    invoke-virtual {v7, v8, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 509
    .line 510
    .line 511
    new-instance v11, Lcom/mycompany/app/view/MyProgressBar;

    .line 512
    .line 513
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 514
    .line 515
    .line 516
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 517
    .line 518
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 519
    .line 520
    .line 521
    move-result v14

    .line 522
    float-to-int v14, v14

    .line 523
    const/4 v15, 0x1

    .line 524
    iput-boolean v15, v11, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 525
    .line 526
    iput-boolean v15, v11, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 527
    .line 528
    iput v14, v11, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 529
    .line 530
    iput-boolean v15, v11, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 531
    .line 532
    const/16 v15, 0x8

    .line 533
    .line 534
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 535
    .line 536
    .line 537
    const/high16 v14, 0x40000000    # 2.0f

    .line 538
    .line 539
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 540
    .line 541
    .line 542
    move-result v14

    .line 543
    float-to-int v14, v14

    .line 544
    const/4 v15, -0x1

    .line 545
    invoke-virtual {v6, v11, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 546
    .line 547
    .line 548
    new-instance v14, Landroid/widget/FrameLayout;

    .line 549
    .line 550
    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 554
    .line 555
    .line 556
    const/16 v2, 0x8

    .line 557
    .line 558
    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 562
    .line 563
    const/4 v5, -0x2

    .line 564
    invoke-direct {v2, v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 565
    .line 566
    .line 567
    const/16 v5, 0xc

    .line 568
    .line 569
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v6, v14, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    .line 574
    .line 575
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 576
    .line 577
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 578
    .line 579
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 580
    .line 581
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->M:Landroid/widget/RelativeLayout;

    .line 582
    .line 583
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 584
    .line 585
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 586
    .line 587
    move-object/from16 v0, v17

    .line 588
    .line 589
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->R:Landroid/widget/FrameLayout;

    .line 590
    .line 591
    move-object/from16 v0, v16

    .line 592
    .line 593
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->S:Landroid/view/View;

    .line 594
    .line 595
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 596
    .line 597
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 598
    .line 599
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->V:Landroid/widget/LinearLayout;

    .line 600
    .line 601
    move-object/from16 v0, v20

    .line 602
    .line 603
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 604
    .line 605
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 606
    .line 607
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogViewSrc;->Y:Lcom/mycompany/app/view/MyCoverView;

    .line 608
    .line 609
    move-object/from16 v0, v18

    .line 610
    .line 611
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogCast;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 612
    .line 613
    move-object/from16 v0, v19

    .line 614
    .line 615
    invoke-virtual {v1, v6, v0, v14}, Lcom/mycompany/app/dialog/DialogCast;->p(Lcom/mycompany/app/view/MyMainRelative;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 616
    .line 617
    .line 618
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 619
    .line 620
    if-nez v0, :cond_2

    .line 621
    .line 622
    :goto_1
    return-void

    .line 623
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$2;

    .line 624
    .line 625
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogViewSrc$2;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    .line 630
    .line 631
    return-void
.end method
