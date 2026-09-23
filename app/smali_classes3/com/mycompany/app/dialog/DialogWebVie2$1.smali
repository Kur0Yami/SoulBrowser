.class Lcom/mycompany/app/dialog/DialogWebVie2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    new-instance v4, Lcom/mycompany/app/view/MyDialogRelative;

    .line 14
    .line 15
    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const/high16 v5, 0x41600000    # 14.0f

    .line 19
    .line 20
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    float-to-int v5, v5

    .line 25
    new-instance v6, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    .line 32
    const/4 v8, -0x1

    .line 33
    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 37
    .line 38
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 39
    .line 40
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    new-instance v7, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-direct {v7, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 54
    .line 55
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v9, Landroid/view/View;

    .line 61
    .line 62
    invoke-direct {v9, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const/16 v10, 0x8

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    const/high16 v11, 0x43020000    # 130.0f

    .line 71
    .line 72
    invoke-static {v3, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    float-to-int v11, v11

    .line 77
    const/high16 v12, 0x41c00000    # 24.0f

    .line 78
    .line 79
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    float-to-int v12, v12

    .line 84
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    invoke-direct {v13, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    const/16 v11, 0x55

    .line 90
    .line 91
    iput v11, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    .line 93
    invoke-virtual {v7, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v11, Lcom/mycompany/app/view/MyProgressBar;

    .line 97
    .line 98
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    const/high16 v12, 0x3fc00000    # 1.5f

    .line 102
    .line 103
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    float-to-int v12, v12

    .line 108
    const/4 v13, 0x1

    .line 109
    iput-boolean v13, v11, Lcom/mycompany/app/view/MyProgressBar;->g:Z

    .line 110
    .line 111
    iput-boolean v13, v11, Lcom/mycompany/app/view/MyProgressBar;->h:Z

    .line 112
    .line 113
    iput v12, v11, Lcom/mycompany/app/view/MyProgressBar;->l:I

    .line 114
    .line 115
    iput-boolean v13, v11, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 116
    .line 117
    invoke-virtual {v11, v10}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    const/high16 v12, 0x40000000    # 2.0f

    .line 121
    .line 122
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    float-to-int v12, v12

    .line 127
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .line 129
    invoke-direct {v14, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    const/high16 v12, 0x424c0000    # 51.0f

    .line 133
    .line 134
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    float-to-int v12, v12

    .line 139
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 140
    .line 141
    invoke-virtual {v6, v11, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    if-eqz v2, :cond_1

    .line 145
    .line 146
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 147
    .line 148
    mul-int/lit8 v12, v12, 0x3

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 152
    .line 153
    :goto_0
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    const/4 v15, 0x0

    .line 156
    invoke-direct {v14, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    .line 158
    .line 159
    const/16 v15, 0x10

    .line 160
    .line 161
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 165
    .line 166
    .line 167
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 168
    .line 169
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 170
    .line 171
    .line 172
    const/high16 v15, 0x41800000    # 16.0f

    .line 173
    .line 174
    invoke-virtual {v14, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 175
    .line 176
    .line 177
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 180
    .line 181
    invoke-direct {v13, v8, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .line 183
    .line 184
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 185
    .line 186
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    invoke-direct {v12, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    .line 202
    .line 203
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 204
    .line 205
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    .line 207
    .line 208
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    .line 210
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 211
    .line 212
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 213
    .line 214
    invoke-direct {v15, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    const v8, 0x800005

    .line 218
    .line 219
    .line 220
    iput v8, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    .line 222
    invoke-virtual {v6, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    invoke-direct {v15, v0, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800003

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v18, v8

    .line 223
    .line 224
    .line 225
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 234
    .line 235
    .line 236
    const/16 v15, 0x8

    .line 237
    .line 238
    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    .line 243
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 244
    .line 245
    sget v0, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 246
    .line 247
    invoke-direct {v15, v8, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .line 249
    .line 250
    const v0, 0x800005

    .line 251
    .line 252
    .line 253
    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 254
    .line 255
    invoke-virtual {v6, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    if-eqz v2, :cond_2

    .line 259
    .line 260
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    invoke-direct {v15, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    .line 270
    .line 271
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .line 273
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 274
    .line 275
    move-object/from16 v17, v9

    .line 276
    .line 277
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 278
    .line 279
    invoke-direct {v2, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 283
    .line 284
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    mul-int/lit8 v0, v0, 0x2

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 295
    .line 296
    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 303
    .line 304
    .line 305
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .line 307
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 308
    .line 309
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 310
    .line 311
    invoke-direct {v2, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 312
    .line 313
    .line 314
    const v5, 0x800005

    .line 315
    .line 316
    .line 317
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    .line 319
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 320
    .line 321
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_2
    move-object/from16 v17, v9

    .line 329
    .line 330
    const/4 v0, 0x0

    .line 331
    const/4 v15, 0x0

    .line 332
    :goto_1
    new-instance v2, Lcom/mycompany/app/view/MyScrollNavi;

    .line 333
    .line 334
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyScrollNavi;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    const/4 v5, 0x4

    .line 338
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyScrollNavi;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    sget v9, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 344
    .line 345
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .line 347
    .line 348
    const/16 v9, 0x13

    .line 349
    .line 350
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 351
    .line 352
    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .line 354
    .line 355
    new-instance v8, Lcom/mycompany/app/view/MyScrollNavi;

    .line 356
    .line 357
    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyScrollNavi;-><init>(Landroid/content/Context;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8, v5}, Lcom/mycompany/app/view/MyScrollNavi;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .line 365
    sget v13, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 366
    .line 367
    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 368
    .line 369
    .line 370
    const/16 v13, 0x15

    .line 371
    .line 372
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 373
    .line 374
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 378
    .line 379
    invoke-direct {v9, v3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 383
    .line 384
    iget-boolean v5, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->g0:Z

    .line 385
    .line 386
    invoke-virtual {v9, v13, v5}, Lcom/mycompany/app/view/MyLineFrame;->e(IZ)V

    .line 387
    .line 388
    .line 389
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 390
    .line 391
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 392
    .line 393
    move-object/from16 v16, v8

    .line 394
    .line 395
    const/4 v8, -0x1

    .line 396
    invoke-direct {v5, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 397
    .line 398
    .line 399
    const/16 v8, 0xc

    .line 400
    .line 401
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    .line 406
    .line 407
    new-instance v5, Lcom/mycompany/app/view/MyScrollBar;

    .line 408
    .line 409
    invoke-direct {v5, v3}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5}, Lcom/mycompany/app/view/MyScrollBar;->n()V

    .line 413
    .line 414
    .line 415
    sget v8, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 416
    .line 417
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 418
    .line 419
    iput v8, v5, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 420
    .line 421
    iput v13, v5, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 422
    .line 423
    const/4 v8, 0x4

    .line 424
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 425
    .line 426
    .line 427
    const/high16 v8, 0x42000000    # 32.0f

    .line 428
    .line 429
    invoke-static {v3, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    float-to-int v3, v3

    .line 434
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 435
    .line 436
    const/4 v13, -0x1

    .line 437
    invoke-direct {v8, v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 438
    .line 439
    .line 440
    const/16 v3, 0xb

    .line 441
    .line 442
    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    .line 447
    .line 448
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 449
    .line 450
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->r0:Landroid/widget/FrameLayout;

    .line 451
    .line 452
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 453
    .line 454
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 455
    .line 456
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 457
    .line 458
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 459
    .line 460
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    move-object/from16 v0, v18

    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->r1:Lcom/mycompany/app/view/MyButtonImage;

    .line 461
    .line 462
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 463
    .line 464
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 465
    .line 466
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 467
    .line 468
    move-object/from16 v0, v16

    .line 469
    .line 470
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 471
    .line 472
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 473
    .line 474
    move-object/from16 v0, v17

    .line 475
    .line 476
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 477
    .line 478
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->W0:Lcom/mycompany/app/view/MyLineFrame;

    .line 479
    .line 480
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 481
    .line 482
    if-nez v0, :cond_3

    .line 483
    .line 484
    :goto_2
    return-void

    .line 485
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$2;

    .line 486
    .line 487
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogWebVie2$2;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    .line 492
    .line 493
    return-void
.end method
