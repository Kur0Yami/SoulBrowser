.class Lcom/mycompany/app/dialog/DialogPreImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$1;->c:Lcom/mycompany/app/dialog/DialogPreImage;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage$1;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

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
    const/high16 v4, 0x40000000    # 2.0f

    .line 17
    .line 18
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    float-to-int v5, v5

    .line 23
    new-instance v6, Lcom/mycompany/app/view/MyDialogRelative;

    .line 24
    .line 25
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v6, v5, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v7, -0x1

    .line 36
    const/4 v8, -0x2

    .line 37
    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    const/16 v9, 0x10

    .line 41
    .line 42
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 43
    .line 44
    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    const/high16 v5, 0x43a00000    # 320.0f

    .line 48
    .line 49
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    float-to-int v5, v5

    .line 54
    new-instance v9, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v9, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    .line 61
    .line 62
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    invoke-direct {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    .line 67
    .line 68
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    invoke-virtual {v10, v11, v12, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    .line 74
    const/16 v11, 0x51

    .line 75
    .line 76
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    .line 78
    .line 79
    const/high16 v11, 0x41600000    # 14.0f

    .line 80
    .line 81
    const/4 v12, 0x1

    .line 82
    invoke-virtual {v10, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    const v11, -0x50506

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    sget v13, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 92
    .line 93
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    const/16 v13, 0x8

    .line 97
    .line 98
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v10, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    float-to-int v4, v4

    .line 109
    new-instance v10, Lcom/mycompany/app/view/MyCoverView;

    .line 110
    .line 111
    sget v14, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 112
    .line 113
    invoke-direct {v10, v2, v11, v4, v14}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v13}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v10, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-direct {v4, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 128
    .line 129
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v4, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    new-instance v11, Lcom/mycompany/app/view/MyFadeFrame;

    .line 136
    .line 137
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyFadeFrame;-><init>(Landroid/content/Context;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setTouchable(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v11, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 150
    .line 151
    .line 152
    new-instance v5, Landroid/widget/FrameLayout;

    .line 153
    .line 154
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    .line 159
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    .line 161
    .line 162
    const v8, 0x800005

    .line 163
    .line 164
    .line 165
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    .line 167
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 168
    .line 169
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 170
    .line 171
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 183
    .line 184
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 185
    .line 186
    .line 187
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 188
    .line 189
    invoke-virtual {v7, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 190
    .line 191
    .line 192
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 193
    .line 194
    int-to-float v12, v12

    .line 195
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 196
    .line 197
    int-to-float v13, v13

    .line 198
    invoke-virtual {v7, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 199
    .line 200
    .line 201
    const/high16 v12, -0x5f000000

    .line 202
    .line 203
    const v13, -0x5e8a8a8b

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 207
    .line 208
    .line 209
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 210
    .line 211
    invoke-virtual {v5, v7, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 212
    .line 213
    .line 214
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    .line 221
    .line 222
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_white_24:I

    .line 223
    .line 224
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 225
    .line 226
    .line 227
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 228
    .line 229
    int-to-float v15, v15

    .line 230
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 231
    .line 232
    int-to-float v12, v12

    .line 233
    invoke-virtual {v14, v15, v12}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 234
    .line 235
    .line 236
    const/high16 v12, -0x5f000000

    .line 237
    .line 238
    invoke-virtual {v14, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 239
    .line 240
    .line 241
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    .line 243
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 244
    .line 245
    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 249
    .line 250
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_white_24:I

    .line 261
    .line 262
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 263
    .line 264
    .line 265
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 266
    .line 267
    int-to-float v15, v15

    .line 268
    sget v13, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 269
    .line 270
    int-to-float v13, v13

    .line 271
    invoke-virtual {v12, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 272
    .line 273
    .line 274
    const v13, -0x5e8a8a8b

    .line 275
    .line 276
    .line 277
    const/high16 v15, -0x5f000000

    .line 278
    .line 279
    invoke-virtual {v12, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 280
    .line 281
    .line 282
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 283
    .line 284
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 287
    .line 288
    .line 289
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 290
    .line 291
    mul-int/lit8 v15, v15, 0x2

    .line 292
    .line 293
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_white_24:I

    .line 304
    .line 305
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 306
    .line 307
    .line 308
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 309
    .line 310
    int-to-float v15, v15

    .line 311
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 312
    .line 313
    int-to-float v0, v0

    .line 314
    invoke-virtual {v13, v15, v0}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 315
    .line 316
    .line 317
    const v0, -0x5e8a8a8b

    .line 318
    .line 319
    .line 320
    const/high16 v15, -0x5f000000

    .line 321
    .line 322
    invoke-virtual {v13, v15, v0}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 326
    .line 327
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 328
    .line 329
    invoke-direct {v0, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 330
    .line 331
    .line 332
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 333
    .line 334
    mul-int/lit8 v15, v15, 0x3

    .line 335
    .line 336
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_in_new_white_24:I

    .line 347
    .line 348
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 349
    .line 350
    .line 351
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 352
    .line 353
    int-to-float v2, v2

    .line 354
    sget v8, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 355
    .line 356
    int-to-float v8, v8

    .line 357
    invoke-virtual {v0, v2, v8}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 358
    .line 359
    .line 360
    const v2, -0x5e8a8a8b

    .line 361
    .line 362
    .line 363
    const/high16 v15, -0x5f000000

    .line 364
    .line 365
    invoke-virtual {v0, v15, v2}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 366
    .line 367
    .line 368
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 371
    .line 372
    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 373
    .line 374
    .line 375
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 376
    .line 377
    mul-int/lit8 v8, v8, 0x4

    .line 378
    .line 379
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v5, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .line 384
    .line 385
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogPreImage;->f0:Landroid/widget/FrameLayout;

    .line 386
    .line 387
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 388
    .line 389
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 390
    .line 391
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 392
    .line 393
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 394
    .line 395
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogPreImage;->k0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 396
    .line 397
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogPreImage;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 398
    .line 399
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogPreImage;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 400
    .line 401
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogPreImage;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 402
    .line 403
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogPreImage;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 404
    .line 405
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPreImage;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 406
    .line 407
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 408
    .line 409
    if-nez v0, :cond_1

    .line 410
    .line 411
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$2;

    .line 413
    .line 414
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogPreImage$2;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    .line 419
    .line 420
    return-void
.end method
