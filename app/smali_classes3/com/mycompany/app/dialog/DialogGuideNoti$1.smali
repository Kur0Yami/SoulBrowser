.class Lcom/mycompany/app/dialog/DialogGuideNoti$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideNoti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideNoti$1;->c:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideNoti$1;->c:Lcom/mycompany/app/dialog/DialogGuideNoti;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    const/4 v3, 0x1

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x2

    .line 18
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    const/4 v9, -0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    const/high16 v11, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 32
    .line 33
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    new-instance v8, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 42
    .line 43
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    .line 48
    .line 49
    const/4 v12, -0x2

    .line 50
    invoke-virtual {v7, v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 51
    .line 52
    .line 53
    new-instance v7, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    invoke-direct {v13, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .line 62
    .line 63
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 64
    .line 65
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    .line 67
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 68
    .line 69
    invoke-virtual {v8, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 73
    .line 74
    div-int/2addr v13, v6

    .line 75
    new-instance v14, Landroid/view/View;

    .line 76
    .line 77
    invoke-direct {v14, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v15, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const v13, 0x800013

    .line 86
    .line 87
    .line 88
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    invoke-virtual {v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    const/high16 v15, 0x42000000    # 32.0f

    .line 94
    .line 95
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    float-to-int v15, v15

    .line 100
    move/from16 v16, v6

    .line 101
    .line 102
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    invoke-direct {v6, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    .line 106
    .line 107
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 108
    .line 109
    invoke-virtual {v6, v11, v10, v15, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 110
    .line 111
    .line 112
    const/high16 v10, 0x41800000    # 16.0f

    .line 113
    .line 114
    invoke-virtual {v6, v3, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 115
    .line 116
    .line 117
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 118
    .line 119
    invoke-direct {v11, v9, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 123
    .line 124
    invoke-virtual {v7, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-direct {v7, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    .line 131
    .line 132
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 133
    .line 134
    int-to-float v11, v11

    .line 135
    const/high16 v15, 0x3f800000    # 1.0f

    .line 136
    .line 137
    invoke-virtual {v7, v11, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 138
    .line 139
    .line 140
    const/high16 v11, 0x41600000    # 14.0f

    .line 141
    .line 142
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 143
    .line 144
    .line 145
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    invoke-direct {v11, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    const/high16 v15, 0x41e00000    # 28.0f

    .line 151
    .line 152
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    float-to-int v15, v15

    .line 157
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 158
    .line 159
    invoke-virtual {v8, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    new-instance v11, Landroid/widget/FrameLayout;

    .line 163
    .line 164
    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    .line 169
    invoke-direct {v15, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    .line 171
    .line 172
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 173
    .line 174
    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 175
    .line 176
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 183
    .line 184
    div-int/lit8 v9, v9, 0x2

    .line 185
    .line 186
    new-instance v15, Landroid/view/View;

    .line 187
    .line 188
    invoke-direct {v15, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .line 193
    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 197
    .line 198
    invoke-virtual {v11, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    const/high16 v12, 0x42100000    # 36.0f

    .line 202
    .line 203
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    float-to-int v12, v12

    .line 208
    invoke-static {v2, v5, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .line 214
    const/4 v5, -0x1

    .line 215
    const/4 v10, -0x2

    .line 216
    invoke-direct {v3, v5, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    .line 218
    .line 219
    const v5, 0x800013

    .line 220
    .line 221
    .line 222
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 223
    .line 224
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    const/high16 v3, 0x41400000    # 12.0f

    .line 231
    .line 232
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    float-to-int v3, v3

    .line 237
    new-instance v5, Landroid/widget/FrameLayout;

    .line 238
    .line 239
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .line 241
    .line 242
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 243
    .line 244
    const/4 v0, -0x1

    .line 245
    invoke-direct {v11, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .line 247
    .line 248
    iput v3, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 249
    .line 250
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 251
    .line 252
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v8, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Landroid/view/View;

    .line 259
    .line 260
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 264
    .line 265
    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    .line 267
    .line 268
    const v11, 0x800013

    .line 269
    .line 270
    .line 271
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    .line 273
    invoke-virtual {v5, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    .line 278
    const/4 v11, 0x0

    .line 279
    invoke-direct {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    .line 281
    .line 282
    move-object/from16 v17, v0

    .line 283
    .line 284
    const/4 v0, 0x1

    .line 285
    const/high16 v11, 0x41800000    # 16.0f

    .line 286
    .line 287
    invoke-virtual {v10, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    .line 292
    move-object/from16 v18, v13

    .line 293
    .line 294
    const/4 v11, -0x2

    .line 295
    const/4 v13, -0x1

    .line 296
    invoke-direct {v0, v13, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 297
    .line 298
    .line 299
    const v11, 0x800013

    .line 300
    .line 301
    .line 302
    iput v11, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 303
    .line 304
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Landroid/widget/FrameLayout;

    .line 311
    .line 312
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 313
    .line 314
    .line 315
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    .line 317
    const/4 v11, -0x2

    .line 318
    invoke-direct {v5, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 319
    .line 320
    .line 321
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 322
    .line 323
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 324
    .line 325
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    new-instance v5, Landroid/view/View;

    .line 332
    .line 333
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 337
    .line 338
    invoke-direct {v11, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 339
    .line 340
    .line 341
    const v13, 0x800013

    .line 342
    .line 343
    .line 344
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    .line 346
    invoke-virtual {v0, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    .line 348
    .line 349
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 350
    .line 351
    const/4 v13, 0x0

    .line 352
    invoke-direct {v11, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 353
    .line 354
    .line 355
    move-object/from16 v19, v5

    .line 356
    .line 357
    const/4 v5, 0x1

    .line 358
    const/high16 v13, 0x41800000    # 16.0f

    .line 359
    .line 360
    invoke-virtual {v11, v5, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 361
    .line 362
    .line 363
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .line 365
    move-object/from16 v20, v10

    .line 366
    .line 367
    const/4 v10, -0x1

    .line 368
    const/4 v13, -0x2

    .line 369
    invoke-direct {v5, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 370
    .line 371
    .line 372
    const v10, 0x800013

    .line 373
    .line 374
    .line 375
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    .line 377
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Landroid/widget/FrameLayout;

    .line 384
    .line 385
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 386
    .line 387
    .line 388
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 389
    .line 390
    const/4 v10, -0x1

    .line 391
    invoke-direct {v5, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .line 393
    .line 394
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 395
    .line 396
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 397
    .line 398
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v8, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    .line 403
    .line 404
    new-instance v5, Landroid/view/View;

    .line 405
    .line 406
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 407
    .line 408
    .line 409
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 410
    .line 411
    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    .line 413
    .line 414
    const v13, 0x800013

    .line 415
    .line 416
    .line 417
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 418
    .line 419
    invoke-virtual {v0, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .line 421
    .line 422
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 423
    .line 424
    const/4 v13, 0x0

    .line 425
    invoke-direct {v10, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 426
    .line 427
    .line 428
    move-object/from16 v21, v5

    .line 429
    .line 430
    const/4 v5, 0x1

    .line 431
    const/high16 v13, 0x41800000    # 16.0f

    .line 432
    .line 433
    invoke-virtual {v10, v5, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 434
    .line 435
    .line 436
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 437
    .line 438
    move-object/from16 v22, v11

    .line 439
    .line 440
    const/4 v11, -0x1

    .line 441
    const/4 v13, -0x2

    .line 442
    invoke-direct {v5, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 443
    .line 444
    .line 445
    const v11, 0x800013

    .line 446
    .line 447
    .line 448
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 449
    .line 450
    invoke-virtual {v5, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .line 455
    .line 456
    new-instance v0, Landroid/widget/FrameLayout;

    .line 457
    .line 458
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    .line 463
    const/4 v11, -0x1

    .line 464
    invoke-direct {v5, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 465
    .line 466
    .line 467
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 468
    .line 469
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 470
    .line 471
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    new-instance v3, Landroid/view/View;

    .line 478
    .line 479
    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 480
    .line 481
    .line 482
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    .line 484
    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    .line 486
    .line 487
    const v11, 0x800013

    .line 488
    .line 489
    .line 490
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 491
    .line 492
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 496
    .line 497
    const/4 v13, 0x0

    .line 498
    invoke-direct {v5, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    .line 500
    .line 501
    const/4 v8, 0x1

    .line 502
    const/high16 v13, 0x41800000    # 16.0f

    .line 503
    .line 504
    invoke-virtual {v5, v8, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 505
    .line 506
    .line 507
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 508
    .line 509
    const/4 v8, -0x2

    .line 510
    const/4 v13, -0x1

    .line 511
    invoke-direct {v9, v13, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 512
    .line 513
    .line 514
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 515
    .line 516
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    .line 521
    .line 522
    const/16 v0, 0x11

    .line 523
    .line 524
    const/4 v8, 0x1

    .line 525
    const/high16 v13, 0x41800000    # 16.0f

    .line 526
    .line 527
    invoke-static {v2, v0, v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 532
    .line 533
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 534
    .line 535
    .line 536
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 537
    .line 538
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v8}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 542
    .line 543
    .line 544
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 545
    .line 546
    const/4 v11, -0x1

    .line 547
    invoke-virtual {v4, v0, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 548
    .line 549
    .line 550
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->b0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 551
    .line 552
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->c0:Landroid/view/View;

    .line 553
    .line 554
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 555
    .line 556
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 557
    .line 558
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->f0:Landroid/view/View;

    .line 559
    .line 560
    move-object/from16 v2, v18

    .line 561
    .line 562
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 563
    .line 564
    move-object/from16 v2, v17

    .line 565
    .line 566
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->h0:Landroid/view/View;

    .line 567
    .line 568
    move-object/from16 v2, v20

    .line 569
    .line 570
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 571
    .line 572
    move-object/from16 v2, v19

    .line 573
    .line 574
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->j0:Landroid/view/View;

    .line 575
    .line 576
    move-object/from16 v2, v22

    .line 577
    .line 578
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 579
    .line 580
    move-object/from16 v2, v21

    .line 581
    .line 582
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->l0:Landroid/view/View;

    .line 583
    .line 584
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 585
    .line 586
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->n0:Landroid/view/View;

    .line 587
    .line 588
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 589
    .line 590
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGuideNoti;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 591
    .line 592
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 593
    .line 594
    if-nez v0, :cond_1

    .line 595
    .line 596
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideNoti$2;

    .line 598
    .line 599
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogGuideNoti$2;-><init>(Lcom/mycompany/app/dialog/DialogGuideNoti;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    .line 604
    .line 605
    return-void
.end method
