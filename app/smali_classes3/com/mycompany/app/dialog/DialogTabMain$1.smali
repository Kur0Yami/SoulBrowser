.class Lcom/mycompany/app/dialog/DialogTabMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$1;->c:Lcom/mycompany/app/dialog/DialogTabMain;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$1;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->tab_bottom_view:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->tab_cast_icon:I

    .line 14
    .line 15
    new-instance v5, Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v7, -0x1

    .line 23
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x2

    .line 35
    invoke-static {v7, v7, v8, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Landroidx/viewpager2/widget/ViewPager2;

    .line 43
    .line 44
    invoke-direct {v8, v2}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-virtual {v8, v9}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 49
    .line 50
    .line 51
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    invoke-direct {v10, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 57
    .line 58
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    .line 60
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 61
    .line 62
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 63
    .line 64
    invoke-virtual {v6, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    new-instance v10, Lcom/mycompany/app/view/MyScrollBar;

    .line 68
    .line 69
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 73
    .line 74
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 75
    .line 76
    iput v11, v10, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 77
    .line 78
    iput v12, v10, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 79
    .line 80
    const/4 v11, 0x4

    .line 81
    invoke-virtual {v10, v11}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 87
    .line 88
    invoke-direct {v12, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    const v13, 0x800005

    .line 92
    .line 93
    .line 94
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    .line 96
    invoke-virtual {v6, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    new-instance v12, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    invoke-direct {v12, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 105
    .line 106
    invoke-virtual {v6, v12, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 107
    .line 108
    .line 109
    new-instance v13, Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-direct {v13, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    .line 119
    .line 120
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    .line 122
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 123
    .line 124
    invoke-direct {v14, v7, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .line 126
    .line 127
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 128
    .line 129
    iput v15, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    .line 131
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 132
    .line 133
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 134
    .line 135
    .line 136
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 137
    .line 138
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    new-instance v14, Lcom/mycompany/app/view/MyButtonRelative;

    .line 145
    .line 146
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    invoke-direct {v15, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    const/high16 v11, 0x3f800000    # 1.0f

    .line 155
    .line 156
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 157
    .line 158
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    new-instance v15, Landroid/widget/ImageView;

    .line 162
    .line 163
    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    const/high16 v11, 0x41600000    # 14.0f

    .line 167
    .line 168
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    float-to-int v11, v11

    .line 173
    invoke-virtual {v15, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    .line 175
    .line 176
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 177
    .line 178
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v14, v15, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 182
    .line 183
    .line 184
    new-instance v7, Lcom/mycompany/app/view/MyButtonRelative;

    .line 185
    .line 186
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    move-object/from16 v20, v8

    .line 192
    .line 193
    move-object/from16 v19, v10

    .line 194
    .line 195
    const/4 v8, -0x1

    .line 196
    const/4 v10, 0x0

    .line 197
    invoke-direct {v0, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    const/high16 v10, 0x3f800000    # 1.0f

    .line 201
    .line 202
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 203
    .line 204
    invoke-virtual {v13, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Landroid/widget/ImageView;

    .line 208
    .line 209
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, v0, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 219
    .line 220
    .line 221
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    .line 228
    .line 229
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 230
    .line 231
    move-object/from16 v21, v0

    .line 232
    .line 233
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 234
    .line 235
    move-object/from16 v22, v7

    .line 236
    .line 237
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 238
    .line 239
    invoke-direct {v10, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .line 241
    .line 242
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 243
    .line 244
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v12, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    const/4 v7, 0x0

    .line 253
    invoke-direct {v0, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    .line 255
    .line 256
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 257
    .line 258
    const/4 v7, 0x0

    .line 259
    invoke-virtual {v0, v10, v7, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 260
    .line 261
    .line 262
    const/16 v7, 0x10

    .line 263
    .line 264
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    .line 266
    .line 267
    const/4 v10, 0x3

    .line 268
    invoke-virtual {v0, v10}, Landroid/view/View;->setTextDirection(I)V

    .line 269
    .line 270
    .line 271
    const/4 v10, 0x1

    .line 272
    const/high16 v7, 0x41800000    # 16.0f

    .line 273
    .line 274
    invoke-virtual {v0, v10, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 275
    .line 276
    .line 277
    const/16 v7, 0x8

    .line 278
    .line 279
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 283
    .line 284
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    move-object/from16 v23, v15

    .line 287
    .line 288
    const/4 v15, -0x2

    .line 289
    invoke-direct {v10, v15, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .line 291
    .line 292
    const/16 v7, 0x10

    .line 293
    .line 294
    invoke-virtual {v10, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    .line 296
    .line 297
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 298
    .line 299
    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 300
    .line 301
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 302
    .line 303
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v12, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    .line 308
    .line 309
    new-instance v7, Lcom/mycompany/app/view/MyButtonCheck;

    .line 310
    .line 311
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 312
    .line 313
    .line 314
    const/16 v10, 0x8

    .line 315
    .line 316
    invoke-virtual {v7, v10}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    .line 321
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 322
    .line 323
    invoke-direct {v10, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 324
    .line 325
    .line 326
    const/16 v15, 0x10

    .line 327
    .line 328
    invoke-virtual {v10, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    .line 330
    .line 331
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 332
    .line 333
    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 334
    .line 335
    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .line 337
    .line 338
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 339
    .line 340
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 347
    .line 348
    .line 349
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 350
    .line 351
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 352
    .line 353
    invoke-direct {v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .line 355
    .line 356
    const/16 v15, 0x10

    .line 357
    .line 358
    invoke-virtual {v9, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 359
    .line 360
    .line 361
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 362
    .line 363
    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 364
    .line 365
    invoke-virtual {v12, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    .line 367
    .line 368
    new-instance v9, Landroid/widget/FrameLayout;

    .line 369
    .line 370
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v4}, Landroid/view/View;->setId(I)V

    .line 374
    .line 375
    .line 376
    const/4 v4, 0x4

    .line 377
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    .line 382
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 383
    .line 384
    const/4 v15, -0x2

    .line 385
    invoke-direct {v4, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    .line 387
    .line 388
    const/16 v11, 0x15

    .line 389
    .line 390
    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .line 395
    .line 396
    new-instance v4, Lcom/google/android/material/tabs/TabLayout;

    .line 397
    .line 398
    invoke-direct {v4, v2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 399
    .line 400
    .line 401
    const/4 v11, 0x1

    .line 402
    invoke-virtual {v4, v11}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 403
    .line 404
    .line 405
    const/4 v11, 0x0

    .line 406
    invoke-virtual {v4, v11}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 407
    .line 408
    .line 409
    const/high16 v11, 0x40000000    # 2.0f

    .line 410
    .line 411
    invoke-static {v2, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 412
    .line 413
    .line 414
    move-result v11

    .line 415
    float-to-int v11, v11

    .line 416
    const/high16 v12, 0x41a00000    # 20.0f

    .line 417
    .line 418
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 419
    .line 420
    .line 421
    move-result v12

    .line 422
    float-to-int v12, v12

    .line 423
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 424
    .line 425
    move-object/from16 v16, v9

    .line 426
    .line 427
    const/4 v9, -0x1

    .line 428
    invoke-direct {v15, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 429
    .line 430
    .line 431
    const/high16 v9, 0x42580000    # 54.0f

    .line 432
    .line 433
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 434
    .line 435
    .line 436
    move-result v9

    .line 437
    float-to-int v9, v9

    .line 438
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 439
    .line 440
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    new-instance v9, Landroid/widget/LinearLayout;

    .line 450
    .line 451
    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 452
    .line 453
    .line 454
    const/4 v11, 0x0

    .line 455
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 459
    .line 460
    .line 461
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 462
    .line 463
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 464
    .line 465
    const/4 v15, -0x1

    .line 466
    invoke-direct {v11, v15, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    .line 468
    .line 469
    const/16 v12, 0x50

    .line 470
    .line 471
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 472
    .line 473
    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .line 475
    .line 476
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 477
    .line 478
    const/4 v12, 0x0

    .line 479
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 480
    .line 481
    .line 482
    const/16 v12, 0x11

    .line 483
    .line 484
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    .line 486
    .line 487
    const/high16 v12, 0x41800000    # 16.0f

    .line 488
    .line 489
    const/4 v15, 0x1

    .line 490
    invoke-virtual {v11, v15, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 491
    .line 492
    .line 493
    sget v12, Lnet/kaki87/soul2/testing/R$string;->delete_all:I

    .line 494
    .line 495
    move-object/from16 v17, v4

    .line 496
    .line 497
    const/4 v4, -0x1

    .line 498
    const/4 v15, 0x0

    .line 499
    invoke-static {v11, v12, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 500
    .line 501
    .line 502
    move-result-object v12

    .line 503
    const/high16 v4, 0x3f800000    # 1.0f

    .line 504
    .line 505
    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 506
    .line 507
    invoke-virtual {v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .line 509
    .line 510
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 511
    .line 512
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 513
    .line 514
    .line 515
    const/16 v4, 0x11

    .line 516
    .line 517
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 518
    .line 519
    .line 520
    const/high16 v4, 0x41800000    # 16.0f

    .line 521
    .line 522
    const/4 v15, 0x1

    .line 523
    invoke-virtual {v12, v15, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v12, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 527
    .line 528
    .line 529
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 530
    .line 531
    move-object/from16 v18, v11

    .line 532
    .line 533
    const/4 v11, -0x1

    .line 534
    const/4 v15, 0x0

    .line 535
    invoke-direct {v4, v15, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 536
    .line 537
    .line 538
    const/high16 v15, 0x3f800000    # 1.0f

    .line 539
    .line 540
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 541
    .line 542
    invoke-virtual {v9, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    .line 544
    .line 545
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 546
    .line 547
    invoke-direct {v4, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 551
    .line 552
    .line 553
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .line 555
    const/4 v15, -0x2

    .line 556
    invoke-direct {v3, v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 557
    .line 558
    .line 559
    const/16 v9, 0xc

    .line 560
    .line 561
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    .line 566
    .line 567
    new-instance v3, Landroid/widget/FrameLayout;

    .line 568
    .line 569
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 570
    .line 571
    .line 572
    const/16 v2, 0x8

    .line 573
    .line 574
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4, v3, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 578
    .line 579
    .line 580
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 581
    .line 582
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogTabMain;->P:Landroid/widget/FrameLayout;

    .line 583
    .line 584
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 585
    .line 586
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 587
    .line 588
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 589
    .line 590
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 591
    .line 592
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogTabMain;->U:Landroid/widget/LinearLayout;

    .line 593
    .line 594
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 595
    .line 596
    move-object/from16 v0, v23

    .line 597
    .line 598
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 599
    .line 600
    move-object/from16 v0, v22

    .line 601
    .line 602
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 603
    .line 604
    move-object/from16 v0, v21

    .line 605
    .line 606
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 607
    .line 608
    move-object/from16 v0, v17

    .line 609
    .line 610
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 611
    .line 612
    move-object/from16 v0, v20

    .line 613
    .line 614
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->a0:Landroidx/viewpager2/widget/ViewPager2;

    .line 615
    .line 616
    move-object/from16 v0, v19

    .line 617
    .line 618
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 619
    .line 620
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 621
    .line 622
    move-object/from16 v0, v18

    .line 623
    .line 624
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 625
    .line 626
    move-object/from16 v0, v16

    .line 627
    .line 628
    invoke-virtual {v1, v5, v0, v3}, Lcom/mycompany/app/dialog/DialogCast;->p(Lcom/mycompany/app/view/MyMainRelative;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 629
    .line 630
    .line 631
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 632
    .line 633
    if-nez v0, :cond_1

    .line 634
    .line 635
    :goto_0
    return-void

    .line 636
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$2;

    .line 637
    .line 638
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogTabMain$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    .line 643
    .line 644
    return-void
.end method
