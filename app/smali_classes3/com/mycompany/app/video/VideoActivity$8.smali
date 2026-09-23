.class Lcom/mycompany/app/video/VideoActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$8;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity$8;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const/high16 v3, 0x41a00000    # 20.0f

    .line 12
    .line 13
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    const/high16 v4, 0x42100000    # 36.0f

    .line 19
    .line 20
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    float-to-int v4, v4

    .line 25
    const/high16 v5, 0x42b40000    # 90.0f

    .line 26
    .line 27
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    float-to-int v5, v5

    .line 32
    const/high16 v6, 0x41200000    # 10.0f

    .line 33
    .line 34
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    float-to-int v7, v7

    .line 39
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    float-to-int v6, v6

    .line 44
    const/high16 v8, 0x43200000    # 160.0f

    .line 45
    .line 46
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    float-to-int v8, v8

    .line 51
    new-instance v9, Lcom/mycompany/app/web/WebVideoProgress;

    .line 52
    .line 53
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    const/16 v10, 0x10

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 62
    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    .line 70
    .line 71
    const/4 v12, 0x1

    .line 72
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyFadeLinear;->setTouchable(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 76
    .line 77
    .line 78
    const/16 v13, 0x8

    .line 79
    .line 80
    invoke-virtual {v9, v13}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v15, -0x2

    .line 86
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    const/16 v13, 0x11

    .line 90
    .line 91
    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    .line 93
    invoke-virtual {v2, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v14, Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_white_36:I

    .line 102
    .line 103
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .line 108
    invoke-direct {v13, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    const v10, 0x800013

    .line 112
    .line 113
    .line 114
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 115
    .line 116
    invoke-virtual {v9, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    new-instance v13, Lcom/mycompany/app/view/MyTextView;

    .line 120
    .line 121
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    .line 126
    .line 127
    const/high16 v10, 0x42200000    # 40.0f

    .line 128
    .line 129
    invoke-virtual {v13, v12, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 130
    .line 131
    .line 132
    const/4 v10, -0x1

    .line 133
    invoke-virtual {v13, v10}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 137
    .line 138
    invoke-static {v10, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 146
    .line 147
    .line 148
    const/high16 v15, -0x1000000

    .line 149
    .line 150
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 154
    .line 155
    .line 156
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .line 158
    const/4 v12, -0x2

    .line 159
    invoke-direct {v15, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    const v12, 0x800013

    .line 163
    .line 164
    .line 165
    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 166
    .line 167
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    new-instance v12, Lcom/mycompany/app/view/MyProgressVideo;

    .line 174
    .line 175
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyProgressVideo;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    .line 180
    invoke-direct {v15, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v15, Lcom/mycompany/app/web/WebVideoProgress;

    .line 190
    .line 191
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    .line 196
    .line 197
    const/16 v0, 0x10

    .line 198
    .line 199
    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    .line 207
    .line 208
    const/4 v0, 0x1

    .line 209
    invoke-virtual {v15, v0}, Lcom/mycompany/app/view/MyFadeLinear;->setTouchable(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15, v0}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 213
    .line 214
    .line 215
    const/16 v0, 0x8

    .line 216
    .line 217
    invoke-virtual {v15, v0}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .line 222
    const/4 v11, -0x2

    .line 223
    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .line 225
    .line 226
    const/16 v11, 0x11

    .line 227
    .line 228
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 229
    .line 230
    invoke-virtual {v2, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    new-instance v0, Landroid/widget/ImageView;

    .line 234
    .line 235
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->ic_volume:I

    .line 239
    .line 240
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .line 245
    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    const v4, 0x800013

    .line 249
    .line 250
    .line 251
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 252
    .line 253
    invoke-virtual {v15, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .line 255
    .line 256
    new-instance v4, Lcom/mycompany/app/view/MyTextView;

    .line 257
    .line 258
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    const/4 v11, 0x1

    .line 262
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v17, v0

    .line 266
    .line 267
    const/high16 v0, 0x42200000    # 40.0f

    .line 268
    .line 269
    invoke-virtual {v4, v11, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 270
    .line 271
    .line 272
    const/4 v0, -0x1

    .line 273
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 274
    .line 275
    .line 276
    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 281
    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 285
    .line 286
    .line 287
    const/high16 v0, -0x1000000

    .line 288
    .line 289
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 296
    .line 297
    const/4 v11, -0x2

    .line 298
    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    .line 300
    .line 301
    const v5, 0x800013

    .line 302
    .line 303
    .line 304
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 305
    .line 306
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v15, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Lcom/mycompany/app/view/MyProgressVideo;

    .line 313
    .line 314
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyProgressVideo;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    .line 319
    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v15, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .line 327
    .line 328
    new-instance v5, Lcom/mycompany/app/web/WebVideoProgress;

    .line 329
    .line 330
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyFadeLinear;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    const/4 v7, 0x0

    .line 334
    invoke-virtual {v5, v7, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 335
    .line 336
    .line 337
    const/4 v11, 0x1

    .line 338
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyFadeLinear;->setTouchable(Z)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v11}, Lcom/mycompany/app/view/MyFadeLinear;->setAutoHide(Z)V

    .line 345
    .line 346
    .line 347
    const/16 v7, 0x8

    .line 348
    .line 349
    invoke-virtual {v5, v7}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 350
    .line 351
    .line 352
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 353
    .line 354
    const/4 v8, -0x1

    .line 355
    const/4 v11, -0x2

    .line 356
    invoke-direct {v7, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 357
    .line 358
    .line 359
    const v11, 0x800013

    .line 360
    .line 361
    .line 362
    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 363
    .line 364
    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    .line 366
    .line 367
    new-instance v7, Lcom/mycompany/app/view/MyTextView;

    .line 368
    .line 369
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyTextView;-><init>(Landroid/content/Context;)V

    .line 370
    .line 371
    .line 372
    const/4 v11, 0x1

    .line 373
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 377
    .line 378
    .line 379
    move-object/from16 v16, v2

    .line 380
    .line 381
    const/high16 v2, 0x42200000    # 40.0f

    .line 382
    .line 383
    invoke-virtual {v7, v11, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyTextView;->setTextColor(I)V

    .line 387
    .line 388
    .line 389
    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 394
    .line 395
    .line 396
    const/4 v2, 0x0

    .line 397
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 398
    .line 399
    .line 400
    const/high16 v2, -0x1000000

    .line 401
    .line 402
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyTextView;->setOutlineColor(I)V

    .line 403
    .line 404
    .line 405
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 406
    .line 407
    const/4 v11, -0x2

    .line 408
    invoke-direct {v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .line 410
    .line 411
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 412
    .line 413
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 414
    .line 415
    .line 416
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 417
    .line 418
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    if-eqz v2, :cond_2

    .line 433
    .line 434
    if-nez v10, :cond_1

    .line 435
    .line 436
    goto :goto_0

    .line 437
    :cond_1
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 442
    .line 443
    mul-int/lit8 v10, v10, 0x2

    .line 444
    .line 445
    sub-int/2addr v2, v10

    .line 446
    if-gtz v2, :cond_3

    .line 447
    .line 448
    :cond_2
    :goto_0
    move v10, v8

    .line 449
    goto :goto_1

    .line 450
    :cond_3
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 451
    .line 452
    add-int/2addr v8, v2

    .line 453
    iput v8, v5, Lcom/mycompany/app/web/WebVideoProgress;->I:I

    .line 454
    .line 455
    move v10, v2

    .line 456
    :goto_1
    new-instance v2, Lcom/mycompany/app/view/MyProgressVideo;

    .line 457
    .line 458
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyProgressVideo;-><init>(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    .line 463
    invoke-direct {v8, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    .line 465
    .line 466
    const/4 v11, 0x1

    .line 467
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 468
    .line 469
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 470
    .line 471
    invoke-virtual {v5, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    .line 473
    .line 474
    iput-object v9, v1, Lcom/mycompany/app/video/VideoActivity;->N1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 475
    .line 476
    iput-object v15, v1, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 477
    .line 478
    iput-object v5, v1, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 479
    .line 480
    invoke-virtual {v9, v14, v13, v12}, Lcom/mycompany/app/web/WebVideoProgress;->l(Landroid/widget/ImageView;Lcom/mycompany/app/view/MyTextView;Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 481
    .line 482
    .line 483
    iget-object v3, v1, Lcom/mycompany/app/video/VideoActivity;->O1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 484
    .line 485
    move-object/from16 v5, v17

    .line 486
    .line 487
    invoke-virtual {v3, v5, v4, v0}, Lcom/mycompany/app/web/WebVideoProgress;->l(Landroid/widget/ImageView;Lcom/mycompany/app/view/MyTextView;Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 488
    .line 489
    .line 490
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->P1:Lcom/mycompany/app/web/WebVideoProgress;

    .line 491
    .line 492
    const/4 v3, 0x0

    .line 493
    invoke-virtual {v0, v3, v7, v2}, Lcom/mycompany/app/web/WebVideoProgress;->l(Landroid/widget/ImageView;Lcom/mycompany/app/view/MyTextView;Lcom/mycompany/app/view/MyProgressVideo;)V

    .line 494
    .line 495
    .line 496
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 497
    .line 498
    if-nez v0, :cond_4

    .line 499
    .line 500
    :goto_2
    return-void

    .line 501
    :cond_4
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$9;

    .line 502
    .line 503
    invoke-direct {v2, v1}, Lcom/mycompany/app/video/VideoActivity$9;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    .line 508
    .line 509
    return-void
.end method
