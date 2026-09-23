.class Lcom/mycompany/app/dialog/DialogWebBookList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$1;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList$1;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_button_view:I

    .line 16
    .line 17
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 18
    .line 19
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 20
    .line 21
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    const/4 v9, -0x1

    .line 27
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance v8, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 v10, 0x2

    .line 39
    invoke-static {v9, v9, v10, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    new-instance v10, Lcom/mycompany/app/view/MyRecyclerView;

    .line 47
    .line 48
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    invoke-virtual {v10, v11, v11}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 53
    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    invoke-virtual {v10, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    .line 61
    .line 62
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    sget v14, Lcom/mycompany/app/main/MainApp;->c1:I

    .line 68
    .line 69
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 70
    .line 71
    invoke-virtual {v8, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v13, Lcom/mycompany/app/view/MyScrollBar;

    .line 75
    .line 76
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 80
    .line 81
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 82
    .line 83
    iput v14, v13, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 84
    .line 85
    iput v15, v13, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 86
    .line 87
    const/4 v14, 0x4

    .line 88
    invoke-virtual {v13, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .line 93
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 94
    .line 95
    invoke-direct {v15, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    const v14, 0x800005

    .line 99
    .line 100
    .line 101
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    .line 103
    invoke-virtual {v8, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    new-instance v15, Lcom/mycompany/app/view/MyFadeImage;

    .line 107
    .line 108
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 112
    .line 113
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    .line 115
    .line 116
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 117
    .line 118
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    const/16 v12, 0x8

    .line 122
    .line 123
    invoke-virtual {v15, v12}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    sget v9, Lcom/mycompany/app/main/MainApp;->c1:I

    .line 132
    .line 133
    iput v9, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    .line 135
    invoke-virtual {v8, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    new-instance v9, Lcom/mycompany/app/view/MyButtonText;

    .line 139
    .line 140
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 144
    .line 145
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 146
    .line 147
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 148
    .line 149
    move-object/from16 v20, v15

    .line 150
    .line 151
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 152
    .line 153
    invoke-virtual {v9, v12, v11, v0, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 154
    .line 155
    .line 156
    const/16 v0, 0x11

    .line 157
    .line 158
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    .line 160
    .line 161
    const/high16 v11, 0x41600000    # 14.0f

    .line 162
    .line 163
    const/4 v12, 0x1

    .line 164
    invoke-virtual {v9, v12, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 165
    .line 166
    .line 167
    sget v15, Lnet/kaki87/soul2/testing/R$string;->import_normal:I

    .line 168
    .line 169
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 173
    .line 174
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 181
    .line 182
    .line 183
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 184
    .line 185
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 186
    .line 187
    .line 188
    const/16 v12, 0x8

    .line 189
    .line 190
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .line 195
    const/4 v15, -0x2

    .line 196
    const/4 v0, -0x1

    .line 197
    invoke-direct {v12, v0, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x50

    .line 201
    .line 202
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    .line 204
    const/high16 v0, 0x41a00000    # 20.0f

    .line 205
    .line 206
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    float-to-int v0, v0

    .line 211
    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 212
    .line 213
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/mycompany/app/view/MyCoverView;

    .line 223
    .line 224
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 225
    .line 226
    .line 227
    const/16 v12, 0x8

    .line 228
    .line 229
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    .line 234
    const/4 v11, -0x1

    .line 235
    invoke-direct {v12, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    sget v15, Lcom/mycompany/app/main/MainApp;->c1:I

    .line 239
    .line 240
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 241
    .line 242
    invoke-virtual {v8, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .line 244
    .line 245
    new-instance v12, Lcom/mycompany/app/view/MyHeaderView;

    .line 246
    .line 247
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    sget v15, Lcom/mycompany/app/main/MainApp;->c1:I

    .line 251
    .line 252
    invoke-virtual {v8, v12, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 253
    .line 254
    .line 255
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 256
    .line 257
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    .line 262
    .line 263
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 264
    .line 265
    move-object/from16 v22, v0

    .line 266
    .line 267
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 268
    .line 269
    move-object/from16 v23, v13

    .line 270
    .line 271
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 272
    .line 273
    invoke-direct {v15, v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .line 275
    .line 276
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 277
    .line 278
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v12, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 285
    .line 286
    const/4 v13, 0x0

    .line 287
    invoke-direct {v0, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 288
    .line 289
    .line 290
    const/16 v15, 0x10

    .line 291
    .line 292
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 293
    .line 294
    .line 295
    const/4 v13, 0x1

    .line 296
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 297
    .line 298
    .line 299
    const/high16 v15, 0x41900000    # 18.0f

    .line 300
    .line 301
    invoke-virtual {v0, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 302
    .line 303
    .line 304
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    .line 306
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 307
    .line 308
    move-object/from16 v24, v11

    .line 309
    .line 310
    const/4 v11, -0x1

    .line 311
    invoke-direct {v13, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    const/16 v11, 0x10

    .line 315
    .line 316
    invoke-virtual {v13, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    .line 318
    .line 319
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 320
    .line 321
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v12, v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    new-instance v13, Landroid/widget/FrameLayout;

    .line 328
    .line 329
    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v13, v3}, Landroid/view/View;->setId(I)V

    .line 333
    .line 334
    .line 335
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 336
    .line 337
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 338
    .line 339
    move-object/from16 v25, v0

    .line 340
    .line 341
    const/4 v0, -0x2

    .line 342
    invoke-direct {v3, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 346
    .line 347
    .line 348
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 349
    .line 350
    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 351
    .line 352
    invoke-virtual {v12, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .line 354
    .line 355
    new-instance v3, Landroid/widget/LinearLayout;

    .line 356
    .line 357
    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 358
    .line 359
    .line 360
    const/4 v11, 0x0

    .line 361
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 365
    .line 366
    .line 367
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 368
    .line 369
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 370
    .line 371
    invoke-direct {v11, v0, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 372
    .line 373
    .line 374
    const v0, 0x800005

    .line 375
    .line 376
    .line 377
    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    .line 379
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 380
    .line 381
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v13, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    const/high16 v0, 0x41600000    # 14.0f

    .line 388
    .line 389
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    float-to-int v0, v0

    .line 394
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 395
    .line 396
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    .line 404
    .line 405
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 406
    .line 407
    invoke-virtual {v3, v11, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 408
    .line 409
    .line 410
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 411
    .line 412
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v15, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v21, v11

    .line 422
    .line 423
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 424
    .line 425
    invoke-virtual {v3, v15, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 426
    .line 427
    .line 428
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 429
    .line 430
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v11, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v26, v15

    .line 440
    .line 441
    const/16 v15, 0x8

    .line 442
    .line 443
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 444
    .line 445
    .line 446
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 447
    .line 448
    invoke-virtual {v3, v11, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 449
    .line 450
    .line 451
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 452
    .line 453
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v15, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 460
    .line 461
    .line 462
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 463
    .line 464
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 465
    .line 466
    invoke-direct {v0, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    .line 468
    .line 469
    const v14, 0x800005

    .line 470
    .line 471
    .line 472
    iput v14, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 473
    .line 474
    invoke-virtual {v13, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 478
    .line 479
    const/4 v14, 0x0

    .line 480
    invoke-direct {v0, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 481
    .line 482
    .line 483
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 484
    .line 485
    move-object/from16 v27, v15

    .line 486
    .line 487
    const/4 v15, 0x0

    .line 488
    invoke-virtual {v0, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 489
    .line 490
    .line 491
    const/16 v14, 0x10

    .line 492
    .line 493
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 494
    .line 495
    .line 496
    const/4 v14, 0x3

    .line 497
    invoke-virtual {v0, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 498
    .line 499
    .line 500
    const/high16 v15, 0x41800000    # 16.0f

    .line 501
    .line 502
    const/4 v14, 0x1

    .line 503
    invoke-virtual {v0, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 504
    .line 505
    .line 506
    const/16 v14, 0x8

    .line 507
    .line 508
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .line 513
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 514
    .line 515
    move-object/from16 v28, v11

    .line 516
    .line 517
    const/4 v11, -0x2

    .line 518
    invoke-direct {v14, v11, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 519
    .line 520
    .line 521
    const v11, 0x800005

    .line 522
    .line 523
    .line 524
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 525
    .line 526
    const/high16 v11, 0x42500000    # 52.0f

    .line 527
    .line 528
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 529
    .line 530
    .line 531
    move-result v11

    .line 532
    float-to-int v11, v11

    .line 533
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v13, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    .line 538
    .line 539
    new-instance v11, Lcom/mycompany/app/view/MyButtonCheck;

    .line 540
    .line 541
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 542
    .line 543
    .line 544
    const/16 v15, 0x8

    .line 545
    .line 546
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 550
    .line 551
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 552
    .line 553
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 554
    .line 555
    .line 556
    const v15, 0x800005

    .line 557
    .line 558
    .line 559
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    .line 561
    invoke-virtual {v13, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    .line 563
    .line 564
    new-instance v13, Landroid/widget/FrameLayout;

    .line 565
    .line 566
    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v13, v6}, Landroid/view/View;->setId(I)V

    .line 570
    .line 571
    .line 572
    const/4 v6, 0x4

    .line 573
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    .line 578
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 579
    .line 580
    const/4 v15, -0x2

    .line 581
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 582
    .line 583
    .line 584
    const/16 v14, 0x15

    .line 585
    .line 586
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v12, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    .line 591
    .line 592
    new-instance v6, Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 593
    .line 594
    invoke-direct {v6, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 595
    .line 596
    .line 597
    const/4 v14, 0x0

    .line 598
    invoke-virtual {v6, v14}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 599
    .line 600
    .line 601
    const/4 v14, 0x1

    .line 602
    invoke-virtual {v6, v14}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 603
    .line 604
    .line 605
    new-instance v14, Landroid/widget/LinearLayout;

    .line 606
    .line 607
    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 608
    .line 609
    .line 610
    iput-object v14, v6, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 611
    .line 612
    move-object/from16 v16, v13

    .line 613
    .line 614
    const/4 v13, -0x1

    .line 615
    invoke-virtual {v6, v14, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 616
    .line 617
    .line 618
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 619
    .line 620
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 621
    .line 622
    invoke-direct {v14, v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 623
    .line 624
    .line 625
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 626
    .line 627
    iput v13, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 628
    .line 629
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 630
    .line 631
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 632
    .line 633
    .line 634
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 635
    .line 636
    invoke-virtual {v14, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v12, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    .line 641
    .line 642
    new-instance v13, Landroid/widget/RelativeLayout;

    .line 643
    .line 644
    invoke-direct {v13, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 648
    .line 649
    .line 650
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 651
    .line 652
    const/4 v14, -0x1

    .line 653
    const/4 v15, -0x2

    .line 654
    invoke-direct {v4, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 655
    .line 656
    .line 657
    const/16 v15, 0xc

    .line 658
    .line 659
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v7, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    .line 664
    .line 665
    new-instance v4, Landroid/widget/LinearLayout;

    .line 666
    .line 667
    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 671
    .line 672
    .line 673
    const/4 v15, 0x0

    .line 674
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 678
    .line 679
    .line 680
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 681
    .line 682
    invoke-virtual {v13, v4, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 683
    .line 684
    .line 685
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 686
    .line 687
    const/4 v14, 0x0

    .line 688
    invoke-direct {v15, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 689
    .line 690
    .line 691
    const/16 v14, 0x11

    .line 692
    .line 693
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 694
    .line 695
    .line 696
    move-object/from16 v17, v6

    .line 697
    .line 698
    const/4 v6, 0x1

    .line 699
    const/high16 v14, 0x41800000    # 16.0f

    .line 700
    .line 701
    invoke-virtual {v15, v6, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 702
    .line 703
    .line 704
    sget v6, Lnet/kaki87/soul2/testing/R$string;->close:I

    .line 705
    .line 706
    move-object/from16 v18, v11

    .line 707
    .line 708
    const/4 v11, -0x1

    .line 709
    const/4 v14, 0x0

    .line 710
    invoke-static {v15, v6, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    const/high16 v11, 0x3f800000    # 1.0f

    .line 715
    .line 716
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 717
    .line 718
    invoke-virtual {v4, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    .line 720
    .line 721
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 722
    .line 723
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 724
    .line 725
    .line 726
    const/16 v11, 0x11

    .line 727
    .line 728
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 729
    .line 730
    .line 731
    const/high16 v11, 0x41800000    # 16.0f

    .line 732
    .line 733
    const/4 v14, 0x1

    .line 734
    invoke-virtual {v6, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 738
    .line 739
    .line 740
    const/16 v14, 0x8

    .line 741
    .line 742
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 743
    .line 744
    .line 745
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 746
    .line 747
    move-object/from16 v19, v0

    .line 748
    .line 749
    const/4 v0, -0x1

    .line 750
    const/4 v14, 0x0

    .line 751
    invoke-direct {v11, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 752
    .line 753
    .line 754
    const/high16 v14, 0x3f800000    # 1.0f

    .line 755
    .line 756
    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 757
    .line 758
    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    .line 760
    .line 761
    new-instance v4, Landroid/widget/FrameLayout;

    .line 762
    .line 763
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 764
    .line 765
    .line 766
    const/16 v14, 0x8

    .line 767
    .line 768
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 769
    .line 770
    .line 771
    const/4 v2, 0x3

    .line 772
    const/4 v11, -0x2

    .line 773
    invoke-static {v0, v11, v2, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v13, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    .line 779
    .line 780
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 781
    .line 782
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 787
    .line 788
    .line 789
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 790
    .line 791
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->A:Lcom/mycompany/app/view/MyMainRelative;

    .line 792
    .line 793
    const/4 v14, 0x1

    .line 794
    invoke-virtual {v0, v2, v14}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 795
    .line 796
    .line 797
    iget-boolean v0, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 798
    .line 799
    if-eqz v0, :cond_1

    .line 800
    .line 801
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 802
    .line 803
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 804
    .line 805
    goto :goto_0

    .line 806
    :cond_1
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 807
    .line 808
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 809
    .line 810
    if-eqz v0, :cond_2

    .line 811
    .line 812
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 813
    .line 814
    :cond_2
    :goto_0
    new-instance v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 815
    .line 816
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 817
    .line 818
    .line 819
    iput-object v7, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 820
    .line 821
    iput-object v8, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 822
    .line 823
    iput-object v10, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 824
    .line 825
    move-object/from16 v2, v23

    .line 826
    .line 827
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 828
    .line 829
    move-object/from16 v2, v20

    .line 830
    .line 831
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 832
    .line 833
    move-object/from16 v2, v22

    .line 834
    .line 835
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 836
    .line 837
    iput-object v12, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 838
    .line 839
    move-object/from16 v2, v24

    .line 840
    .line 841
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 842
    .line 843
    move-object/from16 v2, v25

    .line 844
    .line 845
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 846
    .line 847
    iput-object v3, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->y:Landroid/widget/LinearLayout;

    .line 848
    .line 849
    move-object/from16 v2, v21

    .line 850
    .line 851
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 852
    .line 853
    move-object/from16 v2, v26

    .line 854
    .line 855
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 856
    .line 857
    move-object/from16 v2, v28

    .line 858
    .line 859
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 860
    .line 861
    move-object/from16 v2, v27

    .line 862
    .line 863
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 864
    .line 865
    move-object/from16 v2, v19

    .line 866
    .line 867
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 868
    .line 869
    move-object/from16 v2, v18

    .line 870
    .line 871
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 872
    .line 873
    move-object/from16 v2, v17

    .line 874
    .line 875
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->z:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 876
    .line 877
    iput-object v13, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->A:Landroid/widget/RelativeLayout;

    .line 878
    .line 879
    move-object/from16 v2, v16

    .line 880
    .line 881
    iput-object v2, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->v:Landroid/widget/FrameLayout;

    .line 882
    .line 883
    iput-object v4, v0, Lcom/mycompany/app/main/MainListView$ListViewHolder;->w:Landroid/widget/FrameLayout;

    .line 884
    .line 885
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->U:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 886
    .line 887
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 888
    .line 889
    if-nez v0, :cond_3

    .line 890
    .line 891
    :goto_1
    return-void

    .line 892
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$2;

    .line 893
    .line 894
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogWebBookList$2;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    .line 899
    .line 900
    return-void
.end method
