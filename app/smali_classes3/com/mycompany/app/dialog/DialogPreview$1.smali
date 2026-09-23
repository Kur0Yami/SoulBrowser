.class Lcom/mycompany/app/dialog/DialogPreview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$1;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview$1;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Lcom/mycompany/app/view/MyDialogRelative;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/high16 v5, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    float-to-int v5, v5

    .line 28
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    const/4 v8, -0x2

    .line 37
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    const/16 v9, 0x10

    .line 41
    .line 42
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    .line 44
    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    const/high16 v9, 0x43a00000    # 320.0f

    .line 53
    .line 54
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    float-to-int v9, v9

    .line 59
    invoke-virtual {v4, v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogPreview;->g0:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_1

    .line 69
    .line 70
    new-instance v5, Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_1
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    const/4 v11, 0x0

    .line 90
    invoke-direct {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    .line 92
    .line 93
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    invoke-virtual {v10, v11, v12, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    .line 98
    .line 99
    const/16 v11, 0x51

    .line 100
    .line 101
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    .line 103
    .line 104
    const/high16 v11, 0x41600000    # 14.0f

    .line 105
    .line 106
    const/4 v12, 0x1

    .line 107
    invoke-virtual {v10, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 108
    .line 109
    .line 110
    const v11, -0x50506

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    sget v13, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 117
    .line 118
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 119
    .line 120
    .line 121
    const/16 v13, 0x8

    .line 122
    .line 123
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v10, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    new-instance v14, Lcom/mycompany/app/view/MyCoverView;

    .line 130
    .line 131
    sget v15, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 132
    .line 133
    invoke-direct {v14, v2, v11, v5, v15}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v14, v13}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v14, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 140
    .line 141
    .line 142
    new-instance v5, Lcom/mycompany/app/view/MyFadeFrame;

    .line 143
    .line 144
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v13}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 157
    .line 158
    .line 159
    new-instance v7, Landroid/widget/FrameLayout;

    .line 160
    .line 161
    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    .line 166
    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const v8, 0x800005

    .line 170
    .line 171
    .line 172
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    .line 174
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 175
    .line 176
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 177
    .line 178
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 190
    .line 191
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 192
    .line 193
    .line 194
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 195
    .line 196
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 200
    .line 201
    int-to-float v11, v11

    .line 202
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 203
    .line 204
    int-to-float v12, v12

    .line 205
    invoke-virtual {v8, v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 206
    .line 207
    .line 208
    const/high16 v11, -0x5f000000

    .line 209
    .line 210
    const v12, -0x5e8a8a8b

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 214
    .line 215
    .line 216
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 217
    .line 218
    invoke-virtual {v7, v8, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 219
    .line 220
    .line 221
    new-instance v13, Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    .line 228
    .line 229
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_white_24:I

    .line 230
    .line 231
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 232
    .line 233
    .line 234
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 235
    .line 236
    int-to-float v15, v15

    .line 237
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 238
    .line 239
    int-to-float v11, v11

    .line 240
    invoke-virtual {v13, v15, v11}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 241
    .line 242
    .line 243
    const/high16 v11, -0x5f000000

    .line 244
    .line 245
    invoke-virtual {v13, v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 246
    .line 247
    .line 248
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    .line 250
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 251
    .line 252
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 253
    .line 254
    .line 255
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 256
    .line 257
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_white_24:I

    .line 268
    .line 269
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 270
    .line 271
    .line 272
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 273
    .line 274
    int-to-float v15, v15

    .line 275
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 276
    .line 277
    int-to-float v12, v12

    .line 278
    invoke-virtual {v11, v15, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 279
    .line 280
    .line 281
    const v12, -0x5e8a8a8b

    .line 282
    .line 283
    .line 284
    const/high16 v15, -0x5f000000

    .line 285
    .line 286
    invoke-virtual {v11, v15, v12}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 287
    .line 288
    .line 289
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 290
    .line 291
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 292
    .line 293
    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 294
    .line 295
    .line 296
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 297
    .line 298
    mul-int/lit8 v15, v15, 0x2

    .line 299
    .line 300
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    .line 305
    .line 306
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_white_24:I

    .line 311
    .line 312
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 313
    .line 314
    .line 315
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 316
    .line 317
    int-to-float v15, v15

    .line 318
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 319
    .line 320
    int-to-float v0, v0

    .line 321
    invoke-virtual {v12, v15, v0}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 322
    .line 323
    .line 324
    const v0, -0x5e8a8a8b

    .line 325
    .line 326
    .line 327
    const/high16 v15, -0x5f000000

    .line 328
    .line 329
    invoke-virtual {v12, v15, v0}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 330
    .line 331
    .line 332
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    .line 334
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 335
    .line 336
    invoke-direct {v0, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 337
    .line 338
    .line 339
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 340
    .line 341
    mul-int/lit8 v15, v15, 0x3

    .line 342
    .line 343
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v7, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_white_24:I

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 356
    .line 357
    .line 358
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 359
    .line 360
    int-to-float v2, v2

    .line 361
    sget v9, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 362
    .line 363
    int-to-float v9, v9

    .line 364
    invoke-virtual {v0, v2, v9}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 365
    .line 366
    .line 367
    const v2, -0x5e8a8a8b

    .line 368
    .line 369
    .line 370
    const/high16 v15, -0x5f000000

    .line 371
    .line 372
    invoke-virtual {v0, v15, v2}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 373
    .line 374
    .line 375
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 376
    .line 377
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 378
    .line 379
    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 383
    .line 384
    mul-int/lit8 v9, v9, 0x4

    .line 385
    .line 386
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .line 391
    .line 392
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogPreview;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 395
    .line 396
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 397
    .line 398
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogPreview;->y0:Lcom/mycompany/app/view/MyButtonImage;

    .line 399
    .line 400
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogPreview;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 401
    .line 402
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogPreview;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 403
    .line 404
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogPreview;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 405
    .line 406
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPreview;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 407
    .line 408
    :goto_0
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 409
    .line 410
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 411
    .line 412
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 413
    .line 414
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 415
    .line 416
    if-nez v0, :cond_2

    .line 417
    .line 418
    :goto_1
    return-void

    .line 419
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$2;

    .line 420
    .line 421
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogPreview$2;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    .line 426
    .line 427
    return-void
.end method
