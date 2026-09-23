.class Lcom/mycompany/app/web/WebViewActivity$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$40;->c:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$40;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 6
    .line 7
    if-nez v2, :cond_8

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->splash_notice_view:I

    .line 16
    .line 17
    sget v3, Lnet/kaki87/soul2/testing/R$id;->splash_apply_view:I

    .line 18
    .line 19
    sget v4, Lnet/kaki87/soul2/testing/R$id;->splash_blank_view:I

    .line 20
    .line 21
    new-instance v5, Lcom/mycompany/app/view/MyFadeRelative;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyFadeRelative;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-direct {v7, v1, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v2}, Landroid/view/View;->setId(I)V

    .line 37
    .line 38
    .line 39
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    invoke-virtual {v7, v10, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    const/high16 v11, 0x41400000    # 12.0f

    .line 50
    .line 51
    invoke-virtual {v7, v9, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 52
    .line 53
    .line 54
    const/high16 v11, -0x1000000

    .line 55
    .line 56
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    const v12, -0xc6b655

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 63
    .line 64
    .line 65
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .line 67
    const/4 v13, -0x2

    .line 68
    invoke-direct {v12, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const/16 v14, 0xc

    .line 72
    .line 73
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    .line 75
    .line 76
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 79
    .line 80
    .line 81
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 82
    .line 83
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 90
    .line 91
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v3}, Landroid/view/View;->setId(I)V

    .line 95
    .line 96
    .line 97
    const/high16 v14, 0x41200000    # 10.0f

    .line 98
    .line 99
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    float-to-int v15, v15

    .line 104
    invoke-virtual {v12, v10, v15, v10, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    const/16 v15, 0x11

    .line 108
    .line 109
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    .line 111
    .line 112
    const/high16 v15, 0x41900000    # 18.0f

    .line 113
    .line 114
    invoke-virtual {v12, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    sget v11, Lnet/kaki87/soul2/testing/R$string;->start:I

    .line 121
    .line 122
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(I)V

    .line 123
    .line 124
    .line 125
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->round_splash:I

    .line 126
    .line 127
    invoke-virtual {v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    const/high16 v11, 0x40000000    # 2.0f

    .line 131
    .line 132
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    float-to-int v11, v11

    .line 137
    int-to-float v11, v11

    .line 138
    invoke-virtual {v12, v11}, Landroid/view/View;->setElevation(F)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v9}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 142
    .line 143
    .line 144
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    invoke-virtual {v12, v11}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 147
    .line 148
    .line 149
    const v11, -0x1f1f20

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v11}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 153
    .line 154
    .line 155
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .line 157
    invoke-direct {v11, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    const/16 v13, 0xc

    .line 161
    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    .line 163
    .line 164
    const/high16 v2, 0x41c00000    # 24.0f

    .line 165
    .line 166
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    float-to-int v2, v2

    .line 171
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 175
    iput v2, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 176
    .line 177
    invoke-virtual {v5, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 181
    .line 182
    invoke-direct {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 186
    .line 187
    invoke-virtual {v2, v10, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v10}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 191
    .line 192
    .line 193
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 194
    .line 195
    invoke-direct {v11, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    new-instance v11, Landroid/widget/RelativeLayout;

    .line 205
    .line 206
    invoke-direct {v11, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 210
    .line 211
    invoke-virtual {v11, v10, v9, v10, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    .line 213
    .line 214
    invoke-static {v6, v6, v13, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v5, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 222
    .line 223
    add-int/2addr v3, v3

    .line 224
    iget-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 225
    .line 226
    if-eqz v9, :cond_1

    .line 227
    .line 228
    invoke-virtual {v9}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    iget-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 233
    .line 234
    invoke-virtual {v9}, Lcom/mycompany/app/view/MyWebBody;->getRectHeight()I

    .line 235
    .line 236
    .line 237
    move-result v9

    .line 238
    goto :goto_0

    .line 239
    :cond_1
    move v9, v10

    .line 240
    :goto_0
    if-le v10, v3, :cond_2

    .line 241
    .line 242
    if-gt v9, v3, :cond_5

    .line 243
    .line 244
    :cond_2
    iget-object v15, v1, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 245
    .line 246
    if-eqz v15, :cond_3

    .line 247
    .line 248
    iget v10, v15, Landroid/graphics/Point;->x:I

    .line 249
    .line 250
    iget v9, v15, Landroid/graphics/Point;->y:I

    .line 251
    .line 252
    :cond_3
    if-le v10, v3, :cond_4

    .line 253
    .line 254
    if-gt v9, v3, :cond_5

    .line 255
    .line 256
    :cond_4
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->E0(Landroid/app/Activity;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    if-eqz v15, :cond_5

    .line 261
    .line 262
    iget v10, v15, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 263
    .line 264
    iget v9, v15, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 265
    .line 266
    :cond_5
    if-le v10, v3, :cond_6

    .line 267
    .line 268
    if-le v9, v3, :cond_6

    .line 269
    .line 270
    sub-int/2addr v10, v3

    .line 271
    sub-int/2addr v9, v3

    .line 272
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    goto :goto_1

    .line 277
    :cond_6
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 278
    .line 279
    const/high16 v9, 0x42f00000    # 120.0f

    .line 280
    .line 281
    invoke-static {v3, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    float-to-int v3, v3

    .line 286
    :goto_1
    iput v3, v1, Lcom/mycompany/app/web/WebViewActivity;->y1:I

    .line 287
    .line 288
    int-to-float v3, v3

    .line 289
    const v9, 0x3f4ccccd    # 0.8f

    .line 290
    .line 291
    .line 292
    mul-float/2addr v3, v9

    .line 293
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    iput v3, v1, Lcom/mycompany/app/web/WebViewActivity;->z1:I

    .line 298
    .line 299
    const/high16 v3, 0x42dc0000    # 110.0f

    .line 300
    .line 301
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    float-to-int v3, v3

    .line 306
    const/high16 v9, 0x41a00000    # 20.0f

    .line 307
    .line 308
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 309
    .line 310
    .line 311
    move-result v9

    .line 312
    float-to-int v9, v9

    .line 313
    const/high16 v10, 0x41f00000    # 30.0f

    .line 314
    .line 315
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    float-to-int v10, v10

    .line 320
    const/high16 v15, 0x42a00000    # 80.0f

    .line 321
    .line 322
    invoke-static {v1, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    float-to-int v15, v15

    .line 327
    new-instance v8, Landroid/view/View;

    .line 328
    .line 329
    invoke-direct {v8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v4}, Landroid/view/View;->setId(I)V

    .line 333
    .line 334
    .line 335
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .line 337
    iget v13, v1, Lcom/mycompany/app/web/WebViewActivity;->z1:I

    .line 338
    .line 339
    invoke-direct {v14, v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    const/16 v13, 0xf

    .line 343
    .line 344
    invoke-virtual {v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v11, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    new-instance v8, Landroid/widget/FrameLayout;

    .line 351
    .line 352
    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 356
    .line 357
    invoke-direct {v13, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 358
    .line 359
    .line 360
    const/4 v3, 0x2

    .line 361
    invoke-virtual {v13, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 362
    .line 363
    .line 364
    const/16 v3, 0xe

    .line 365
    .line 366
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 367
    .line 368
    .line 369
    const/high16 v3, 0x41200000    # 10.0f

    .line 370
    .line 371
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    float-to-int v3, v3

    .line 376
    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 377
    .line 378
    invoke-virtual {v11, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .line 380
    .line 381
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 382
    .line 383
    const/4 v13, 0x0

    .line 384
    invoke-direct {v3, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 385
    .line 386
    .line 387
    const/16 v13, 0x11

    .line 388
    .line 389
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    .line 391
    .line 392
    const/high16 v13, 0x41900000    # 18.0f

    .line 393
    .line 394
    const/4 v14, 0x1

    .line 395
    invoke-virtual {v3, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 396
    .line 397
    .line 398
    const/high16 v13, -0x1000000

    .line 399
    .line 400
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    .line 402
    .line 403
    const/4 v13, 0x3

    .line 404
    invoke-static {v6, v15, v13, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 409
    .line 410
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 411
    .line 412
    .line 413
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 414
    .line 415
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v11, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 422
    .line 423
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 424
    .line 425
    .line 426
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 427
    .line 428
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 429
    .line 430
    .line 431
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_left_black_24:I

    .line 432
    .line 433
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 434
    .line 435
    .line 436
    const v13, -0x1f1f20

    .line 437
    .line 438
    .line 439
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 440
    .line 441
    .line 442
    const/16 v13, 0x8

    .line 443
    .line 444
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 448
    .line 449
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 450
    .line 451
    invoke-direct {v13, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 452
    .line 453
    .line 454
    const/4 v0, 0x3

    .line 455
    invoke-virtual {v13, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    .line 460
    .line 461
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 462
    .line 463
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 467
    .line 468
    .line 469
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_right_black_24:I

    .line 470
    .line 471
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 472
    .line 473
    .line 474
    const v14, -0x1f1f20

    .line 475
    .line 476
    .line 477
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 478
    .line 479
    .line 480
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    .line 482
    move-object/from16 v17, v3

    .line 483
    .line 484
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 485
    .line 486
    invoke-direct {v14, v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v14, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 490
    .line 491
    .line 492
    const/16 v0, 0x15

    .line 493
    .line 494
    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v11, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Landroid/view/View;

    .line 501
    .line 502
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 503
    .line 504
    .line 505
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_nor_b:I

    .line 506
    .line 507
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v8, v0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 511
    .line 512
    .line 513
    new-instance v3, Landroid/view/View;

    .line 514
    .line 515
    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 516
    .line 517
    .line 518
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_nor_b:I

    .line 519
    .line 520
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 521
    .line 522
    .line 523
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    .line 525
    invoke-direct {v4, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v8, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    .line 533
    .line 534
    new-instance v4, Landroid/view/View;

    .line 535
    .line 536
    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 537
    .line 538
    .line 539
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_nor_b:I

    .line 540
    .line 541
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 542
    .line 543
    .line 544
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .line 546
    invoke-direct {v11, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 547
    .line 548
    .line 549
    mul-int/lit8 v14, v10, 0x2

    .line 550
    .line 551
    invoke-virtual {v11, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v8, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    .line 556
    .line 557
    new-instance v11, Landroid/view/View;

    .line 558
    .line 559
    invoke-direct {v11, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 560
    .line 561
    .line 562
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_nor_b:I

    .line 563
    .line 564
    invoke-virtual {v11, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 565
    .line 566
    .line 567
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 568
    .line 569
    invoke-direct {v14, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 570
    .line 571
    .line 572
    const/16 v16, 0x3

    .line 573
    .line 574
    mul-int/lit8 v10, v10, 0x3

    .line 575
    .line 576
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v8, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    .line 581
    .line 582
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 583
    .line 584
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->m1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 585
    .line 586
    iput-object v12, v1, Lcom/mycompany/app/web/WebViewActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 587
    .line 588
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->o1:Landroidx/viewpager2/widget/ViewPager2;

    .line 589
    .line 590
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->q1:Lcom/mycompany/app/view/MyButtonImage;

    .line 591
    .line 592
    iput-object v13, v1, Lcom/mycompany/app/web/WebViewActivity;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 593
    .line 594
    move-object/from16 v2, v17

    .line 595
    .line 596
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 597
    .line 598
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->t1:Landroid/widget/FrameLayout;

    .line 599
    .line 600
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->u1:Landroid/view/View;

    .line 601
    .line 602
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->v1:Landroid/view/View;

    .line 603
    .line 604
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->w1:Landroid/view/View;

    .line 605
    .line 606
    iput-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->x1:Landroid/view/View;

    .line 607
    .line 608
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 609
    .line 610
    if-nez v0, :cond_7

    .line 611
    .line 612
    goto :goto_2

    .line 613
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$41;

    .line 614
    .line 615
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$41;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 619
    .line 620
    .line 621
    :cond_8
    :goto_2
    return-void
.end method
