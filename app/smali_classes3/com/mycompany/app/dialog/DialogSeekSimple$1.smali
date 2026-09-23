.class Lcom/mycompany/app/dialog/DialogSeekSimple$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSimple;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$1;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple$1;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->f0:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/high16 v7, 0x41600000    # 14.0f

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const/high16 v9, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/16 v10, 0x11

    .line 26
    .line 27
    const/4 v11, 0x0

    .line 28
    const/4 v12, -0x2

    .line 29
    const/4 v13, -0x1

    .line 30
    if-eq v2, v5, :cond_2

    .line 31
    .line 32
    if-ne v2, v8, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v14, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    invoke-direct {v14, v3}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 43
    .line 44
    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    .line 49
    .line 50
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 51
    .line 52
    int-to-float v15, v15

    .line 53
    invoke-virtual {v14, v15, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v14, v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 57
    .line 58
    .line 59
    const/high16 v15, 0x42900000    # 72.0f

    .line 60
    .line 61
    invoke-static {v3, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    float-to-int v15, v15

    .line 66
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 67
    .line 68
    .line 69
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 70
    .line 71
    invoke-virtual {v14, v15}, Lcom/mycompany/app/view/MyLineText;->q(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v14, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 75
    .line 76
    .line 77
    :goto_1
    const/4 v15, 0x3

    .line 78
    if-ne v2, v15, :cond_3

    .line 79
    .line 80
    new-instance v9, Lcom/mycompany/app/view/MyLineFrame;

    .line 81
    .line 82
    invoke-direct {v9, v3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 86
    .line 87
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    .line 89
    .line 90
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v9, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 96
    .line 97
    .line 98
    new-instance v10, Lcom/mycompany/app/view/MyImageFilter;

    .line 99
    .line 100
    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyImageFilter;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v10, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object v10, v11

    .line 108
    :goto_2
    new-instance v9, Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    invoke-direct {v9, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v9, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 114
    .line 115
    .line 116
    const/high16 v7, 0x41400000    # 12.0f

    .line 117
    .line 118
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    float-to-int v7, v7

    .line 123
    const/high16 v8, 0x41800000    # 16.0f

    .line 124
    .line 125
    invoke-static {v3, v11, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 130
    .line 131
    invoke-direct {v13, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 135
    .line 136
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 137
    .line 138
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-direct {v12, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v4}, Landroid/view/View;->setId(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v5, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 156
    .line 157
    .line 158
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 159
    .line 160
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 161
    .line 162
    .line 163
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 164
    .line 165
    const/4 v11, -0x2

    .line 166
    invoke-direct {v13, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const/16 v11, 0x15

    .line 170
    .line 171
    invoke-virtual {v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    .line 173
    .line 174
    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    .line 176
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 177
    .line 178
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    new-instance v7, Landroid/widget/FrameLayout;

    .line 185
    .line 186
    invoke-direct {v7, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    .line 191
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 192
    .line 193
    const/4 v8, -0x1

    .line 194
    invoke-direct {v11, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .line 196
    .line 197
    const/4 v8, 0x3

    .line 198
    invoke-virtual {v11, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    invoke-direct {v4, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 210
    .line 211
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    .line 213
    .line 214
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 215
    .line 216
    invoke-virtual {v7, v4, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    new-instance v9, Landroid/widget/SeekBar;

    .line 220
    .line 221
    invoke-direct {v9, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .line 226
    const/4 v5, -0x1

    .line 227
    const/4 v13, -0x2

    .line 228
    invoke-direct {v11, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 229
    .line 230
    .line 231
    const v5, 0x800013

    .line 232
    .line 233
    .line 234
    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 235
    .line 236
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 237
    .line 238
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 239
    .line 240
    .line 241
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 242
    .line 243
    invoke-virtual {v11, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 254
    .line 255
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 256
    .line 257
    invoke-direct {v8, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 258
    .line 259
    .line 260
    const v11, 0x800005

    .line 261
    .line 262
    .line 263
    iput v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    .line 265
    invoke-virtual {v7, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    const/4 v7, 0x2

    .line 269
    if-ne v2, v7, :cond_4

    .line 270
    .line 271
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 272
    .line 273
    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 274
    .line 275
    .line 276
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 277
    .line 278
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 279
    .line 280
    .line 281
    const/high16 v8, 0x41600000    # 14.0f

    .line 282
    .line 283
    const/4 v11, 0x1

    .line 284
    invoke-virtual {v7, v11, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 285
    .line 286
    .line 287
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 288
    .line 289
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 290
    .line 291
    .line 292
    const/4 v8, -0x1

    .line 293
    const/4 v11, -0x2

    .line 294
    invoke-virtual {v6, v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 295
    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_4
    const/4 v7, 0x0

    .line 299
    :goto_3
    const/16 v8, 0x9

    .line 300
    .line 301
    if-eq v2, v8, :cond_6

    .line 302
    .line 303
    const/16 v8, 0xa

    .line 304
    .line 305
    if-eq v2, v8, :cond_6

    .line 306
    .line 307
    const/16 v8, 0xb

    .line 308
    .line 309
    if-eq v2, v8, :cond_6

    .line 310
    .line 311
    const/16 v8, 0xc

    .line 312
    .line 313
    if-ne v2, v8, :cond_5

    .line 314
    .line 315
    const/4 v0, 0x1

    .line 316
    const/16 v2, 0x11

    .line 317
    .line 318
    const/high16 v8, 0x41800000    # 16.0f

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_5
    new-instance v2, Lcom/mycompany/app/view/MyLineLinear;

    .line 322
    .line 323
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    const/4 v8, 0x0

    .line 327
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 331
    .line 332
    .line 333
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 334
    .line 335
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 336
    .line 337
    .line 338
    const/4 v11, 0x1

    .line 339
    invoke-virtual {v2, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 340
    .line 341
    .line 342
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 343
    .line 344
    const/4 v8, -0x1

    .line 345
    invoke-static {v6, v2, v8, v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    const/16 v8, 0x11

    .line 350
    .line 351
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 352
    .line 353
    .line 354
    const/high16 v8, 0x41800000    # 16.0f

    .line 355
    .line 356
    invoke-virtual {v13, v11, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 357
    .line 358
    .line 359
    sget v8, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 360
    .line 361
    const/4 v0, -0x1

    .line 362
    const/4 v11, 0x0

    .line 363
    invoke-static {v13, v8, v3, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    const/high16 v0, 0x3f800000    # 1.0f

    .line 368
    .line 369
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 370
    .line 371
    invoke-virtual {v2, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 375
    .line 376
    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    const/16 v3, 0x11

    .line 380
    .line 381
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 382
    .line 383
    .line 384
    const/4 v0, 0x1

    .line 385
    const/high16 v3, 0x41800000    # 16.0f

    .line 386
    .line 387
    invoke-virtual {v8, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 388
    .line 389
    .line 390
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 391
    .line 392
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 393
    .line 394
    .line 395
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 396
    .line 397
    const/4 v3, -0x1

    .line 398
    invoke-direct {v0, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 399
    .line 400
    .line 401
    const/high16 v3, 0x3f800000    # 1.0f

    .line 402
    .line 403
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 404
    .line 405
    invoke-virtual {v2, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    .line 407
    .line 408
    move-object v11, v13

    .line 409
    goto :goto_5

    .line 410
    :cond_6
    const/4 v0, 0x1

    .line 411
    const/high16 v8, 0x41800000    # 16.0f

    .line 412
    .line 413
    const/16 v2, 0x11

    .line 414
    .line 415
    :goto_4
    invoke-static {v3, v2, v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 420
    .line 421
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 422
    .line 423
    .line 424
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 425
    .line 426
    invoke-virtual {v8, v0}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 427
    .line 428
    .line 429
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 430
    .line 431
    const/4 v3, -0x1

    .line 432
    invoke-virtual {v6, v8, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 433
    .line 434
    .line 435
    const/4 v11, 0x0

    .line 436
    :goto_5
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 437
    .line 438
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 439
    .line 440
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 441
    .line 442
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 443
    .line 444
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 445
    .line 446
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 447
    .line 448
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 449
    .line 450
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 451
    .line 452
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 453
    .line 454
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 455
    .line 456
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 457
    .line 458
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 459
    .line 460
    if-nez v0, :cond_7

    .line 461
    .line 462
    :goto_6
    return-void

    .line 463
    :cond_7
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$2;

    .line 464
    .line 465
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSeekSimple$2;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    .line 470
    .line 471
    return-void
.end method
