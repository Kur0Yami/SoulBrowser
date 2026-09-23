.class Lcom/mycompany/app/dialog/DialogDownUrl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$3;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$3;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->i0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->k0:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_2
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->O0:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    if-nez v5, :cond_3

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_3
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->p0:Lcom/mycompany/app/view/MyLineLinear;

    .line 30
    .line 31
    if-nez v6, :cond_4

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_4
    sget v7, Lnet/kaki87/soul2/testing/R$id;->down_icon_frame:I

    .line 36
    .line 37
    sget v8, Lnet/kaki87/soul2/testing/R$id;->down_path_title:I

    .line 38
    .line 39
    sget v9, Lnet/kaki87/soul2/testing/R$id;->down_load_view:I

    .line 40
    .line 41
    new-instance v10, Lcom/mycompany/app/view/MyLineRelative;

    .line 42
    .line 43
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const/high16 v11, 0x40c00000    # 6.0f

    .line 47
    .line 48
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    float-to-int v11, v11

    .line 53
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 54
    .line 55
    const/4 v13, 0x0

    .line 56
    invoke-virtual {v10, v12, v13, v11, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 57
    .line 58
    .line 59
    sget v11, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 60
    .line 61
    invoke-virtual {v10, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 62
    .line 63
    .line 64
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 65
    .line 66
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 67
    .line 68
    .line 69
    const/4 v11, -0x1

    .line 70
    const/4 v12, -0x2

    .line 71
    invoke-virtual {v6, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 72
    .line 73
    .line 74
    const/high16 v6, 0x42b00000    # 88.0f

    .line 75
    .line 76
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    float-to-int v6, v6

    .line 81
    new-instance v14, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v7}, Landroid/view/View;->setId(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v15, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/16 v11, 0xf

    .line 101
    .line 102
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    .line 104
    .line 105
    const/16 v11, 0x15

    .line 106
    .line 107
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    .line 109
    .line 110
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 111
    .line 112
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 124
    .line 125
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    .line 127
    .line 128
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 129
    .line 130
    int-to-float v12, v12

    .line 131
    const/4 v13, 0x1

    .line 132
    invoke-virtual {v11, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 133
    .line 134
    .line 135
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 136
    .line 137
    int-to-float v12, v12

    .line 138
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 139
    .line 140
    .line 141
    const/16 v12, 0x8

    .line 142
    .line 143
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    invoke-virtual {v14, v11, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 149
    .line 150
    .line 151
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    .line 158
    .line 159
    sget v0, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 160
    .line 161
    int-to-float v0, v0

    .line 162
    invoke-virtual {v12, v0, v13}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 163
    .line 164
    .line 165
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 166
    .line 167
    int-to-float v0, v0

    .line 168
    invoke-virtual {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0x8

    .line 172
    .line 173
    invoke-virtual {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 177
    .line 178
    invoke-virtual {v14, v12, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v16, v12

    .line 190
    .line 191
    sget v12, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 192
    .line 193
    int-to-float v12, v12

    .line 194
    invoke-virtual {v0, v12, v13}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 195
    .line 196
    .line 197
    sget v12, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 198
    .line 199
    int-to-float v12, v12

    .line 200
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 201
    .line 202
    .line 203
    const/16 v12, 0x8

    .line 204
    .line 205
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 209
    .line 210
    invoke-virtual {v14, v0, v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 211
    .line 212
    .line 213
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    .line 220
    .line 221
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 222
    .line 223
    int-to-float v15, v15

    .line 224
    invoke-virtual {v12, v15, v13}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 225
    .line 226
    .line 227
    sget v15, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 228
    .line 229
    int-to-float v15, v15

    .line 230
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 231
    .line 232
    .line 233
    const/16 v15, 0x8

    .line 234
    .line 235
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 239
    .line 240
    invoke-virtual {v14, v12, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 241
    .line 242
    .line 243
    new-instance v6, Landroid/widget/RelativeLayout;

    .line 244
    .line 245
    invoke-direct {v6, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    invoke-virtual {v6, v15, v14, v15, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 252
    .line 253
    .line 254
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .line 256
    const/4 v13, -0x1

    .line 257
    const/4 v15, -0x2

    .line 258
    invoke-direct {v14, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/16 v13, 0x10

    .line 262
    .line 263
    invoke-virtual {v14, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 264
    .line 265
    .line 266
    const/16 v7, 0xf

    .line 267
    .line 268
    invoke-virtual {v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 269
    .line 270
    .line 271
    const/high16 v7, 0x41200000    # 10.0f

    .line 272
    .line 273
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    float-to-int v7, v7

    .line 278
    invoke-virtual {v14, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .line 283
    .line 284
    const/4 v7, 0x0

    .line 285
    const/high16 v13, 0x41600000    # 14.0f

    .line 286
    .line 287
    const/4 v14, 0x1

    .line 288
    invoke-static {v2, v7, v8, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    .line 291
    move-result-object v15

    .line 292
    sget v13, Lnet/kaki87/soul2/testing/R$string;->down_location:I

    .line 293
    .line 294
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(I)V

    .line 295
    .line 296
    .line 297
    const/4 v13, -0x2

    .line 298
    invoke-virtual {v6, v15, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 299
    .line 300
    .line 301
    const/4 v13, 0x2

    .line 302
    invoke-static {v2, v7, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 307
    .line 308
    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 309
    .line 310
    .line 311
    const/high16 v7, 0x41800000    # 16.0f

    .line 312
    .line 313
    invoke-virtual {v13, v14, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 314
    .line 315
    .line 316
    const/4 v14, 0x3

    .line 317
    const/4 v7, -0x2

    .line 318
    invoke-static {v7, v7, v14, v8}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 323
    .line 324
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 325
    .line 326
    invoke-virtual {v6, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    .line 328
    .line 329
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 330
    .line 331
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 335
    .line 336
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 337
    .line 338
    .line 339
    const/16 v7, 0x8

    .line 340
    .line 341
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    const/high16 v7, 0x430c0000    # 140.0f

    .line 345
    .line 346
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    float-to-int v7, v7

    .line 351
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 352
    .line 353
    const/4 v14, -0x1

    .line 354
    invoke-direct {v8, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    .line 356
    .line 357
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 358
    .line 359
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 360
    .line 361
    .line 362
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 363
    .line 364
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .line 369
    .line 370
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 371
    .line 372
    if-eqz v7, :cond_5

    .line 373
    .line 374
    const v7, -0x50506

    .line 375
    .line 376
    .line 377
    goto :goto_0

    .line 378
    :cond_5
    const v7, -0xc6b655

    .line 379
    .line 380
    .line 381
    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    .line 382
    .line 383
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    float-to-int v8, v8

    .line 388
    new-instance v14, Lcom/mycompany/app/view/MyCoverView;

    .line 389
    .line 390
    move-object/from16 v17, v12

    .line 391
    .line 392
    sget v12, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 393
    .line 394
    invoke-direct {v14, v2, v7, v8, v12}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v14, v9}, Landroid/view/View;->setId(I)V

    .line 398
    .line 399
    .line 400
    const/4 v7, 0x1

    .line 401
    invoke-virtual {v14, v7}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 402
    .line 403
    .line 404
    const/16 v7, 0x8

    .line 405
    .line 406
    invoke-virtual {v14, v7}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    const/high16 v7, 0x43600000    # 224.0f

    .line 410
    .line 411
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 412
    .line 413
    .line 414
    move-result v7

    .line 415
    float-to-int v7, v7

    .line 416
    const/4 v8, -0x1

    .line 417
    invoke-virtual {v5, v14, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 418
    .line 419
    .line 420
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 421
    .line 422
    const/4 v8, 0x0

    .line 423
    invoke-direct {v7, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 424
    .line 425
    .line 426
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 427
    .line 428
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 429
    .line 430
    .line 431
    const/16 v8, 0x11

    .line 432
    .line 433
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    .line 435
    .line 436
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 437
    .line 438
    int-to-float v12, v12

    .line 439
    const/high16 v8, 0x3f800000    # 1.0f

    .line 440
    .line 441
    invoke-virtual {v7, v12, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 442
    .line 443
    .line 444
    const/4 v8, 0x1

    .line 445
    const/high16 v12, 0x41600000    # 14.0f

    .line 446
    .line 447
    invoke-virtual {v7, v8, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 448
    .line 449
    .line 450
    sget v8, Lnet/kaki87/soul2/testing/R$string;->waiting:I

    .line 451
    .line 452
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 453
    .line 454
    .line 455
    const/16 v12, 0x8

    .line 456
    .line 457
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 461
    .line 462
    move-object/from16 v19, v6

    .line 463
    .line 464
    move-object/from16 v18, v14

    .line 465
    .line 466
    const/4 v6, -0x1

    .line 467
    const/4 v14, -0x2

    .line 468
    invoke-direct {v8, v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    new-instance v6, Lcom/mycompany/app/view/MyButtonText;

    .line 478
    .line 479
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 483
    .line 484
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 485
    .line 486
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 487
    .line 488
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 489
    .line 490
    invoke-virtual {v6, v8, v9, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 491
    .line 492
    .line 493
    const/16 v8, 0x11

    .line 494
    .line 495
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 496
    .line 497
    .line 498
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 499
    .line 500
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 501
    .line 502
    .line 503
    const/4 v8, 0x1

    .line 504
    const/high16 v12, 0x41600000    # 14.0f

    .line 505
    .line 506
    invoke-virtual {v6, v8, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 507
    .line 508
    .line 509
    sget v9, Lnet/kaki87/soul2/testing/R$string;->report_error:I

    .line 510
    .line 511
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 518
    .line 519
    .line 520
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 521
    .line 522
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 523
    .line 524
    .line 525
    const/16 v12, 0x8

    .line 526
    .line 527
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    const/high16 v8, 0x41c00000    # 24.0f

    .line 531
    .line 532
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 533
    .line 534
    .line 535
    move-result v8

    .line 536
    float-to-int v8, v8

    .line 537
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 538
    .line 539
    const/4 v12, -0x1

    .line 540
    const/4 v14, -0x2

    .line 541
    invoke-direct {v9, v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 542
    .line 543
    .line 544
    const/high16 v12, 0x42f00000    # 120.0f

    .line 545
    .line 546
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    float-to-int v12, v12

    .line 551
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 552
    .line 553
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    .line 561
    .line 562
    new-instance v5, Lcom/mycompany/app/view/MyRecyclerView;

    .line 563
    .line 564
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 565
    .line 566
    .line 567
    const/4 v8, 0x1

    .line 568
    invoke-virtual {v5, v8, v8}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5, v8}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 572
    .line 573
    .line 574
    const/4 v9, 0x0

    .line 575
    invoke-virtual {v5, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 576
    .line 577
    .line 578
    const/16 v12, 0x8

    .line 579
    .line 580
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 581
    .line 582
    .line 583
    const/4 v12, -0x1

    .line 584
    const/4 v14, -0x2

    .line 585
    invoke-virtual {v4, v5, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 586
    .line 587
    .line 588
    new-instance v4, Lcom/mycompany/app/view/MyLineLinear;

    .line 589
    .line 590
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 597
    .line 598
    .line 599
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 600
    .line 601
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 605
    .line 606
    .line 607
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 608
    .line 609
    invoke-virtual {v3, v4, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 610
    .line 611
    .line 612
    const/high16 v3, 0x41800000    # 16.0f

    .line 613
    .line 614
    const/4 v9, 0x0

    .line 615
    const/16 v14, 0x11

    .line 616
    .line 617
    invoke-static {v2, v9, v14, v8, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    sget v3, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 622
    .line 623
    const/4 v8, 0x0

    .line 624
    invoke-static {v9, v3, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    const/high16 v8, 0x3f800000    # 1.0f

    .line 629
    .line 630
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 631
    .line 632
    invoke-virtual {v4, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    .line 634
    .line 635
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 636
    .line 637
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 641
    .line 642
    .line 643
    const/high16 v8, 0x41800000    # 16.0f

    .line 644
    .line 645
    const/4 v14, 0x1

    .line 646
    invoke-virtual {v3, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 647
    .line 648
    .line 649
    sget v8, Lnet/kaki87/soul2/testing/R$string;->fast_down:I

    .line 650
    .line 651
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 655
    .line 656
    .line 657
    const/16 v12, 0x8

    .line 658
    .line 659
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .line 661
    .line 662
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    .line 664
    const/4 v8, 0x0

    .line 665
    const/4 v12, -0x1

    .line 666
    invoke-direct {v2, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 667
    .line 668
    .line 669
    const/high16 v8, 0x3f800000    # 1.0f

    .line 670
    .line 671
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 672
    .line 673
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .line 675
    .line 676
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->x0:Lcom/mycompany/app/view/MyLineRelative;

    .line 677
    .line 678
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 679
    .line 680
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 681
    .line 682
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 683
    .line 684
    move-object/from16 v2, v16

    .line 685
    .line 686
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 687
    .line 688
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 689
    .line 690
    move-object/from16 v0, v19

    .line 691
    .line 692
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E0:Lcom/mycompany/app/view/MyRoundImage;

    .line 693
    .line 694
    move-object/from16 v0, v18

    .line 695
    .line 696
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 697
    .line 698
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 699
    .line 700
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->L0:Lcom/mycompany/app/view/MyLineLinear;

    .line 701
    .line 702
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 703
    .line 704
    move-object/from16 v0, v17

    .line 705
    .line 706
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->P0:Lcom/mycompany/app/view/MyButtonImage;

    .line 707
    .line 708
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->S0:Lcom/mycompany/app/view/MyLineText;

    .line 709
    .line 710
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 711
    .line 712
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->R0:Lcom/mycompany/app/view/MyButtonText;

    .line 713
    .line 714
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 715
    .line 716
    if-nez v0, :cond_6

    .line 717
    .line 718
    :goto_1
    return-void

    .line 719
    :cond_6
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$4;

    .line 720
    .line 721
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogDownUrl$4;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    .line 726
    .line 727
    return-void
.end method
