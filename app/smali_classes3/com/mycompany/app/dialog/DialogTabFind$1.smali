.class Lcom/mycompany/app/dialog/DialogTabFind$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabFind;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabFind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind$1;->c:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabFind$1;->c:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

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
    move-result-object v9

    .line 41
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v9, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 45
    .line 46
    invoke-direct {v9, v2}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    invoke-virtual {v9, v11}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 64
    .line 65
    .line 66
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .line 67
    .line 68
    invoke-direct {v12, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, v12}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .line 73
    .line 74
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v12, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 80
    .line 81
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    .line 83
    invoke-virtual {v7, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    new-instance v12, Lcom/mycompany/app/view/MyScrollBar;

    .line 87
    .line 88
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 92
    .line 93
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 94
    .line 95
    iput v13, v12, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 96
    .line 97
    iput v14, v12, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 98
    .line 99
    const/4 v13, 0x4

    .line 100
    invoke-virtual {v12, v13}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    .line 105
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 106
    .line 107
    invoke-direct {v14, v15, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    const v15, 0x800005

    .line 111
    .line 112
    .line 113
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    .line 115
    invoke-virtual {v7, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v14, Lcom/mycompany/app/view/MyFadeImage;

    .line 119
    .line 120
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 124
    .line 125
    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    .line 127
    .line 128
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 129
    .line 130
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    const/16 v15, 0x8

    .line 134
    .line 135
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v11, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 144
    .line 145
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 146
    .line 147
    invoke-virtual {v7, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    new-instance v10, Lcom/mycompany/app/view/MyCoverView;

    .line 151
    .line 152
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v11, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 164
    .line 165
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 166
    .line 167
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Lcom/mycompany/app/view/MyHeaderView;

    .line 171
    .line 172
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 176
    .line 177
    invoke-virtual {v7, v11, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 178
    .line 179
    .line 180
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 181
    .line 182
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 186
    .line 187
    .line 188
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    .line 190
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    sget v0, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 193
    .line 194
    invoke-direct {v13, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 198
    .line 199
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    invoke-direct {v0, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    .line 210
    .line 211
    const/16 v8, 0x10

    .line 212
    .line 213
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    .line 215
    .line 216
    const/4 v13, 0x1

    .line 217
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 218
    .line 219
    .line 220
    const/high16 v8, 0x41900000    # 18.0f

    .line 221
    .line 222
    invoke-virtual {v0, v13, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 223
    .line 224
    .line 225
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .line 227
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 228
    .line 229
    move-object/from16 v18, v10

    .line 230
    .line 231
    const/4 v10, -0x1

    .line 232
    invoke-direct {v8, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    const/16 v10, 0x10

    .line 236
    .line 237
    invoke-virtual {v8, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    .line 239
    .line 240
    sget v13, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 241
    .line 242
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v11, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    new-instance v8, Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v3}, Landroid/view/View;->setId(I)V

    .line 254
    .line 255
    .line 256
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    .line 258
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 259
    .line 260
    move-object/from16 v17, v14

    .line 261
    .line 262
    const/4 v14, -0x2

    .line 263
    invoke-direct {v3, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    .line 268
    .line 269
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 270
    .line 271
    iput v13, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    .line 273
    invoke-virtual {v11, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    .line 278
    const/4 v13, 0x0

    .line 279
    invoke-direct {v3, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    .line 281
    .line 282
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 283
    .line 284
    const/4 v14, 0x0

    .line 285
    invoke-virtual {v3, v13, v14, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 289
    .line 290
    .line 291
    const/4 v10, 0x3

    .line 292
    invoke-virtual {v3, v10}, Landroid/view/View;->setTextDirection(I)V

    .line 293
    .line 294
    .line 295
    const/high16 v10, 0x41800000    # 16.0f

    .line 296
    .line 297
    const/4 v13, 0x1

    .line 298
    invoke-virtual {v3, v13, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 299
    .line 300
    .line 301
    const/16 v10, 0x8

    .line 302
    .line 303
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .line 308
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 309
    .line 310
    const/4 v14, -0x2

    .line 311
    invoke-direct {v10, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    const v13, 0x800005

    .line 315
    .line 316
    .line 317
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    .line 319
    const/high16 v13, 0x42500000    # 52.0f

    .line 320
    .line 321
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    float-to-int v13, v13

    .line 326
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    new-instance v10, Lcom/mycompany/app/view/MyButtonCheck;

    .line 333
    .line 334
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    const/16 v13, 0x8

    .line 338
    .line 339
    invoke-virtual {v10, v13}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 343
    .line 344
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 345
    .line 346
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 347
    .line 348
    .line 349
    const v14, 0x800005

    .line 350
    .line 351
    .line 352
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    .line 354
    invoke-virtual {v8, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    new-instance v8, Landroid/widget/FrameLayout;

    .line 358
    .line 359
    invoke-direct {v8, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v8, v5}, Landroid/view/View;->setId(I)V

    .line 363
    .line 364
    .line 365
    const/4 v5, 0x4

    .line 366
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .line 371
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 372
    .line 373
    const/4 v14, -0x2

    .line 374
    invoke-direct {v5, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 375
    .line 376
    .line 377
    const/16 v13, 0x15

    .line 378
    .line 379
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v11, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .line 384
    .line 385
    new-instance v5, Lcom/mycompany/app/view/MyProgressBar;

    .line 386
    .line 387
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 388
    .line 389
    .line 390
    const/high16 v13, 0x3fc00000    # 1.5f

    .line 391
    .line 392
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    float-to-int v13, v13

    .line 397
    invoke-virtual {v5, v13}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 398
    .line 399
    .line 400
    const/high16 v13, 0x40000000    # 2.0f

    .line 401
    .line 402
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 403
    .line 404
    .line 405
    move-result v13

    .line 406
    float-to-int v13, v13

    .line 407
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 408
    .line 409
    move-object/from16 v16, v8

    .line 410
    .line 411
    const/4 v8, -0x1

    .line 412
    invoke-direct {v14, v8, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 413
    .line 414
    .line 415
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 416
    .line 417
    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 418
    .line 419
    invoke-virtual {v7, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .line 421
    .line 422
    new-instance v13, Landroid/widget/RelativeLayout;

    .line 423
    .line 424
    invoke-direct {v13, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13, v4}, Landroid/view/View;->setId(I)V

    .line 428
    .line 429
    .line 430
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 431
    .line 432
    const/4 v14, -0x2

    .line 433
    invoke-direct {v4, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 434
    .line 435
    .line 436
    const/16 v8, 0xc

    .line 437
    .line 438
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    .line 443
    .line 444
    new-instance v4, Landroid/widget/FrameLayout;

    .line 445
    .line 446
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .line 448
    .line 449
    const/16 v2, 0x8

    .line 450
    .line 451
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    const/4 v8, -0x1

    .line 455
    invoke-virtual {v13, v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 456
    .line 457
    .line 458
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogTabFind;->e:Lcom/mycompany/app/view/MyMainRelative;

    .line 459
    .line 460
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

    .line 461
    .line 462
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 467
    .line 468
    .line 469
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabFind;->h:Z

    .line 470
    .line 471
    if-eqz v2, :cond_1

    .line 472
    .line 473
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabFind;->e:Lcom/mycompany/app/view/MyMainRelative;

    .line 474
    .line 475
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyMainRelative;->a()V

    .line 476
    .line 477
    .line 478
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 479
    .line 480
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object v6, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 484
    .line 485
    iput-object v7, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 486
    .line 487
    iput-object v11, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 488
    .line 489
    iput-object v15, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 490
    .line 491
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 492
    .line 493
    iput-object v3, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 494
    .line 495
    iput-object v10, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 496
    .line 497
    iput-object v5, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 498
    .line 499
    iput-object v9, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 500
    .line 501
    iput-object v12, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 502
    .line 503
    move-object/from16 v0, v17

    .line 504
    .line 505
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 506
    .line 507
    move-object/from16 v0, v18

    .line 508
    .line 509
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 510
    .line 511
    move-object/from16 v0, v16

    .line 512
    .line 513
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->v:Landroid/widget/FrameLayout;

    .line 514
    .line 515
    iput-object v4, v2, Lcom/mycompany/app/main/MainListView$ListViewHolder;->w:Landroid/widget/FrameLayout;

    .line 516
    .line 517
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogTabFind;->k:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 518
    .line 519
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogTabFind;->d:Landroid/view/ViewGroup;

    .line 520
    .line 521
    if-nez v0, :cond_2

    .line 522
    .line 523
    :goto_0
    return-void

    .line 524
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabFind$2;

    .line 525
    .line 526
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogTabFind$2;-><init>(Lcom/mycompany/app/dialog/DialogTabFind;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 530
    .line 531
    .line 532
    return-void
.end method
