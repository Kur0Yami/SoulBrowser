.class Lcom/mycompany/app/dialog/DialogTabMini$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$1;->c:Lcom/mycompany/app/dialog/DialogTabMini;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini$1;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    sget v3, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    const/high16 v3, 0x435e0000    # 222.0f

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    float-to-int v3, v3

    .line 22
    const/high16 v4, 0x43260000    # 166.0f

    .line 23
    .line 24
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    :goto_0
    float-to-int v4, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/high16 v3, 0x43a00000    # 320.0f

    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    const/high16 v4, 0x43840000    # 264.0f

    .line 38
    .line 39
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    new-instance v5, Lcom/mycompany/app/view/MyDialogMenu;

    .line 45
    .line 46
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyDialogMenu;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    const/4 v7, -0x1

    .line 55
    invoke-virtual {v5, v6, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 56
    .line 57
    .line 58
    new-instance v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-virtual {v3, v8}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 65
    .line 66
    .line 67
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    invoke-direct {v9, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    sget v4, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 73
    .line 74
    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    .line 76
    invoke-virtual {v6, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    sget v4, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 80
    .line 81
    const v10, 0x800005

    .line 82
    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    new-instance v4, Lcom/mycompany/app/view/MyScrollBar;

    .line 87
    .line 88
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 92
    .line 93
    invoke-virtual {v4, v11}, Lcom/mycompany/app/view/MyScrollBar;->setPadTop(I)V

    .line 94
    .line 95
    .line 96
    const/4 v11, 0x4

    .line 97
    invoke-virtual {v4, v11}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 103
    .line 104
    invoke-direct {v11, v12, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 105
    .line 106
    .line 107
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    .line 109
    invoke-virtual {v6, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const/4 v4, 0x0

    .line 114
    :goto_2
    new-instance v11, Landroid/widget/FrameLayout;

    .line 115
    .line 116
    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 120
    .line 121
    invoke-virtual {v6, v11, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    new-instance v12, Landroid/widget/LinearLayout;

    .line 125
    .line 126
    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    .line 134
    .line 135
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .line 137
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 138
    .line 139
    invoke-direct {v13, v7, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 143
    .line 144
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    .line 146
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 147
    .line 148
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 149
    .line 150
    .line 151
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 152
    .line 153
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    new-instance v13, Lcom/mycompany/app/view/MyButtonRelative;

    .line 160
    .line 161
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .line 166
    invoke-direct {v14, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const/high16 v15, 0x3f800000    # 1.0f

    .line 170
    .line 171
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    .line 173
    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    new-instance v14, Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-direct {v14, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    const/high16 v10, 0x41600000    # 14.0f

    .line 182
    .line 183
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    float-to-int v10, v10

    .line 188
    invoke-virtual {v14, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 189
    .line 190
    .line 191
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 192
    .line 193
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13, v14, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 197
    .line 198
    .line 199
    new-instance v15, Lcom/mycompany/app/view/MyButtonRelative;

    .line 200
    .line 201
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    .line 206
    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    .line 208
    .line 209
    const/high16 v8, 0x3f800000    # 1.0f

    .line 210
    .line 211
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 212
    .line 213
    invoke-virtual {v12, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v15, v0, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 228
    .line 229
    .line 230
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    .line 237
    .line 238
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 239
    .line 240
    move-object/from16 v17, v4

    .line 241
    .line 242
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 243
    .line 244
    move-object/from16 v18, v3

    .line 245
    .line 246
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 247
    .line 248
    invoke-direct {v7, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 249
    .line 250
    .line 251
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 252
    .line 253
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    const/4 v4, 0x0

    .line 262
    invoke-direct {v3, v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 263
    .line 264
    .line 265
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 266
    .line 267
    const/4 v7, 0x0

    .line 268
    invoke-virtual {v3, v4, v7, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 269
    .line 270
    .line 271
    const/16 v4, 0x10

    .line 272
    .line 273
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 274
    .line 275
    .line 276
    const/4 v4, 0x3

    .line 277
    invoke-virtual {v3, v4}, Landroid/view/View;->setTextDirection(I)V

    .line 278
    .line 279
    .line 280
    const/high16 v4, 0x41800000    # 16.0f

    .line 281
    .line 282
    const/4 v7, 0x1

    .line 283
    invoke-virtual {v3, v7, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 284
    .line 285
    .line 286
    const/16 v4, 0x8

    .line 287
    .line 288
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    .line 291
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    .line 293
    const/4 v7, -0x2

    .line 294
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 295
    .line 296
    invoke-direct {v8, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    const v4, 0x800005

    .line 300
    .line 301
    .line 302
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 303
    .line 304
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 305
    .line 306
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 307
    .line 308
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 309
    .line 310
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v11, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .line 315
    .line 316
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 317
    .line 318
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    const/16 v7, 0x8

    .line 322
    .line 323
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 327
    .line 328
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 329
    .line 330
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 331
    .line 332
    .line 333
    const v8, 0x800005

    .line 334
    .line 335
    .line 336
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    .line 338
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 339
    .line 340
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 341
    .line 342
    invoke-virtual {v11, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 346
    .line 347
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 354
    .line 355
    .line 356
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 357
    .line 358
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 359
    .line 360
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 361
    .line 362
    .line 363
    const v9, 0x800005

    .line 364
    .line 365
    .line 366
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 367
    .line 368
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 369
    .line 370
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 371
    .line 372
    invoke-virtual {v11, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    .line 374
    .line 375
    new-instance v8, Lcom/google/android/material/tabs/TabLayout;

    .line 376
    .line 377
    invoke-direct {v8, v2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .line 379
    .line 380
    const/4 v9, 0x1

    .line 381
    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 382
    .line 383
    .line 384
    const/4 v9, 0x0

    .line 385
    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 386
    .line 387
    .line 388
    const/high16 v9, 0x40000000    # 2.0f

    .line 389
    .line 390
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    float-to-int v9, v9

    .line 395
    const/high16 v10, 0x41a00000    # 20.0f

    .line 396
    .line 397
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    float-to-int v10, v10

    .line 402
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 403
    .line 404
    move-object/from16 v16, v0

    .line 405
    .line 406
    const/4 v0, -0x1

    .line 407
    invoke-direct {v11, v0, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    .line 409
    .line 410
    const/high16 v0, 0x42580000    # 54.0f

    .line 411
    .line 412
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    float-to-int v0, v0

    .line 417
    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 418
    .line 419
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    .line 427
    .line 428
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogTabMini;->k0:Lcom/mycompany/app/view/MyDialogMenu;

    .line 429
    .line 430
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogTabMini;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 431
    .line 432
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogTabMini;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 433
    .line 434
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 435
    .line 436
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogTabMini;->o0:Landroid/widget/LinearLayout;

    .line 437
    .line 438
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogTabMini;->p0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 439
    .line 440
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogTabMini;->q0:Landroid/widget/ImageView;

    .line 441
    .line 442
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogTabMini;->r0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 443
    .line 444
    move-object/from16 v0, v16

    .line 445
    .line 446
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->s0:Landroid/widget/ImageView;

    .line 447
    .line 448
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 449
    .line 450
    move-object/from16 v0, v18

    .line 451
    .line 452
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogTabMini;->u0:Landroidx/viewpager2/widget/ViewPager2;

    .line 453
    .line 454
    move-object/from16 v4, v17

    .line 455
    .line 456
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTabMini;->y0:Lcom/mycompany/app/view/MyScrollBar;

    .line 457
    .line 458
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 459
    .line 460
    if-nez v0, :cond_3

    .line 461
    .line 462
    :goto_3
    return-void

    .line 463
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMini$2;

    .line 464
    .line 465
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogTabMini$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    .line 470
    .line 471
    return-void
.end method
