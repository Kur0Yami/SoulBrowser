.class Lcom/mycompany/app/dialog/DialogSetTabPos$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabPos;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabPos$1;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabPos$1;->c:Lcom/mycompany/app/dialog/DialogSetTabPos;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v7, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v9, -0x1

    .line 28
    const/4 v10, 0x0

    .line 29
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    const/high16 v11, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 35
    .line 36
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    const/high16 v8, 0x41c00000    # 24.0f

    .line 40
    .line 41
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    float-to-int v8, v8

    .line 46
    new-instance v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    invoke-direct {v12, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v12, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v12, v10, v8, v10, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 55
    .line 56
    .line 57
    const/4 v8, -0x2

    .line 58
    invoke-virtual {v7, v12, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 59
    .line 60
    .line 61
    const/high16 v13, 0x43200000    # 160.0f

    .line 62
    .line 63
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    float-to-int v13, v13

    .line 68
    new-instance v14, Lcom/mycompany/app/view/MyButtonRelative;

    .line 69
    .line 70
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 74
    .line 75
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 76
    .line 77
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 78
    .line 79
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 80
    .line 81
    invoke-virtual {v14, v15, v8, v11, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 85
    .line 86
    invoke-virtual {v14, v5, v10}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 87
    .line 88
    .line 89
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 90
    .line 91
    invoke-direct {v5, v13, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 95
    .line 96
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    iput-boolean v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 100
    .line 101
    const/high16 v3, 0x43960000    # 300.0f

    .line 102
    .line 103
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    float-to-int v3, v3

    .line 108
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 109
    .line 110
    invoke-virtual {v12, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 114
    .line 115
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    const/high16 v5, 0x3f800000    # 1.0f

    .line 119
    .line 120
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineFrame;->f(F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v3, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    .line 125
    .line 126
    new-instance v5, Landroid/widget/ImageView;

    .line 127
    .line 128
    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 132
    .line 133
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v5, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 137
    .line 138
    .line 139
    iget v8, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->w0:I

    .line 140
    .line 141
    new-instance v10, Lcom/mycompany/app/view/MyLineImage;

    .line 142
    .line 143
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 147
    .line 148
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10}, Lcom/mycompany/app/view/MyLineImage;->a()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v10, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 155
    .line 156
    .line 157
    new-instance v12, Lcom/mycompany/app/view/MyLineImage;

    .line 158
    .line 159
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12}, Lcom/mycompany/app/view/MyLineImage;->b()V

    .line 166
    .line 167
    .line 168
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    invoke-direct {v13, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    const/16 v15, 0x50

    .line 174
    .line 175
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    .line 177
    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    new-instance v13, Lcom/mycompany/app/view/MyLineImage;

    .line 181
    .line 182
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13}, Lcom/mycompany/app/view/MyLineImage;->a()V

    .line 189
    .line 190
    .line 191
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .line 193
    invoke-direct {v15, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    new-instance v15, Lcom/mycompany/app/view/MyLineImage;

    .line 200
    .line 201
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Lcom/mycompany/app/view/MyLineImage;->b()V

    .line 208
    .line 209
    .line 210
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .line 212
    invoke-direct {v0, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 213
    .line 214
    .line 215
    const/16 v9, 0x50

    .line 216
    .line 217
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    .line 219
    invoke-virtual {v3, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/mycompany/app/view/MyLineImage;

    .line 223
    .line 224
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineImage;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    .line 229
    .line 230
    const/4 v9, 0x4

    .line 231
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    const/4 v9, -0x1

    .line 235
    invoke-virtual {v3, v0, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 236
    .line 237
    .line 238
    new-instance v11, Lcom/mycompany/app/view/MySelectView;

    .line 239
    .line 240
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MySelectView;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v17, v0

    .line 244
    .line 245
    const/16 v0, 0x8

    .line 246
    .line 247
    invoke-virtual {v11, v0}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v11, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    const/high16 v8, 0x41600000    # 14.0f

    .line 254
    .line 255
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    float-to-int v9, v9

    .line 260
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    .line 267
    .line 268
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 269
    .line 270
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    .line 275
    move-object/from16 v20, v11

    .line 276
    .line 277
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 278
    .line 279
    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    const v11, 0x800005

    .line 283
    .line 284
    .line 285
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 286
    .line 287
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 288
    .line 289
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 290
    .line 291
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 302
    .line 303
    int-to-float v11, v11

    .line 304
    move-object/from16 v21, v15

    .line 305
    .line 306
    const/4 v15, 0x1

    .line 307
    invoke-virtual {v0, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 308
    .line 309
    .line 310
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 311
    .line 312
    int-to-float v11, v11

    .line 313
    invoke-virtual {v0, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 314
    .line 315
    .line 316
    const/16 v11, 0x8

    .line 317
    .line 318
    invoke-virtual {v0, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .line 323
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 324
    .line 325
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 326
    .line 327
    .line 328
    const v15, 0x800055

    .line 329
    .line 330
    .line 331
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 332
    .line 333
    sget v22, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 334
    .line 335
    sget v23, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 336
    .line 337
    add-int v22, v22, v23

    .line 338
    .line 339
    sget v23, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 340
    .line 341
    add-int v15, v22, v23

    .line 342
    .line 343
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 344
    .line 345
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 346
    .line 347
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    .line 352
    .line 353
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    sget v11, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 358
    .line 359
    int-to-float v11, v11

    .line 360
    const/4 v15, 0x1

    .line 361
    invoke-virtual {v9, v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 362
    .line 363
    .line 364
    sget v11, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 365
    .line 366
    int-to-float v11, v11

    .line 367
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 368
    .line 369
    .line 370
    const/16 v11, 0x8

    .line 371
    .line 372
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 376
    .line 377
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 378
    .line 379
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    const v15, 0x800055

    .line 383
    .line 384
    .line 385
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    .line 387
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 388
    .line 389
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 390
    .line 391
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    new-instance v11, Lcom/mycompany/app/view/MyLineRelative;

    .line 398
    .line 399
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 403
    .line 404
    invoke-virtual {v11, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    .line 406
    .line 407
    const/16 v15, 0x10

    .line 408
    .line 409
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 410
    .line 411
    .line 412
    sget v15, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 413
    .line 414
    invoke-virtual {v11, v15}, Landroid/view/View;->setMinimumHeight(I)V

    .line 415
    .line 416
    .line 417
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 418
    .line 419
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 420
    .line 421
    .line 422
    move-object/from16 v19, v13

    .line 423
    .line 424
    const/4 v13, -0x1

    .line 425
    const/4 v15, -0x2

    .line 426
    invoke-virtual {v6, v11, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 427
    .line 428
    .line 429
    new-instance v13, Landroid/view/View;

    .line 430
    .line 431
    invoke-direct {v13, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 432
    .line 433
    .line 434
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 435
    .line 436
    move-object/from16 v22, v12

    .line 437
    .line 438
    const/4 v12, 0x1

    .line 439
    invoke-direct {v15, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    .line 441
    .line 442
    const/16 v12, 0x15

    .line 443
    .line 444
    invoke-virtual {v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v11, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .line 449
    .line 450
    const/4 v12, 0x0

    .line 451
    const/high16 v15, 0x41800000    # 16.0f

    .line 452
    .line 453
    move-object/from16 v18, v10

    .line 454
    .line 455
    move-object/from16 v23, v13

    .line 456
    .line 457
    const/4 v13, 0x1

    .line 458
    invoke-static {v2, v12, v4, v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 459
    .line 460
    .line 461
    move-result-object v10

    .line 462
    sget v15, Lnet/kaki87/soul2/testing/R$string;->show_tab_bar:I

    .line 463
    .line 464
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(I)V

    .line 465
    .line 466
    .line 467
    move-object/from16 v16, v5

    .line 468
    .line 469
    const/4 v5, -0x1

    .line 470
    const/4 v15, -0x2

    .line 471
    invoke-virtual {v11, v10, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 472
    .line 473
    .line 474
    const/high16 v5, 0x41600000    # 14.0f

    .line 475
    .line 476
    invoke-static {v2, v12, v13, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    const/4 v12, 0x3

    .line 481
    const/4 v13, -0x1

    .line 482
    invoke-static {v13, v15, v12, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 487
    .line 488
    iput v12, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 489
    .line 490
    invoke-virtual {v11, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    .line 492
    .line 493
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 494
    .line 495
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 496
    .line 497
    .line 498
    const/16 v2, 0x11

    .line 499
    .line 500
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 501
    .line 502
    .line 503
    const/high16 v2, 0x41800000    # 16.0f

    .line 504
    .line 505
    const/4 v15, 0x1

    .line 506
    invoke-virtual {v4, v15, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 507
    .line 508
    .line 509
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 510
    .line 511
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 512
    .line 513
    .line 514
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 515
    .line 516
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v15}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 520
    .line 521
    .line 522
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 523
    .line 524
    const/4 v13, -0x1

    .line 525
    invoke-virtual {v6, v4, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 526
    .line 527
    .line 528
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 529
    .line 530
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->e0:Landroid/widget/FrameLayout;

    .line 531
    .line 532
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 533
    .line 534
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 535
    .line 536
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 537
    .line 538
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->i0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 539
    .line 540
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 541
    .line 542
    move-object/from16 v0, v16

    .line 543
    .line 544
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->k0:Landroid/widget/ImageView;

    .line 545
    .line 546
    move-object/from16 v0, v18

    .line 547
    .line 548
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->l0:Lcom/mycompany/app/view/MyLineImage;

    .line 549
    .line 550
    move-object/from16 v0, v22

    .line 551
    .line 552
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->m0:Lcom/mycompany/app/view/MyLineImage;

    .line 553
    .line 554
    move-object/from16 v0, v19

    .line 555
    .line 556
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->n0:Lcom/mycompany/app/view/MyLineImage;

    .line 557
    .line 558
    move-object/from16 v0, v21

    .line 559
    .line 560
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->o0:Lcom/mycompany/app/view/MyLineImage;

    .line 561
    .line 562
    move-object/from16 v0, v17

    .line 563
    .line 564
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->p0:Lcom/mycompany/app/view/MyLineImage;

    .line 565
    .line 566
    move-object/from16 v0, v20

    .line 567
    .line 568
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->q0:Lcom/mycompany/app/view/MySelectView;

    .line 569
    .line 570
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->r0:Lcom/mycompany/app/view/MyLineRelative;

    .line 571
    .line 572
    move-object/from16 v0, v23

    .line 573
    .line 574
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->s0:Landroid/view/View;

    .line 575
    .line 576
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 577
    .line 578
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 579
    .line 580
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetTabPos;->v0:Lcom/mycompany/app/view/MyLineText;

    .line 581
    .line 582
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 583
    .line 584
    if-nez v0, :cond_1

    .line 585
    .line 586
    :goto_0
    return-void

    .line 587
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabPos$2;

    .line 588
    .line 589
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSetTabPos$2;-><init>(Lcom/mycompany/app/dialog/DialogSetTabPos;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    .line 594
    .line 595
    return-void
.end method
