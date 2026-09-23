.class Lcom/mycompany/app/dialog/DialogPassLoad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$1;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad$1;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

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
    const/high16 v7, 0x42a00000    # 80.0f

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
    new-instance v11, Landroid/widget/FrameLayout;

    .line 97
    .line 98
    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v11, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 102
    .line 103
    .line 104
    const/high16 v7, 0x41a00000    # 20.0f

    .line 105
    .line 106
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    float-to-int v7, v7

    .line 111
    new-instance v10, Lcom/mycompany/app/view/MyRoundImage;

    .line 112
    .line 113
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 117
    .line 118
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    .line 120
    .line 121
    int-to-float v14, v7

    .line 122
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 123
    .line 124
    .line 125
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .line 127
    sget v0, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 128
    .line 129
    invoke-direct {v14, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    const v0, 0x800013

    .line 133
    .line 134
    .line 135
    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 136
    .line 137
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 138
    .line 139
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    const/4 v14, 0x0

    .line 148
    invoke-direct {v0, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    .line 150
    .line 151
    const/16 v14, 0x10

    .line 152
    .line 153
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 154
    .line 155
    .line 156
    const/4 v14, 0x1

    .line 157
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v19, v10

    .line 161
    .line 162
    const/high16 v10, 0x41800000    # 16.0f

    .line 163
    .line 164
    invoke-virtual {v0, v14, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 165
    .line 166
    .line 167
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .line 169
    const/4 v14, -0x1

    .line 170
    invoke-direct {v10, v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .line 172
    .line 173
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 174
    .line 175
    iput v14, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 176
    .line 177
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 178
    .line 179
    .line 180
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 181
    .line 182
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    const/4 v14, 0x0

    .line 191
    invoke-direct {v10, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    .line 193
    .line 194
    const/16 v14, 0x10

    .line 195
    .line 196
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 197
    .line 198
    .line 199
    const/4 v14, 0x1

    .line 200
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v20, v0

    .line 204
    .line 205
    const/high16 v0, 0x41800000    # 16.0f

    .line 206
    .line 207
    invoke-virtual {v10, v14, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 208
    .line 209
    .line 210
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .line 212
    const/4 v14, -0x1

    .line 213
    invoke-direct {v0, v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .line 215
    .line 216
    const/high16 v7, 0x42300000    # 44.0f

    .line 217
    .line 218
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    float-to-int v7, v7

    .line 223
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    .line 225
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 226
    .line 227
    .line 228
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 229
    .line 230
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    const/high16 v0, 0x42000000    # 32.0f

    .line 237
    .line 238
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    float-to-int v0, v0

    .line 243
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    const/4 v14, 0x0

    .line 246
    invoke-direct {v7, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    .line 248
    .line 249
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 250
    .line 251
    const/4 v12, 0x0

    .line 252
    invoke-virtual {v7, v11, v12, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 253
    .line 254
    .line 255
    const/16 v14, 0x10

    .line 256
    .line 257
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    .line 259
    .line 260
    const/high16 v11, 0x41600000    # 14.0f

    .line 261
    .line 262
    const/4 v14, 0x1

    .line 263
    invoke-virtual {v7, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 264
    .line 265
    .line 266
    sget v14, Lnet/kaki87/soul2/testing/R$string;->exist_pass:I

    .line 267
    .line 268
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    .line 269
    .line 270
    .line 271
    const/4 v14, -0x1

    .line 272
    invoke-virtual {v15, v7, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/mycompany/app/view/MyLineRelative;

    .line 276
    .line 277
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 278
    .line 279
    .line 280
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 281
    .line 282
    invoke-virtual {v0, v12, v11, v12, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    .line 284
    .line 285
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 286
    .line 287
    invoke-virtual {v0, v11}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 288
    .line 289
    .line 290
    const/4 v11, -0x2

    .line 291
    invoke-virtual {v15, v0, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 292
    .line 293
    .line 294
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 295
    .line 296
    const/4 v12, 0x0

    .line 297
    invoke-direct {v14, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v3}, Landroid/view/View;->setId(I)V

    .line 301
    .line 302
    .line 303
    const/16 v12, 0x10

    .line 304
    .line 305
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 306
    .line 307
    .line 308
    const/4 v11, 0x1

    .line 309
    const/high16 v12, 0x41600000    # 14.0f

    .line 310
    .line 311
    invoke-virtual {v14, v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 312
    .line 313
    .line 314
    sget v11, Lnet/kaki87/soul2/testing/R$string;->change_before:I

    .line 315
    .line 316
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(I)V

    .line 317
    .line 318
    .line 319
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    .line 321
    const/4 v12, -0x2

    .line 322
    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 323
    .line 324
    .line 325
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 326
    .line 327
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    const/4 v12, 0x0

    .line 336
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v11, v4}, Landroid/view/View;->setId(I)V

    .line 340
    .line 341
    .line 342
    const/16 v12, 0x10

    .line 343
    .line 344
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 345
    .line 346
    .line 347
    const/high16 v4, 0x41800000    # 16.0f

    .line 348
    .line 349
    const/4 v12, 0x1

    .line 350
    invoke-virtual {v11, v12, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 351
    .line 352
    .line 353
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 354
    .line 355
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 356
    .line 357
    .line 358
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 359
    .line 360
    move-object/from16 v22, v14

    .line 361
    .line 362
    const/4 v12, -0x2

    .line 363
    const/4 v14, -0x1

    .line 364
    invoke-direct {v4, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .line 366
    .line 367
    const/4 v12, 0x3

    .line 368
    invoke-virtual {v4, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    .line 370
    .line 371
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 372
    .line 373
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 374
    .line 375
    .line 376
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 377
    .line 378
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v3, Lcom/mycompany/app/view/MyButtonCheck;

    .line 385
    .line 386
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 390
    .line 391
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 392
    .line 393
    invoke-direct {v4, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    .line 395
    .line 396
    const/16 v14, 0x15

    .line 397
    .line 398
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 399
    .line 400
    .line 401
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 402
    .line 403
    iput v14, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 404
    .line 405
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    .line 407
    .line 408
    new-instance v0, Lcom/mycompany/app/view/MyLineRelative;

    .line 409
    .line 410
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 411
    .line 412
    .line 413
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 414
    .line 415
    const/4 v14, 0x0

    .line 416
    invoke-virtual {v0, v14, v4, v14, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 417
    .line 418
    .line 419
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 420
    .line 421
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 422
    .line 423
    .line 424
    const/4 v4, -0x2

    .line 425
    const/4 v14, -0x1

    .line 426
    invoke-virtual {v15, v0, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 427
    .line 428
    .line 429
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    const/4 v12, 0x0

    .line 432
    invoke-direct {v14, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 436
    .line 437
    .line 438
    const/16 v12, 0x10

    .line 439
    .line 440
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 441
    .line 442
    .line 443
    const/4 v4, 0x1

    .line 444
    const/high16 v12, 0x41600000    # 14.0f

    .line 445
    .line 446
    invoke-virtual {v14, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 447
    .line 448
    .line 449
    sget v4, Lnet/kaki87/soul2/testing/R$string;->change_after:I

    .line 450
    .line 451
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(I)V

    .line 452
    .line 453
    .line 454
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    .line 456
    const/4 v12, -0x2

    .line 457
    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 458
    .line 459
    .line 460
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 461
    .line 462
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .line 467
    .line 468
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 469
    .line 470
    const/4 v12, 0x0

    .line 471
    invoke-direct {v4, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 475
    .line 476
    .line 477
    const/16 v12, 0x10

    .line 478
    .line 479
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 480
    .line 481
    .line 482
    const/high16 v6, 0x41800000    # 16.0f

    .line 483
    .line 484
    const/4 v12, 0x1

    .line 485
    invoke-virtual {v4, v12, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 486
    .line 487
    .line 488
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 489
    .line 490
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 491
    .line 492
    .line 493
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 494
    .line 495
    move-object/from16 v18, v14

    .line 496
    .line 497
    const/4 v12, -0x2

    .line 498
    const/4 v14, -0x1

    .line 499
    invoke-direct {v6, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 500
    .line 501
    .line 502
    const/4 v12, 0x3

    .line 503
    invoke-virtual {v6, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 504
    .line 505
    .line 506
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 507
    .line 508
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 509
    .line 510
    .line 511
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 512
    .line 513
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    .line 518
    .line 519
    new-instance v5, Lcom/mycompany/app/view/MyButtonCheck;

    .line 520
    .line 521
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 525
    .line 526
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 527
    .line 528
    invoke-direct {v6, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 529
    .line 530
    .line 531
    const/16 v12, 0x15

    .line 532
    .line 533
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 534
    .line 535
    .line 536
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 537
    .line 538
    iput v12, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 539
    .line 540
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    .line 542
    .line 543
    new-instance v0, Landroid/widget/FrameLayout;

    .line 544
    .line 545
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 546
    .line 547
    .line 548
    const/4 v12, -0x2

    .line 549
    const/4 v14, -0x1

    .line 550
    invoke-virtual {v15, v0, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 551
    .line 552
    .line 553
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 554
    .line 555
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 556
    .line 557
    .line 558
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 559
    .line 560
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 561
    .line 562
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 563
    .line 564
    .line 565
    const v14, 0x800013

    .line 566
    .line 567
    .line 568
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    .line 570
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 571
    .line 572
    invoke-virtual {v12, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    .line 577
    .line 578
    move-object/from16 v23, v5

    .line 579
    .line 580
    move-object/from16 v21, v6

    .line 581
    .line 582
    const/4 v6, 0x1

    .line 583
    const/high16 v12, 0x41800000    # 16.0f

    .line 584
    .line 585
    const/4 v14, 0x0

    .line 586
    invoke-static {v2, v14, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    sget v6, Lnet/kaki87/soul2/testing/R$string;->apply_pass_equal:I

    .line 591
    .line 592
    const/4 v12, -0x2

    .line 593
    const/4 v14, -0x1

    .line 594
    invoke-static {v5, v6, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    const v14, 0x800013

    .line 599
    .line 600
    .line 601
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 602
    .line 603
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 604
    .line 605
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 606
    .line 607
    .line 608
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 609
    .line 610
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    .line 615
    .line 616
    new-instance v6, Lcom/mycompany/app/view/MyCoverView;

    .line 617
    .line 618
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 619
    .line 620
    .line 621
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    .line 623
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 624
    .line 625
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 626
    .line 627
    .line 628
    const/16 v14, 0x11

    .line 629
    .line 630
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 631
    .line 632
    invoke-virtual {v9, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    .line 634
    .line 635
    new-instance v9, Lcom/mycompany/app/view/MyLineLinear;

    .line 636
    .line 637
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 638
    .line 639
    .line 640
    const/4 v12, 0x0

    .line 641
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 645
    .line 646
    .line 647
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 648
    .line 649
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 650
    .line 651
    .line 652
    const/4 v12, 0x1

    .line 653
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 654
    .line 655
    .line 656
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 657
    .line 658
    move-object/from16 v16, v6

    .line 659
    .line 660
    const/4 v6, -0x1

    .line 661
    invoke-static {v8, v9, v6, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 662
    .line 663
    .line 664
    move-result-object v12

    .line 665
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 666
    .line 667
    .line 668
    const/4 v6, 0x1

    .line 669
    const/high16 v14, 0x41800000    # 16.0f

    .line 670
    .line 671
    invoke-virtual {v12, v6, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 672
    .line 673
    .line 674
    sget v6, Lnet/kaki87/soul2/testing/R$string;->skip:I

    .line 675
    .line 676
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v12, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 680
    .line 681
    .line 682
    const/16 v6, 0x8

    .line 683
    .line 684
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 685
    .line 686
    .line 687
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 688
    .line 689
    move-object/from16 v17, v5

    .line 690
    .line 691
    const/4 v5, -0x1

    .line 692
    const/4 v14, 0x0

    .line 693
    invoke-direct {v6, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 694
    .line 695
    .line 696
    const/high16 v5, 0x3f800000    # 1.0f

    .line 697
    .line 698
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 699
    .line 700
    const/4 v5, 0x0

    .line 701
    invoke-static {v9, v12, v6, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    const/16 v5, 0x11

    .line 706
    .line 707
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    .line 709
    .line 710
    const/4 v5, 0x1

    .line 711
    const/high16 v6, 0x41800000    # 16.0f

    .line 712
    .line 713
    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 714
    .line 715
    .line 716
    sget v5, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 717
    .line 718
    const/4 v6, -0x1

    .line 719
    invoke-static {v2, v5, v14, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    const/high16 v6, 0x3f800000    # 1.0f

    .line 724
    .line 725
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 726
    .line 727
    invoke-virtual {v9, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    .line 729
    .line 730
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 731
    .line 732
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 733
    .line 734
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->e0:Landroid/widget/LinearLayout;

    .line 735
    .line 736
    move-object/from16 v5, v19

    .line 737
    .line 738
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 739
    .line 740
    move-object/from16 v5, v20

    .line 741
    .line 742
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 743
    .line 744
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 745
    .line 746
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 747
    .line 748
    move-object/from16 v5, v22

    .line 749
    .line 750
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 751
    .line 752
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 753
    .line 754
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 755
    .line 756
    move-object/from16 v3, v18

    .line 757
    .line 758
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 759
    .line 760
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 761
    .line 762
    move-object/from16 v3, v23

    .line 763
    .line 764
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 765
    .line 766
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->p0:Landroid/widget/FrameLayout;

    .line 767
    .line 768
    move-object/from16 v0, v21

    .line 769
    .line 770
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 771
    .line 772
    move-object/from16 v0, v17

    .line 773
    .line 774
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 775
    .line 776
    move-object/from16 v0, v16

    .line 777
    .line 778
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->s0:Lcom/mycompany/app/view/MyCoverView;

    .line 779
    .line 780
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 781
    .line 782
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 783
    .line 784
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 785
    .line 786
    if-nez v0, :cond_1

    .line 787
    .line 788
    :goto_0
    return-void

    .line 789
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$2;

    .line 790
    .line 791
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogPassLoad$2;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    .line 796
    .line 797
    return-void
.end method
