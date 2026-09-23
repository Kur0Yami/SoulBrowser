.class Lcom/mycompany/app/web/WebVideoFull$38;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$38;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$38;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    new-instance v3, Lcom/mycompany/app/view/MySizeFrame;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/mycompany/app/view/MyFadeRelative;

    .line 23
    .line 24
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyFadeRelative;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const/16 v5, 0x64

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyFadeRelative;->setAnimTime(I)V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyFadeRelative;->setTouchable(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 37
    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyFadeRelative;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    const/4 v7, -0x1

    .line 45
    invoke-virtual {v3, v4, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-direct {v8, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    .line 53
    .line 54
    const/16 v9, 0x10

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 60
    .line 61
    .line 62
    const/high16 v9, 0x41800000    # 16.0f

    .line 63
    .line 64
    invoke-virtual {v8, v5, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .line 75
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    invoke-direct {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    const/high16 v6, 0x41c00000    # 24.0f

    .line 81
    .line 82
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    float-to-int v6, v6

    .line 87
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    .line 90
    const/high16 v6, 0x43160000    # 150.0f

    .line 91
    .line 92
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    float-to-int v6, v6

    .line 97
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    const/high16 v5, 0x41600000    # 14.0f

    .line 104
    .line 105
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    float-to-int v6, v6

    .line 110
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    float-to-int v5, v5

    .line 115
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 121
    .line 122
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    .line 124
    .line 125
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 126
    .line 127
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    int-to-float v6, v6

    .line 131
    sget v10, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 132
    .line 133
    int-to-float v10, v10

    .line 134
    invoke-virtual {v7, v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 135
    .line 136
    .line 137
    const/high16 v10, -0x1000000

    .line 138
    .line 139
    const v11, -0x5e8a8a8b

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 143
    .line 144
    .line 145
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .line 147
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 148
    .line 149
    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .line 151
    .line 152
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 153
    .line 154
    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    .line 156
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 157
    .line 158
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    new-instance v12, Landroid/widget/LinearLayout;

    .line 165
    .line 166
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    .line 175
    .line 176
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .line 178
    const/4 v14, -0x2

    .line 179
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 180
    .line 181
    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 185
    .line 186
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    .line 188
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 189
    .line 190
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    add-int/2addr v14, v15

    .line 193
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    .line 209
    .line 210
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_screen_rotation_white_24:I

    .line 211
    .line 212
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    sget v14, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 216
    .line 217
    int-to-float v14, v14

    .line 218
    invoke-virtual {v13, v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v13, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 222
    .line 223
    .line 224
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 225
    .line 226
    invoke-virtual {v12, v13, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 227
    .line 228
    .line 229
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v14, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    .line 239
    .line 240
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_zoom_out_map_white_24:I

    .line 241
    .line 242
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 243
    .line 244
    .line 245
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 246
    .line 247
    int-to-float v15, v15

    .line 248
    invoke-virtual {v14, v6, v15}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 252
    .line 253
    .line 254
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 255
    .line 256
    invoke-virtual {v12, v14, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 257
    .line 258
    .line 259
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    .line 269
    .line 270
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_right_alt_white_24:I

    .line 271
    .line 272
    invoke-virtual {v15, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 273
    .line 274
    .line 275
    sget v10, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 276
    .line 277
    int-to-float v10, v10

    .line 278
    invoke-virtual {v15, v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 279
    .line 280
    .line 281
    const/high16 v10, -0x1000000

    .line 282
    .line 283
    invoke-virtual {v15, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 284
    .line 285
    .line 286
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 287
    .line 288
    invoke-virtual {v12, v15, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 289
    .line 290
    .line 291
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 292
    .line 293
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 300
    .line 301
    .line 302
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_slow_motion_video_white_24:I

    .line 303
    .line 304
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 305
    .line 306
    .line 307
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 308
    .line 309
    int-to-float v11, v11

    .line 310
    invoke-virtual {v10, v6, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 311
    .line 312
    .line 313
    const/high16 v0, -0x1000000

    .line 314
    .line 315
    const v11, -0x5e8a8a8b

    .line 316
    .line 317
    .line 318
    invoke-virtual {v10, v0, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 319
    .line 320
    .line 321
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 322
    .line 323
    invoke-virtual {v12, v10, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 327
    .line 328
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 335
    .line 336
    .line 337
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_white_24:I

    .line 338
    .line 339
    invoke-virtual {v0, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 340
    .line 341
    .line 342
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 343
    .line 344
    int-to-float v11, v11

    .line 345
    invoke-virtual {v0, v6, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v16, v10

    .line 349
    .line 350
    const/high16 v10, -0x1000000

    .line 351
    .line 352
    const v11, -0x5e8a8a8b

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v10, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 356
    .line 357
    .line 358
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 359
    .line 360
    invoke-virtual {v12, v0, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 361
    .line 362
    .line 363
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 364
    .line 365
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 372
    .line 373
    .line 374
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_white_24:I

    .line 375
    .line 376
    invoke-virtual {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 377
    .line 378
    .line 379
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 380
    .line 381
    int-to-float v2, v2

    .line 382
    invoke-virtual {v10, v6, v2}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 383
    .line 384
    .line 385
    const/high16 v2, -0x1000000

    .line 386
    .line 387
    const v11, -0x5e8a8a8b

    .line 388
    .line 389
    .line 390
    invoke-virtual {v10, v2, v11}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 391
    .line 392
    .line 393
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 394
    .line 395
    invoke-virtual {v12, v10, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 396
    .line 397
    .line 398
    iput-object v3, v1, Lcom/mycompany/app/web/WebVideoFull;->p:Lcom/mycompany/app/view/MySizeFrame;

    .line 399
    .line 400
    iput-object v4, v1, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 401
    .line 402
    iput-object v8, v1, Lcom/mycompany/app/web/WebVideoFull;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 403
    .line 404
    iput-object v7, v1, Lcom/mycompany/app/web/WebVideoFull;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 405
    .line 406
    iput-object v12, v1, Lcom/mycompany/app/web/WebVideoFull;->t:Landroid/widget/LinearLayout;

    .line 407
    .line 408
    iput-object v13, v1, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 409
    .line 410
    iput-object v14, v1, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 411
    .line 412
    iput-object v15, v1, Lcom/mycompany/app/web/WebVideoFull;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 413
    .line 414
    move-object/from16 v2, v16

    .line 415
    .line 416
    iput-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 417
    .line 418
    iput-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->y:Lcom/mycompany/app/view/MyButtonImage;

    .line 419
    .line 420
    iput-object v10, v1, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 423
    .line 424
    if-nez v0, :cond_2

    .line 425
    .line 426
    :goto_1
    return-void

    .line 427
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$39;

    .line 428
    .line 429
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebVideoFull$39;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 433
    .line 434
    .line 435
    return-void
.end method
