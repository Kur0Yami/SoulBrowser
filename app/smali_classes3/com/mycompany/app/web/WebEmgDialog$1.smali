.class Lcom/mycompany/app/web/WebEmgDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$1;->c:Lcom/mycompany/app/web/WebEmgDialog;

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog$1;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->grid_icon_frame:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->grid_bottom_view:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->grid_button_view:I

    .line 16
    .line 17
    sget v6, Lnet/kaki87/soul2/testing/R$id;->grid_cast_icon:I

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
    sget v12, Lcom/mycompany/app/main/MainApp;->p1:I

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    invoke-virtual {v10, v12, v13, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v13}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v13}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 73
    .line 74
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    .line 76
    invoke-virtual {v8, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v12, Lcom/mycompany/app/view/MyScrollBar;

    .line 80
    .line 81
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 85
    .line 86
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 87
    .line 88
    iput v14, v12, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 89
    .line 90
    iput v15, v12, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 91
    .line 92
    const/4 v14, 0x4

    .line 93
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 97
    .line 98
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 99
    .line 100
    invoke-direct {v15, v14, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    .line 102
    .line 103
    const v14, 0x800005

    .line 104
    .line 105
    .line 106
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 107
    .line 108
    invoke-virtual {v8, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v15, Lcom/mycompany/app/view/MyFadeImage;

    .line 112
    .line 113
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 117
    .line 118
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    .line 120
    .line 121
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 122
    .line 123
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v14, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 132
    .line 133
    iput v11, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 134
    .line 135
    invoke-virtual {v8, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Lcom/mycompany/app/view/MyCoverView;

    .line 139
    .line 140
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    const/16 v14, 0x8

    .line 144
    .line 145
    invoke-virtual {v11, v14}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .line 150
    invoke-direct {v14, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 154
    .line 155
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 156
    .line 157
    invoke-virtual {v8, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    new-instance v9, Lcom/mycompany/app/view/MyHeaderView;

    .line 161
    .line 162
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 166
    .line 167
    const/4 v0, -0x1

    .line 168
    invoke-virtual {v8, v9, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 172
    .line 173
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 177
    .line 178
    .line 179
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .line 181
    move-object/from16 v19, v11

    .line 182
    .line 183
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 184
    .line 185
    move-object/from16 v20, v15

    .line 186
    .line 187
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 188
    .line 189
    invoke-direct {v14, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 190
    .line 191
    .line 192
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 193
    .line 194
    invoke-virtual {v14, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    const/4 v14, 0x0

    .line 203
    invoke-direct {v11, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    .line 205
    .line 206
    const/16 v15, 0x10

    .line 207
    .line 208
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    .line 210
    .line 211
    const/4 v14, 0x1

    .line 212
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 213
    .line 214
    .line 215
    const/high16 v15, 0x41900000    # 18.0f

    .line 216
    .line 217
    invoke-virtual {v11, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 218
    .line 219
    .line 220
    sget v14, Lnet/kaki87/soul2/testing/R$string;->image_list:I

    .line 221
    .line 222
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    .line 223
    .line 224
    .line 225
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    .line 227
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 228
    .line 229
    move-object/from16 v21, v12

    .line 230
    .line 231
    const/4 v12, -0x1

    .line 232
    invoke-direct {v14, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    const/16 v12, 0x10

    .line 236
    .line 237
    invoke-virtual {v14, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 238
    .line 239
    .line 240
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 241
    .line 242
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    new-instance v14, Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14, v3}, Landroid/view/View;->setId(I)V

    .line 254
    .line 255
    .line 256
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    .line 258
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 259
    .line 260
    move-object/from16 v22, v10

    .line 261
    .line 262
    const/4 v10, -0x2

    .line 263
    invoke-direct {v3, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    .line 268
    .line 269
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 270
    .line 271
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    .line 273
    invoke-virtual {v9, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 277
    .line 278
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 282
    .line 283
    .line 284
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    .line 286
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 287
    .line 288
    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 289
    .line 290
    .line 291
    const v15, 0x800005

    .line 292
    .line 293
    .line 294
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 295
    .line 296
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 297
    .line 298
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    .line 303
    .line 304
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 305
    .line 306
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 310
    .line 311
    .line 312
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 313
    .line 314
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 315
    .line 316
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 317
    .line 318
    .line 319
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 320
    .line 321
    invoke-virtual {v14, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .line 323
    .line 324
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 325
    .line 326
    const/4 v13, 0x0

    .line 327
    invoke-direct {v12, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    .line 329
    .line 330
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 331
    .line 332
    const/4 v15, 0x0

    .line 333
    invoke-virtual {v12, v13, v15, v13, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 334
    .line 335
    .line 336
    const/16 v13, 0x10

    .line 337
    .line 338
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    .line 340
    .line 341
    const/4 v13, 0x3

    .line 342
    invoke-virtual {v12, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 343
    .line 344
    .line 345
    const/high16 v15, 0x41800000    # 16.0f

    .line 346
    .line 347
    const/4 v13, 0x1

    .line 348
    invoke-virtual {v12, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 349
    .line 350
    .line 351
    const/16 v13, 0x8

    .line 352
    .line 353
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 357
    .line 358
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 359
    .line 360
    move-object/from16 v23, v10

    .line 361
    .line 362
    const/4 v10, -0x2

    .line 363
    invoke-direct {v13, v10, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    .line 365
    .line 366
    const v15, 0x800005

    .line 367
    .line 368
    .line 369
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 370
    .line 371
    const/high16 v10, 0x42500000    # 52.0f

    .line 372
    .line 373
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    float-to-int v10, v10

    .line 378
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v14, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v10, Lcom/mycompany/app/view/MyButtonCheck;

    .line 385
    .line 386
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    const/16 v13, 0x8

    .line 390
    .line 391
    invoke-virtual {v10, v13}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 395
    .line 396
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 397
    .line 398
    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 399
    .line 400
    .line 401
    const v15, 0x800005

    .line 402
    .line 403
    .line 404
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 405
    .line 406
    invoke-virtual {v14, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    new-instance v13, Landroid/widget/FrameLayout;

    .line 410
    .line 411
    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v13, v6}, Landroid/view/View;->setId(I)V

    .line 415
    .line 416
    .line 417
    const/4 v6, 0x4

    .line 418
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 422
    .line 423
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 424
    .line 425
    const/4 v15, -0x2

    .line 426
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    const/16 v14, 0x15

    .line 430
    .line 431
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v9, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    .line 436
    .line 437
    new-instance v6, Lcom/mycompany/app/view/MyProgressBar;

    .line 438
    .line 439
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 440
    .line 441
    .line 442
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 443
    .line 444
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 445
    .line 446
    .line 447
    move-result v9

    .line 448
    float-to-int v9, v9

    .line 449
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 450
    .line 451
    .line 452
    const/high16 v9, 0x40000000    # 2.0f

    .line 453
    .line 454
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    float-to-int v9, v9

    .line 459
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 460
    .line 461
    const/4 v15, -0x1

    .line 462
    invoke-direct {v14, v15, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 463
    .line 464
    .line 465
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 466
    .line 467
    iput v9, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 468
    .line 469
    invoke-virtual {v8, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    .line 471
    .line 472
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 473
    .line 474
    invoke-direct {v8, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v8, v4}, Landroid/view/View;->setId(I)V

    .line 478
    .line 479
    .line 480
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    .line 482
    const/4 v9, -0x2

    .line 483
    invoke-direct {v4, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    .line 485
    .line 486
    const/16 v9, 0xc

    .line 487
    .line 488
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    .line 493
    .line 494
    new-instance v4, Landroid/widget/LinearLayout;

    .line 495
    .line 496
    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 500
    .line 501
    .line 502
    const/4 v9, 0x0

    .line 503
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 507
    .line 508
    .line 509
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 510
    .line 511
    invoke-virtual {v8, v4, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 512
    .line 513
    .line 514
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 515
    .line 516
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 517
    .line 518
    .line 519
    const/16 v14, 0x11

    .line 520
    .line 521
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 522
    .line 523
    .line 524
    const/high16 v14, 0x41800000    # 16.0f

    .line 525
    .line 526
    const/4 v15, 0x1

    .line 527
    invoke-virtual {v9, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 528
    .line 529
    .line 530
    sget v14, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 531
    .line 532
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    .line 540
    move-object/from16 v17, v13

    .line 541
    .line 542
    const/4 v13, -0x1

    .line 543
    const/4 v15, 0x0

    .line 544
    invoke-direct {v14, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    .line 546
    .line 547
    const/high16 v13, 0x3f800000    # 1.0f

    .line 548
    .line 549
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 550
    .line 551
    invoke-virtual {v4, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    .line 553
    .line 554
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 555
    .line 556
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 557
    .line 558
    .line 559
    const/16 v15, 0x11

    .line 560
    .line 561
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 562
    .line 563
    .line 564
    const/4 v13, 0x1

    .line 565
    const/high16 v15, 0x41800000    # 16.0f

    .line 566
    .line 567
    invoke-virtual {v14, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 568
    .line 569
    .line 570
    sget v13, Lnet/kaki87/soul2/testing/R$string;->zip:I

    .line 571
    .line 572
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v14, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 576
    .line 577
    .line 578
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 579
    .line 580
    move-object/from16 v16, v9

    .line 581
    .line 582
    const/4 v9, -0x1

    .line 583
    const/4 v15, 0x0

    .line 584
    invoke-direct {v13, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 585
    .line 586
    .line 587
    const/high16 v9, 0x3f800000    # 1.0f

    .line 588
    .line 589
    iput v9, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 590
    .line 591
    invoke-virtual {v4, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .line 593
    .line 594
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 595
    .line 596
    const/4 v9, 0x0

    .line 597
    invoke-direct {v13, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 598
    .line 599
    .line 600
    const/16 v9, 0x11

    .line 601
    .line 602
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 603
    .line 604
    .line 605
    const/high16 v9, 0x41800000    # 16.0f

    .line 606
    .line 607
    const/4 v15, 0x1

    .line 608
    invoke-virtual {v13, v15, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 609
    .line 610
    .line 611
    sget v9, Lnet/kaki87/soul2/testing/R$string;->album:I

    .line 612
    .line 613
    move-object/from16 v18, v14

    .line 614
    .line 615
    const/4 v14, -0x1

    .line 616
    const/4 v15, 0x0

    .line 617
    invoke-static {v13, v9, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 618
    .line 619
    .line 620
    move-result-object v9

    .line 621
    const/high16 v15, 0x3f800000    # 1.0f

    .line 622
    .line 623
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 624
    .line 625
    invoke-virtual {v4, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    .line 627
    .line 628
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 629
    .line 630
    const/4 v9, 0x0

    .line 631
    invoke-direct {v4, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 632
    .line 633
    .line 634
    const/16 v15, 0x11

    .line 635
    .line 636
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 637
    .line 638
    .line 639
    const/4 v9, 0x1

    .line 640
    const/high16 v15, 0x41800000    # 16.0f

    .line 641
    .line 642
    invoke-virtual {v4, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 643
    .line 644
    .line 645
    const/16 v9, 0x8

    .line 646
    .line 647
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 648
    .line 649
    .line 650
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 651
    .line 652
    invoke-virtual {v8, v4, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 653
    .line 654
    .line 655
    new-instance v15, Landroid/widget/FrameLayout;

    .line 656
    .line 657
    invoke-direct {v15, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v15, v9}, Landroid/view/View;->setVisibility(I)V

    .line 661
    .line 662
    .line 663
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 664
    .line 665
    const/4 v9, -0x2

    .line 666
    invoke-direct {v2, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 667
    .line 668
    .line 669
    const/4 v9, 0x3

    .line 670
    invoke-virtual {v2, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v8, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .line 675
    .line 676
    iput-object v7, v1, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 677
    .line 678
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 679
    .line 680
    iput-object v11, v1, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 681
    .line 682
    iput-object v3, v1, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 683
    .line 684
    move-object/from16 v0, v23

    .line 685
    .line 686
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 687
    .line 688
    iput-object v12, v1, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 689
    .line 690
    iput-object v10, v1, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 691
    .line 692
    iput-object v6, v1, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 693
    .line 694
    move-object/from16 v0, v22

    .line 695
    .line 696
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 697
    .line 698
    move-object/from16 v0, v21

    .line 699
    .line 700
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 701
    .line 702
    move-object/from16 v0, v20

    .line 703
    .line 704
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->U:Lcom/mycompany/app/view/MyFadeImage;

    .line 705
    .line 706
    move-object/from16 v0, v19

    .line 707
    .line 708
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 709
    .line 710
    move-object/from16 v0, v16

    .line 711
    .line 712
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 713
    .line 714
    move-object/from16 v0, v18

    .line 715
    .line 716
    iput-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 717
    .line 718
    iput-object v13, v1, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 719
    .line 720
    iput-object v4, v1, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 721
    .line 722
    move-object/from16 v0, v17

    .line 723
    .line 724
    invoke-virtual {v1, v7, v0, v15}, Lcom/mycompany/app/dialog/DialogCast;->p(Lcom/mycompany/app/view/MyMainRelative;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 725
    .line 726
    .line 727
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 728
    .line 729
    if-nez v0, :cond_1

    .line 730
    .line 731
    :goto_0
    return-void

    .line 732
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$2;

    .line 733
    .line 734
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebEmgDialog$2;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    .line 739
    .line 740
    return-void
.end method
