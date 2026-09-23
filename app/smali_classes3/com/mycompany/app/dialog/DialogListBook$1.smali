.class Lcom/mycompany/app/dialog/DialogListBook$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$1;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook$1;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

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
    new-instance v7, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x2

    .line 37
    invoke-static {v8, v8, v9, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v10, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 45
    .line 46
    invoke-direct {v10, v2}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    invoke-virtual {v10, v11}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v11}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    invoke-virtual {v10, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 64
    .line 65
    .line 66
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    invoke-direct {v13, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10, v13}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v13, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 80
    .line 81
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    .line 83
    invoke-virtual {v7, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    new-instance v13, Lcom/mycompany/app/view/MyListGroup;

    .line 87
    .line 88
    invoke-direct {v13, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const/4 v14, 0x4

    .line 92
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    const/4 v15, -0x2

    .line 96
    invoke-virtual {v7, v13, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 97
    .line 98
    .line 99
    move/from16 v16, v9

    .line 100
    .line 101
    new-instance v9, Lcom/mycompany/app/view/MyScrollBar;

    .line 102
    .line 103
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 107
    .line 108
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 109
    .line 110
    iput v12, v9, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 111
    .line 112
    iput v15, v9, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 113
    .line 114
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 120
    .line 121
    invoke-direct {v12, v15, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    const v15, 0x800005

    .line 125
    .line 126
    .line 127
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    .line 129
    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    new-instance v12, Lcom/mycompany/app/view/MyFadeImage;

    .line 133
    .line 134
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 138
    .line 139
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    .line 141
    .line 142
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 143
    .line 144
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    .line 146
    .line 147
    const/16 v15, 0x8

    .line 148
    .line 149
    invoke-virtual {v12, v15}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    .line 154
    invoke-direct {v11, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 158
    .line 159
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 160
    .line 161
    invoke-virtual {v7, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    new-instance v8, Lcom/mycompany/app/view/MyCoverView;

    .line 165
    .line 166
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .line 174
    const/4 v15, -0x1

    .line 175
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 179
    .line 180
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 181
    .line 182
    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .line 184
    .line 185
    new-instance v11, Lcom/mycompany/app/view/MyHeaderView;

    .line 186
    .line 187
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 191
    .line 192
    const/4 v0, -0x1

    .line 193
    invoke-virtual {v7, v11, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 197
    .line 198
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 202
    .line 203
    .line 204
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    .line 206
    move-object/from16 v19, v8

    .line 207
    .line 208
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 209
    .line 210
    move-object/from16 v20, v12

    .line 211
    .line 212
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 213
    .line 214
    invoke-direct {v15, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 218
    .line 219
    invoke-virtual {v15, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    const/4 v12, 0x0

    .line 228
    invoke-direct {v8, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    .line 230
    .line 231
    const/16 v12, 0x10

    .line 232
    .line 233
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    .line 235
    .line 236
    const/4 v15, 0x1

    .line 237
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 238
    .line 239
    .line 240
    const/high16 v12, 0x41900000    # 18.0f

    .line 241
    .line 242
    invoke-virtual {v8, v15, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 243
    .line 244
    .line 245
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    .line 247
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 248
    .line 249
    move-object/from16 v21, v9

    .line 250
    .line 251
    const/4 v9, -0x1

    .line 252
    invoke-direct {v12, v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .line 254
    .line 255
    const/16 v9, 0x10

    .line 256
    .line 257
    invoke-virtual {v12, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    .line 259
    .line 260
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 261
    .line 262
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v12, Landroid/widget/FrameLayout;

    .line 269
    .line 270
    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12, v3}, Landroid/view/View;->setId(I)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .line 278
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 279
    .line 280
    move-object/from16 v22, v10

    .line 281
    .line 282
    const/4 v10, -0x2

    .line 283
    invoke-direct {v3, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 287
    .line 288
    .line 289
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 290
    .line 291
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    .line 293
    invoke-virtual {v11, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    const/high16 v3, 0x41600000    # 14.0f

    .line 297
    .line 298
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    float-to-int v3, v3

    .line 303
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 304
    .line 305
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 312
    .line 313
    .line 314
    const/16 v10, 0x8

    .line 315
    .line 316
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 320
    .line 321
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 322
    .line 323
    invoke-direct {v10, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 324
    .line 325
    .line 326
    const v15, 0x800005

    .line 327
    .line 328
    .line 329
    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    .line 331
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 332
    .line 333
    move/from16 v23, v15

    .line 334
    .line 335
    const/16 v24, 0x3

    .line 336
    .line 337
    mul-int/lit8 v15, v23, 0x3

    .line 338
    .line 339
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v12, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 346
    .line 347
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 354
    .line 355
    .line 356
    const/16 v15, 0x8

    .line 357
    .line 358
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    .line 363
    move-object/from16 v23, v9

    .line 364
    .line 365
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 366
    .line 367
    invoke-direct {v15, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 368
    .line 369
    .line 370
    const v9, 0x800005

    .line 371
    .line 372
    .line 373
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    .line 375
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 376
    .line 377
    mul-int/lit8 v9, v9, 0x2

    .line 378
    .line 379
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v12, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .line 384
    .line 385
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 386
    .line 387
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 394
    .line 395
    .line 396
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    .line 398
    move-object/from16 v16, v10

    .line 399
    .line 400
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 401
    .line 402
    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 403
    .line 404
    .line 405
    const v10, 0x800005

    .line 406
    .line 407
    .line 408
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 409
    .line 410
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 411
    .line 412
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v12, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .line 417
    .line 418
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 419
    .line 420
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v10, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    .line 428
    .line 429
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 430
    .line 431
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 432
    .line 433
    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 434
    .line 435
    .line 436
    const v15, 0x800005

    .line 437
    .line 438
    .line 439
    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 440
    .line 441
    invoke-virtual {v12, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    .line 443
    .line 444
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 445
    .line 446
    const/4 v14, 0x0

    .line 447
    invoke-direct {v3, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 448
    .line 449
    .line 450
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 451
    .line 452
    const/4 v15, 0x0

    .line 453
    invoke-virtual {v3, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 454
    .line 455
    .line 456
    const/16 v14, 0x10

    .line 457
    .line 458
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 459
    .line 460
    .line 461
    move/from16 v14, v24

    .line 462
    .line 463
    invoke-virtual {v3, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 464
    .line 465
    .line 466
    const/high16 v14, 0x41800000    # 16.0f

    .line 467
    .line 468
    const/4 v15, 0x1

    .line 469
    invoke-virtual {v3, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 470
    .line 471
    .line 472
    const/16 v15, 0x8

    .line 473
    .line 474
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 478
    .line 479
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 480
    .line 481
    move-object/from16 v17, v10

    .line 482
    .line 483
    const/4 v10, -0x2

    .line 484
    invoke-direct {v14, v10, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    .line 486
    .line 487
    const v15, 0x800005

    .line 488
    .line 489
    .line 490
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 491
    .line 492
    const/high16 v10, 0x42500000    # 52.0f

    .line 493
    .line 494
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    float-to-int v10, v10

    .line 499
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    .line 504
    .line 505
    new-instance v10, Lcom/mycompany/app/view/MyButtonCheck;

    .line 506
    .line 507
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 508
    .line 509
    .line 510
    const/16 v15, 0x8

    .line 511
    .line 512
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 516
    .line 517
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 518
    .line 519
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 520
    .line 521
    .line 522
    const v15, 0x800005

    .line 523
    .line 524
    .line 525
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 526
    .line 527
    invoke-virtual {v12, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    .line 529
    .line 530
    new-instance v12, Landroid/widget/FrameLayout;

    .line 531
    .line 532
    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v12, v5}, Landroid/view/View;->setId(I)V

    .line 536
    .line 537
    .line 538
    const/4 v5, 0x4

    .line 539
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    .line 544
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 545
    .line 546
    const/4 v15, -0x2

    .line 547
    invoke-direct {v5, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 548
    .line 549
    .line 550
    const/16 v14, 0x15

    .line 551
    .line 552
    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v11, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    .line 557
    .line 558
    new-instance v5, Lcom/mycompany/app/view/MyProgressBar;

    .line 559
    .line 560
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 561
    .line 562
    .line 563
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 564
    .line 565
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 566
    .line 567
    .line 568
    move-result v14

    .line 569
    float-to-int v14, v14

    .line 570
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 571
    .line 572
    .line 573
    const/high16 v14, 0x40000000    # 2.0f

    .line 574
    .line 575
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 576
    .line 577
    .line 578
    move-result v14

    .line 579
    float-to-int v14, v14

    .line 580
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 581
    .line 582
    move-object/from16 v18, v12

    .line 583
    .line 584
    const/4 v12, -0x1

    .line 585
    invoke-direct {v15, v12, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 586
    .line 587
    .line 588
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 589
    .line 590
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 591
    .line 592
    invoke-virtual {v7, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 596
    .line 597
    invoke-direct {v14, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v14, v4}, Landroid/view/View;->setId(I)V

    .line 601
    .line 602
    .line 603
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 604
    .line 605
    const/4 v15, -0x2

    .line 606
    invoke-direct {v4, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 607
    .line 608
    .line 609
    const/16 v12, 0xc

    .line 610
    .line 611
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v6, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    .line 616
    .line 617
    new-instance v4, Landroid/widget/FrameLayout;

    .line 618
    .line 619
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 620
    .line 621
    .line 622
    const/16 v2, 0x8

    .line 623
    .line 624
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    const/4 v12, -0x1

    .line 628
    invoke-virtual {v14, v4, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 629
    .line 630
    .line 631
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogListBook;->C:Lcom/mycompany/app/view/MyMainRelative;

    .line 632
    .line 633
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 638
    .line 639
    .line 640
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 641
    .line 642
    iget-object v12, v1, Lcom/mycompany/app/dialog/DialogListBook;->C:Lcom/mycompany/app/view/MyMainRelative;

    .line 643
    .line 644
    const/4 v15, 0x1

    .line 645
    invoke-virtual {v2, v12, v15}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 646
    .line 647
    .line 648
    new-instance v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 649
    .line 650
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 651
    .line 652
    .line 653
    iput-object v6, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 654
    .line 655
    iput-object v7, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 656
    .line 657
    iput-object v13, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->c:Lcom/mycompany/app/view/MyListGroup;

    .line 658
    .line 659
    iput-object v11, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 660
    .line 661
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 662
    .line 663
    iput-object v8, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 664
    .line 665
    move-object/from16 v0, v16

    .line 666
    .line 667
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 668
    .line 669
    move-object/from16 v0, v23

    .line 670
    .line 671
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 672
    .line 673
    iput-object v9, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 674
    .line 675
    move-object/from16 v0, v17

    .line 676
    .line 677
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 678
    .line 679
    iput-object v3, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 680
    .line 681
    iput-object v10, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 682
    .line 683
    iput-object v5, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 684
    .line 685
    move-object/from16 v0, v22

    .line 686
    .line 687
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 688
    .line 689
    move-object/from16 v0, v21

    .line 690
    .line 691
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 692
    .line 693
    move-object/from16 v0, v20

    .line 694
    .line 695
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 696
    .line 697
    move-object/from16 v0, v19

    .line 698
    .line 699
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 700
    .line 701
    move-object/from16 v0, v18

    .line 702
    .line 703
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->v:Landroid/widget/FrameLayout;

    .line 704
    .line 705
    iput-object v4, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->w:Landroid/widget/FrameLayout;

    .line 706
    .line 707
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogListBook;->J:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 708
    .line 709
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 710
    .line 711
    if-nez v0, :cond_1

    .line 712
    .line 713
    :goto_0
    return-void

    .line 714
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogListBook$2;

    .line 715
    .line 716
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogListBook$2;-><init>(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    .line 721
    .line 722
    return-void
.end method
