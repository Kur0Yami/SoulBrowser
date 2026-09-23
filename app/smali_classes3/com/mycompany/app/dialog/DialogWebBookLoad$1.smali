.class Lcom/mycompany/app/dialog/DialogWebBookLoad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$1;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad$1;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->area_view_1:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->area_view_2:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->area_view_3:I

    .line 16
    .line 17
    sget v6, Lnet/kaki87/soul2/testing/R$id;->area_view_4:I

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    new-instance v9, Landroid/widget/FrameLayout;

    .line 25
    .line 26
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v10, -0x1

    .line 30
    const/4 v11, -0x2

    .line 31
    invoke-virtual {v8, v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 32
    .line 33
    .line 34
    const/high16 v12, 0x42900000    # 72.0f

    .line 35
    .line 36
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    float-to-int v12, v12

    .line 41
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const/4 v14, 0x0

    .line 44
    invoke-direct {v13, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    .line 46
    .line 47
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 48
    .line 49
    invoke-virtual {v13, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    const/16 v15, 0x11

    .line 53
    .line 54
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    .line 56
    .line 57
    const/high16 v15, 0x41800000    # 16.0f

    .line 58
    .line 59
    invoke-virtual {v13, v7, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 60
    .line 61
    .line 62
    sget v15, Lnet/kaki87/soul2/testing/R$string;->loading:I

    .line 63
    .line 64
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v9, v13, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 71
    .line 72
    .line 73
    new-instance v15, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    .line 80
    .line 81
    const/16 v7, 0x8

    .line 82
    .line 83
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v15, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    .line 88
    .line 89
    const/high16 v7, 0x42000000    # 32.0f

    .line 90
    .line 91
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    float-to-int v7, v7

    .line 96
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-direct {v11, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    invoke-virtual {v11, v14, v10, v14, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    const/16 v14, 0x10

    .line 108
    .line 109
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    .line 111
    .line 112
    const/high16 v14, 0x41600000    # 14.0f

    .line 113
    .line 114
    const/4 v10, 0x1

    .line 115
    invoke-virtual {v11, v10, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 116
    .line 117
    .line 118
    sget v10, Lnet/kaki87/soul2/testing/R$string;->exist_url:I

    .line 119
    .line 120
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    .line 121
    .line 122
    .line 123
    const/4 v10, -0x1

    .line 124
    invoke-virtual {v15, v11, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 125
    .line 126
    .line 127
    const/high16 v7, 0x41400000    # 12.0f

    .line 128
    .line 129
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    float-to-int v7, v7

    .line 134
    new-instance v14, Lcom/mycompany/app/view/MyLineRelative;

    .line 135
    .line 136
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-virtual {v14, v0, v10, v0, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 143
    .line 144
    .line 145
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 146
    .line 147
    invoke-virtual {v14, v0}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 148
    .line 149
    .line 150
    const/4 v0, -0x2

    .line 151
    const/4 v10, -0x1

    .line 152
    invoke-virtual {v15, v14, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 153
    .line 154
    .line 155
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    invoke-direct {v10, v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v3}, Landroid/view/View;->setId(I)V

    .line 162
    .line 163
    .line 164
    const/16 v0, 0x10

    .line 165
    .line 166
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    .line 168
    .line 169
    move-object/from16 v18, v11

    .line 170
    .line 171
    const/high16 v0, 0x41600000    # 14.0f

    .line 172
    .line 173
    const/4 v11, 0x1

    .line 174
    invoke-virtual {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 175
    .line 176
    .line 177
    sget v0, Lnet/kaki87/soul2/testing/R$string;->change_before:I

    .line 178
    .line 179
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 183
    .line 184
    const/4 v11, -0x2

    .line 185
    invoke-direct {v0, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 189
    .line 190
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    const/high16 v0, 0x41a00000    # 20.0f

    .line 197
    .line 198
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    float-to-int v0, v0

    .line 203
    new-instance v11, Lcom/mycompany/app/view/MyRoundImage;

    .line 204
    .line 205
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    move-object/from16 v19, v10

    .line 209
    .line 210
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 211
    .line 212
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v20, v13

    .line 216
    .line 217
    int-to-float v13, v0

    .line 218
    invoke-virtual {v11, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v21, v1

    .line 222
    .line 223
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    .line 225
    move-object/from16 v22, v8

    .line 226
    .line 227
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 228
    .line 229
    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    const/4 v8, 0x3

    .line 233
    invoke-virtual {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    .line 235
    .line 236
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 237
    .line 238
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 239
    .line 240
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 241
    .line 242
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    const/4 v8, 0x0

    .line 251
    invoke-direct {v1, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 255
    .line 256
    .line 257
    const/16 v8, 0x10

    .line 258
    .line 259
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    .line 261
    .line 262
    const/4 v8, 0x1

    .line 263
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 264
    .line 265
    .line 266
    move/from16 v25, v6

    .line 267
    .line 268
    move-object/from16 v24, v9

    .line 269
    .line 270
    move-object/from16 v23, v11

    .line 271
    .line 272
    const/4 v9, -0x1

    .line 273
    const/high16 v11, 0x41800000    # 16.0f

    .line 274
    .line 275
    invoke-static {v1, v8, v11, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    const/4 v9, 0x3

    .line 280
    invoke-virtual {v6, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 281
    .line 282
    .line 283
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 284
    .line 285
    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 286
    .line 287
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 288
    .line 289
    .line 290
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 291
    .line 292
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v14, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .line 297
    .line 298
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    invoke-direct {v3, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 302
    .line 303
    .line 304
    const/16 v6, 0x10

    .line 305
    .line 306
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 310
    .line 311
    .line 312
    const/4 v9, -0x1

    .line 313
    const/high16 v11, 0x41800000    # 16.0f

    .line 314
    .line 315
    invoke-static {v3, v8, v11, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const/4 v9, 0x3

    .line 320
    invoke-virtual {v6, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 324
    .line 325
    .line 326
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 327
    .line 328
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    new-instance v4, Lcom/mycompany/app/view/MyLineRelative;

    .line 335
    .line 336
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 337
    .line 338
    .line 339
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 340
    .line 341
    const/4 v8, 0x0

    .line 342
    invoke-virtual {v4, v8, v6, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 343
    .line 344
    .line 345
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 346
    .line 347
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 348
    .line 349
    .line 350
    const/4 v9, -0x1

    .line 351
    const/4 v11, -0x2

    .line 352
    invoke-virtual {v15, v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 353
    .line 354
    .line 355
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 356
    .line 357
    const/4 v8, 0x0

    .line 358
    invoke-direct {v6, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v5}, Landroid/view/View;->setId(I)V

    .line 362
    .line 363
    .line 364
    const/16 v8, 0x10

    .line 365
    .line 366
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    .line 368
    .line 369
    const/high16 v7, 0x41600000    # 14.0f

    .line 370
    .line 371
    const/4 v8, 0x1

    .line 372
    invoke-virtual {v6, v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 373
    .line 374
    .line 375
    sget v7, Lnet/kaki87/soul2/testing/R$string;->change_after:I

    .line 376
    .line 377
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 378
    .line 379
    .line 380
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 381
    .line 382
    invoke-direct {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    .line 384
    .line 385
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 386
    .line 387
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 394
    .line 395
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v7, v13}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 402
    .line 403
    .line 404
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 405
    .line 406
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 407
    .line 408
    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 409
    .line 410
    .line 411
    const/4 v9, 0x3

    .line 412
    invoke-virtual {v8, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 413
    .line 414
    .line 415
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 416
    .line 417
    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 418
    .line 419
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 420
    .line 421
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 428
    .line 429
    const/4 v9, 0x0

    .line 430
    invoke-direct {v8, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 431
    .line 432
    .line 433
    move/from16 v9, v25

    .line 434
    .line 435
    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 436
    .line 437
    .line 438
    const/16 v10, 0x10

    .line 439
    .line 440
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    .line 442
    .line 443
    const/4 v10, 0x1

    .line 444
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 445
    .line 446
    .line 447
    const/high16 v11, 0x41800000    # 16.0f

    .line 448
    .line 449
    const/4 v13, -0x1

    .line 450
    invoke-static {v8, v10, v11, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    const/4 v11, 0x3

    .line 455
    invoke-virtual {v14, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 456
    .line 457
    .line 458
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 459
    .line 460
    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 461
    .line 462
    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 463
    .line 464
    .line 465
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 466
    .line 467
    invoke-virtual {v14, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    .line 473
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 474
    .line 475
    const/4 v11, 0x0

    .line 476
    invoke-direct {v5, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 477
    .line 478
    .line 479
    const/16 v11, 0x10

    .line 480
    .line 481
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 485
    .line 486
    .line 487
    const/high16 v11, 0x41800000    # 16.0f

    .line 488
    .line 489
    const/4 v13, -0x1

    .line 490
    invoke-static {v5, v10, v11, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    const/4 v11, 0x3

    .line 495
    invoke-virtual {v0, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 499
    .line 500
    .line 501
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 502
    .line 503
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    .line 508
    .line 509
    new-instance v0, Landroid/widget/FrameLayout;

    .line 510
    .line 511
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 512
    .line 513
    .line 514
    const/4 v11, -0x2

    .line 515
    invoke-virtual {v15, v0, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 516
    .line 517
    .line 518
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 519
    .line 520
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 521
    .line 522
    .line 523
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    .line 525
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 526
    .line 527
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 528
    .line 529
    .line 530
    const v10, 0x800013

    .line 531
    .line 532
    .line 533
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 534
    .line 535
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 536
    .line 537
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    .line 542
    .line 543
    const/4 v9, 0x0

    .line 544
    const/high16 v11, 0x41800000    # 16.0f

    .line 545
    .line 546
    const/4 v12, 0x1

    .line 547
    invoke-static {v2, v9, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 548
    .line 549
    .line 550
    move-result-object v13

    .line 551
    sget v9, Lnet/kaki87/soul2/testing/R$string;->apply_url_equal:I

    .line 552
    .line 553
    const/4 v11, -0x2

    .line 554
    const/4 v12, -0x1

    .line 555
    invoke-static {v13, v9, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    .line 561
    sget v10, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 562
    .line 563
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 564
    .line 565
    .line 566
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 567
    .line 568
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v13, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    .line 573
    .line 574
    new-instance v9, Lcom/mycompany/app/view/MyCoverView;

    .line 575
    .line 576
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 577
    .line 578
    .line 579
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 580
    .line 581
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 582
    .line 583
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 584
    .line 585
    .line 586
    const/16 v11, 0x11

    .line 587
    .line 588
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 589
    .line 590
    move-object/from16 v12, v24

    .line 591
    .line 592
    invoke-virtual {v12, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    new-instance v10, Lcom/mycompany/app/view/MyLineLinear;

    .line 596
    .line 597
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 598
    .line 599
    .line 600
    const/4 v12, 0x0

    .line 601
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 605
    .line 606
    .line 607
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 608
    .line 609
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 610
    .line 611
    .line 612
    const/4 v12, 0x1

    .line 613
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 614
    .line 615
    .line 616
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 617
    .line 618
    move-object/from16 v16, v9

    .line 619
    .line 620
    move-object/from16 v12, v22

    .line 621
    .line 622
    const/4 v9, -0x1

    .line 623
    invoke-static {v12, v10, v9, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 624
    .line 625
    .line 626
    move-result-object v14

    .line 627
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 628
    .line 629
    .line 630
    const/4 v9, 0x1

    .line 631
    const/high16 v11, 0x41800000    # 16.0f

    .line 632
    .line 633
    invoke-virtual {v14, v9, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 634
    .line 635
    .line 636
    sget v9, Lnet/kaki87/soul2/testing/R$string;->skip:I

    .line 637
    .line 638
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v14, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 642
    .line 643
    .line 644
    const/16 v9, 0x8

    .line 645
    .line 646
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .line 648
    .line 649
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 650
    .line 651
    move-object/from16 v17, v13

    .line 652
    .line 653
    const/4 v11, 0x0

    .line 654
    const/4 v13, -0x1

    .line 655
    invoke-direct {v9, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 656
    .line 657
    .line 658
    const/high16 v11, 0x3f800000    # 1.0f

    .line 659
    .line 660
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 661
    .line 662
    const/4 v11, 0x0

    .line 663
    invoke-static {v10, v14, v9, v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    const/16 v11, 0x11

    .line 668
    .line 669
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 670
    .line 671
    .line 672
    const/4 v9, 0x1

    .line 673
    const/high16 v11, 0x41800000    # 16.0f

    .line 674
    .line 675
    invoke-virtual {v2, v9, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 676
    .line 677
    .line 678
    sget v9, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 679
    .line 680
    const/4 v11, 0x0

    .line 681
    invoke-static {v2, v9, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    const/high16 v11, 0x3f800000    # 1.0f

    .line 686
    .line 687
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 688
    .line 689
    invoke-virtual {v10, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    .line 691
    .line 692
    move-object/from16 v9, v21

    .line 693
    .line 694
    iput-object v12, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 695
    .line 696
    move-object/from16 v10, v20

    .line 697
    .line 698
    iput-object v10, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 699
    .line 700
    iput-object v15, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->f0:Landroid/widget/LinearLayout;

    .line 701
    .line 702
    move-object/from16 v10, v18

    .line 703
    .line 704
    iput-object v10, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 705
    .line 706
    move-object/from16 v10, v19

    .line 707
    .line 708
    iput-object v10, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 709
    .line 710
    move-object/from16 v10, v23

    .line 711
    .line 712
    iput-object v10, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 713
    .line 714
    iput-object v1, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 715
    .line 716
    iput-object v3, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 717
    .line 718
    iput-object v6, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 719
    .line 720
    iput-object v7, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 721
    .line 722
    iput-object v8, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 723
    .line 724
    iput-object v5, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 725
    .line 726
    iput-object v0, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->p0:Landroid/widget/FrameLayout;

    .line 727
    .line 728
    iput-object v4, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 729
    .line 730
    move-object/from16 v0, v17

    .line 731
    .line 732
    iput-object v0, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 733
    .line 734
    move-object/from16 v0, v16

    .line 735
    .line 736
    iput-object v0, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 737
    .line 738
    iput-object v14, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 739
    .line 740
    iput-object v2, v9, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 741
    .line 742
    iget-object v0, v9, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 743
    .line 744
    if-nez v0, :cond_1

    .line 745
    .line 746
    :goto_0
    return-void

    .line 747
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookLoad$2;

    .line 748
    .line 749
    invoke-direct {v1, v9}, Lcom/mycompany/app/dialog/DialogWebBookLoad$2;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 753
    .line 754
    .line 755
    return-void
.end method
