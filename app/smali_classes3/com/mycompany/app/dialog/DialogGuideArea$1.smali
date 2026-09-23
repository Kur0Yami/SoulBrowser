.class Lcom/mycompany/app/dialog/DialogGuideArea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGuideArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGuideArea$1;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea$1;->c:Lcom/mycompany/app/dialog/DialogGuideArea;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->c0:I

    .line 6
    .line 7
    const/4 v10, -0x2

    .line 8
    const/4 v11, -0x1

    .line 9
    const/4 v12, 0x0

    .line 10
    const v14, 0x800013

    .line 11
    .line 12
    .line 13
    const/high16 v6, 0x41800000    # 16.0f

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x2

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v15, Lcom/mycompany/app/view/MyLineFrame;

    .line 30
    .line 31
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 35
    .line 36
    invoke-virtual {v15, v8}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v15, v3}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 40
    .line 41
    .line 42
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 43
    .line 44
    invoke-virtual {v5, v15, v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 53
    .line 54
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 60
    .line 61
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 67
    .line 68
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v15, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 79
    .line 80
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 84
    .line 85
    .line 86
    sget v9, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 87
    .line 88
    invoke-static {v7, v9, v11, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    .line 94
    const/high16 v6, 0x42800000    # 64.0f

    .line 95
    .line 96
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    float-to-int v6, v6

    .line 101
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 102
    .line 103
    .line 104
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 105
    .line 106
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v15, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2, v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    invoke-direct {v6, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .line 121
    .line 122
    const/high16 v9, 0x3f800000    # 1.0f

    .line 123
    .line 124
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 125
    .line 126
    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    new-instance v6, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 135
    .line 136
    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    .line 138
    .line 139
    const/high16 v9, 0x42900000    # 72.0f

    .line 140
    .line 141
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    float-to-int v9, v9

    .line 146
    invoke-virtual {v6, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v6, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-direct {v4, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    .line 159
    .line 160
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 161
    .line 162
    int-to-float v9, v9

    .line 163
    const/high16 v15, 0x3f800000    # 1.0f

    .line 164
    .line 165
    invoke-virtual {v4, v9, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 166
    .line 167
    .line 168
    const/high16 v9, 0x41600000    # 14.0f

    .line 169
    .line 170
    invoke-virtual {v4, v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v4, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 174
    .line 175
    .line 176
    new-instance v9, Landroid/widget/LinearLayout;

    .line 177
    .line 178
    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    const/4 v15, 0x0

    .line 182
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 186
    .line 187
    .line 188
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    invoke-direct {v15, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 194
    .line 195
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    .line 197
    invoke-virtual {v6, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 203
    .line 204
    .line 205
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 206
    .line 207
    int-to-float v15, v15

    .line 208
    const/high16 v12, 0x3f800000    # 1.0f

    .line 209
    .line 210
    invoke-virtual {v11, v15, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 211
    .line 212
    .line 213
    const/high16 v15, 0x41600000    # 14.0f

    .line 214
    .line 215
    invoke-virtual {v11, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 216
    .line 217
    .line 218
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    .line 220
    const/4 v3, 0x0

    .line 221
    invoke-direct {v15, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    .line 223
    .line 224
    iput v12, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 225
    .line 226
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 227
    .line 228
    invoke-virtual {v9, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 232
    .line 233
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 237
    .line 238
    .line 239
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 240
    .line 241
    invoke-virtual {v9, v3, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 242
    .line 243
    .line 244
    const/high16 v9, 0x41a00000    # 20.0f

    .line 245
    .line 246
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    float-to-int v9, v9

    .line 251
    const/high16 v12, 0x41400000    # 12.0f

    .line 252
    .line 253
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    float-to-int v12, v12

    .line 258
    const/high16 v15, 0x42300000    # 44.0f

    .line 259
    .line 260
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    float-to-int v15, v15

    .line 265
    new-instance v14, Landroid/widget/FrameLayout;

    .line 266
    .line 267
    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    const/4 v0, -0x1

    .line 271
    invoke-virtual {v6, v14, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Landroid/widget/ImageView;

    .line 275
    .line 276
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 280
    .line 281
    .line 282
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .line 284
    invoke-direct {v10, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .line 286
    .line 287
    move-object/from16 v17, v3

    .line 288
    .line 289
    const v3, 0x800013

    .line 290
    .line 291
    .line 292
    iput v3, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 293
    .line 294
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14, v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .line 299
    .line 300
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    invoke-direct {v10, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 304
    .line 305
    .line 306
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 307
    .line 308
    int-to-float v3, v3

    .line 309
    move-object/from16 v18, v0

    .line 310
    .line 311
    const/high16 v0, 0x3f800000    # 1.0f

    .line 312
    .line 313
    invoke-virtual {v10, v3, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 314
    .line 315
    .line 316
    const/high16 v0, 0x41600000    # 14.0f

    .line 317
    .line 318
    const/4 v3, 0x1

    .line 319
    invoke-virtual {v10, v3, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .line 324
    move-object/from16 v19, v11

    .line 325
    .line 326
    const/4 v3, -0x2

    .line 327
    const/4 v11, -0x1

    .line 328
    invoke-direct {v0, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .line 330
    .line 331
    const v3, 0x800013

    .line 332
    .line 333
    .line 334
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 335
    .line 336
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v14, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Landroid/widget/FrameLayout;

    .line 343
    .line 344
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 345
    .line 346
    .line 347
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 348
    .line 349
    const/4 v14, -0x2

    .line 350
    invoke-direct {v3, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 351
    .line 352
    .line 353
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 354
    .line 355
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 356
    .line 357
    invoke-virtual {v6, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    new-instance v3, Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    .line 367
    .line 368
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    .line 370
    invoke-direct {v11, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    .line 372
    .line 373
    const v9, 0x800013

    .line 374
    .line 375
    .line 376
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 377
    .line 378
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    const/4 v12, 0x0

    .line 387
    invoke-direct {v11, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 388
    .line 389
    .line 390
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 391
    .line 392
    int-to-float v13, v13

    .line 393
    const/high16 v14, 0x3f800000    # 1.0f

    .line 394
    .line 395
    invoke-virtual {v11, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 396
    .line 397
    .line 398
    const/high16 v13, 0x41600000    # 14.0f

    .line 399
    .line 400
    const/4 v14, 0x1

    .line 401
    invoke-virtual {v11, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 402
    .line 403
    .line 404
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 405
    .line 406
    const/4 v12, -0x1

    .line 407
    const/4 v14, -0x2

    .line 408
    invoke-direct {v13, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .line 410
    .line 411
    iput v9, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 412
    .line 413
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    const/4 v9, 0x0

    .line 422
    invoke-direct {v0, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 423
    .line 424
    .line 425
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 426
    .line 427
    int-to-float v9, v9

    .line 428
    const/high16 v15, 0x3f800000    # 1.0f

    .line 429
    .line 430
    invoke-virtual {v0, v9, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 431
    .line 432
    .line 433
    const/4 v9, 0x1

    .line 434
    const/high16 v15, 0x41600000    # 14.0f

    .line 435
    .line 436
    invoke-virtual {v0, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 437
    .line 438
    .line 439
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 440
    .line 441
    invoke-direct {v9, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 442
    .line 443
    .line 444
    const/high16 v12, 0x41c00000    # 24.0f

    .line 445
    .line 446
    invoke-static {v2, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    float-to-int v12, v12

    .line 451
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 452
    .line 453
    invoke-virtual {v6, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    .line 455
    .line 456
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 457
    .line 458
    const/4 v12, 0x0

    .line 459
    invoke-direct {v9, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 460
    .line 461
    .line 462
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 463
    .line 464
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 465
    .line 466
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 467
    .line 468
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 469
    .line 470
    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 471
    .line 472
    .line 473
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 474
    .line 475
    int-to-float v12, v12

    .line 476
    const/high16 v15, 0x3f800000    # 1.0f

    .line 477
    .line 478
    invoke-virtual {v9, v12, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 479
    .line 480
    .line 481
    const/4 v14, 0x1

    .line 482
    const/high16 v15, 0x41600000    # 14.0f

    .line 483
    .line 484
    invoke-virtual {v9, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 485
    .line 486
    .line 487
    const/4 v12, -0x2

    .line 488
    invoke-virtual {v6, v9, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 489
    .line 490
    .line 491
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 492
    .line 493
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 494
    .line 495
    .line 496
    const/16 v2, 0x11

    .line 497
    .line 498
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    .line 500
    .line 501
    const/high16 v2, 0x41800000    # 16.0f

    .line 502
    .line 503
    invoke-virtual {v6, v14, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 504
    .line 505
    .line 506
    sget v2, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 507
    .line 508
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 509
    .line 510
    .line 511
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 512
    .line 513
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 517
    .line 518
    .line 519
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 520
    .line 521
    const/4 v12, -0x1

    .line 522
    invoke-virtual {v5, v6, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 523
    .line 524
    .line 525
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 526
    .line 527
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 528
    .line 529
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 530
    .line 531
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 532
    .line 533
    move-object/from16 v2, v19

    .line 534
    .line 535
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 536
    .line 537
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 538
    .line 539
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 540
    .line 541
    move-object/from16 v0, v17

    .line 542
    .line 543
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 544
    .line 545
    move-object/from16 v0, v18

    .line 546
    .line 547
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->m0:Landroid/widget/ImageView;

    .line 548
    .line 549
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 550
    .line 551
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->o0:Landroid/widget/ImageView;

    .line 552
    .line 553
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 554
    .line 555
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 556
    .line 557
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 558
    .line 559
    if-nez v0, :cond_1

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$2;

    .line 564
    .line 565
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogGuideArea$2;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_2
    move v14, v3

    .line 573
    if-ne v2, v14, :cond_5

    .line 574
    .line 575
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 576
    .line 577
    if-nez v0, :cond_3

    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :cond_3
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 586
    .line 587
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 588
    .line 589
    .line 590
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 591
    .line 592
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 596
    .line 597
    .line 598
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 599
    .line 600
    const/4 v12, -0x1

    .line 601
    invoke-virtual {v2, v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 602
    .line 603
    .line 604
    new-instance v5, Landroid/widget/ImageView;

    .line 605
    .line 606
    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 607
    .line 608
    .line 609
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 610
    .line 611
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 612
    .line 613
    .line 614
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 615
    .line 616
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 617
    .line 618
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 619
    .line 620
    .line 621
    const v9, 0x800013

    .line 622
    .line 623
    .line 624
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 625
    .line 626
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 627
    .line 628
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    .line 633
    .line 634
    const/4 v12, 0x0

    .line 635
    invoke-static {v0, v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 636
    .line 637
    .line 638
    move-result-object v7

    .line 639
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 640
    .line 641
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 642
    .line 643
    .line 644
    const/high16 v8, 0x41800000    # 16.0f

    .line 645
    .line 646
    const/4 v14, 0x1

    .line 647
    invoke-virtual {v7, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 648
    .line 649
    .line 650
    sget v8, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 651
    .line 652
    const/4 v12, -0x1

    .line 653
    const/4 v14, -0x2

    .line 654
    invoke-static {v7, v8, v12, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 655
    .line 656
    .line 657
    move-result-object v8

    .line 658
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 659
    .line 660
    const/high16 v9, 0x42800000    # 64.0f

    .line 661
    .line 662
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    float-to-int v9, v9

    .line 667
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 668
    .line 669
    .line 670
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 671
    .line 672
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    .line 677
    .line 678
    const/4 v3, 0x0

    .line 679
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 684
    .line 685
    const/4 v15, 0x0

    .line 686
    invoke-direct {v3, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 687
    .line 688
    .line 689
    const/high16 v15, 0x3f800000    # 1.0f

    .line 690
    .line 691
    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 692
    .line 693
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    .line 695
    .line 696
    new-instance v3, Landroid/widget/LinearLayout;

    .line 697
    .line 698
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 699
    .line 700
    .line 701
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 702
    .line 703
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 704
    .line 705
    .line 706
    const/high16 v9, 0x42900000    # 72.0f

    .line 707
    .line 708
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 709
    .line 710
    .line 711
    move-result v8

    .line 712
    float-to-int v8, v8

    .line 713
    invoke-virtual {v3, v8}, Landroid/view/View;->setMinimumHeight(I)V

    .line 714
    .line 715
    .line 716
    const/4 v14, 0x1

    .line 717
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 718
    .line 719
    .line 720
    const/4 v8, -0x2

    .line 721
    invoke-virtual {v4, v3, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 722
    .line 723
    .line 724
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 725
    .line 726
    const/4 v9, 0x0

    .line 727
    invoke-direct {v4, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 728
    .line 729
    .line 730
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 731
    .line 732
    int-to-float v9, v9

    .line 733
    const/high16 v15, 0x3f800000    # 1.0f

    .line 734
    .line 735
    invoke-virtual {v4, v9, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 736
    .line 737
    .line 738
    const/high16 v15, 0x41600000    # 14.0f

    .line 739
    .line 740
    invoke-virtual {v4, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v4, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 744
    .line 745
    .line 746
    const/high16 v9, 0x41a00000    # 20.0f

    .line 747
    .line 748
    invoke-static {v0, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 749
    .line 750
    .line 751
    move-result v8

    .line 752
    float-to-int v8, v8

    .line 753
    const/high16 v12, 0x41400000    # 12.0f

    .line 754
    .line 755
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 756
    .line 757
    .line 758
    move-result v9

    .line 759
    float-to-int v9, v9

    .line 760
    const/high16 v15, 0x42300000    # 44.0f

    .line 761
    .line 762
    invoke-static {v0, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 763
    .line 764
    .line 765
    move-result v10

    .line 766
    float-to-int v10, v10

    .line 767
    const/high16 v11, 0x41200000    # 10.0f

    .line 768
    .line 769
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 770
    .line 771
    .line 772
    move-result v11

    .line 773
    float-to-int v11, v11

    .line 774
    const/high16 v12, 0x43200000    # 160.0f

    .line 775
    .line 776
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 777
    .line 778
    .line 779
    move-result v12

    .line 780
    float-to-int v12, v12

    .line 781
    const/high16 v13, 0x42a00000    # 80.0f

    .line 782
    .line 783
    invoke-static {v0, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 784
    .line 785
    .line 786
    move-result v13

    .line 787
    float-to-int v13, v13

    .line 788
    const/high16 v14, 0x40000000    # 2.0f

    .line 789
    .line 790
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 791
    .line 792
    .line 793
    move-result v14

    .line 794
    float-to-int v14, v14

    .line 795
    new-instance v15, Landroid/widget/FrameLayout;

    .line 796
    .line 797
    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 798
    .line 799
    .line 800
    move-object/from16 v16, v4

    .line 801
    .line 802
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    .line 804
    move-object/from16 v18, v5

    .line 805
    .line 806
    move-object/from16 v17, v7

    .line 807
    .line 808
    const/4 v5, -0x1

    .line 809
    const/4 v7, -0x2

    .line 810
    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 811
    .line 812
    .line 813
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 814
    .line 815
    invoke-virtual {v3, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    .line 817
    .line 818
    new-instance v4, Landroid/widget/ImageView;

    .line 819
    .line 820
    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 824
    .line 825
    .line 826
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 827
    .line 828
    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 829
    .line 830
    .line 831
    const v7, 0x800013

    .line 832
    .line 833
    .line 834
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 835
    .line 836
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v15, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    .line 841
    .line 842
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 843
    .line 844
    const/4 v7, 0x0

    .line 845
    invoke-direct {v5, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 846
    .line 847
    .line 848
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 849
    .line 850
    int-to-float v7, v7

    .line 851
    move-object/from16 v19, v4

    .line 852
    .line 853
    const/high16 v4, 0x3f800000    # 1.0f

    .line 854
    .line 855
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 856
    .line 857
    .line 858
    const/high16 v4, 0x41600000    # 14.0f

    .line 859
    .line 860
    const/4 v7, 0x1

    .line 861
    invoke-virtual {v5, v7, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 862
    .line 863
    .line 864
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 865
    .line 866
    move-object/from16 v23, v1

    .line 867
    .line 868
    const/4 v1, -0x1

    .line 869
    const/4 v7, -0x2

    .line 870
    invoke-direct {v4, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 871
    .line 872
    .line 873
    const v7, 0x800013

    .line 874
    .line 875
    .line 876
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 877
    .line 878
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {v15, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    .line 883
    .line 884
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 885
    .line 886
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 887
    .line 888
    .line 889
    int-to-float v4, v14

    .line 890
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineFrame;->f(F)V

    .line 891
    .line 892
    .line 893
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 894
    .line 895
    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 896
    .line 897
    .line 898
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 899
    .line 900
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v3, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    .line 905
    .line 906
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 907
    .line 908
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 912
    .line 913
    .line 914
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 915
    .line 916
    const/4 v15, -0x1

    .line 917
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 918
    .line 919
    .line 920
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 921
    .line 922
    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v1, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    .line 927
    .line 928
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 929
    .line 930
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 934
    .line 935
    .line 936
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 937
    .line 938
    const/4 v15, -0x1

    .line 939
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 940
    .line 941
    .line 942
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 943
    .line 944
    invoke-virtual {v14, v15, v15, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v1, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    .line 949
    .line 950
    new-instance v7, Landroid/widget/FrameLayout;

    .line 951
    .line 952
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 953
    .line 954
    .line 955
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 956
    .line 957
    move-object/from16 v20, v1

    .line 958
    .line 959
    const/4 v1, -0x1

    .line 960
    const/4 v15, -0x2

    .line 961
    invoke-direct {v14, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 962
    .line 963
    .line 964
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 965
    .line 966
    invoke-virtual {v3, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 967
    .line 968
    .line 969
    new-instance v1, Landroid/widget/ImageView;

    .line 970
    .line 971
    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 975
    .line 976
    .line 977
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 978
    .line 979
    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 980
    .line 981
    .line 982
    const v14, 0x800013

    .line 983
    .line 984
    .line 985
    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 986
    .line 987
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    .line 992
    .line 993
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 994
    .line 995
    const/4 v9, 0x0

    .line 996
    invoke-direct {v6, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 997
    .line 998
    .line 999
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1000
    .line 1001
    int-to-float v9, v9

    .line 1002
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1003
    .line 1004
    invoke-virtual {v6, v9, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1005
    .line 1006
    .line 1007
    const/4 v9, 0x1

    .line 1008
    const/high16 v15, 0x41600000    # 14.0f

    .line 1009
    .line 1010
    invoke-virtual {v6, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1014
    .line 1015
    move-object/from16 v21, v1

    .line 1016
    .line 1017
    const/4 v1, -0x1

    .line 1018
    const/4 v15, -0x2

    .line 1019
    invoke-direct {v9, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1020
    .line 1021
    .line 1022
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1023
    .line 1024
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    .line 1029
    .line 1030
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 1031
    .line 1032
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineFrame;->f(F)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1039
    .line 1040
    invoke-direct {v7, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1041
    .line 1042
    .line 1043
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1044
    .line 1045
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v3, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 1052
    .line 1053
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 1057
    .line 1058
    .line 1059
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1060
    .line 1061
    const/4 v12, -0x1

    .line 1062
    invoke-direct {v9, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1063
    .line 1064
    .line 1065
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1066
    .line 1067
    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    .line 1072
    .line 1073
    new-instance v7, Lcom/mycompany/app/view/MyLineView;

    .line 1074
    .line 1075
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v7, v4}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 1079
    .line 1080
    .line 1081
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1082
    .line 1083
    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1084
    .line 1085
    .line 1086
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1087
    .line 1088
    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v1, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    .line 1093
    .line 1094
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1095
    .line 1096
    const/4 v9, 0x0

    .line 1097
    invoke-direct {v1, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1098
    .line 1099
    .line 1100
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1101
    .line 1102
    int-to-float v4, v4

    .line 1103
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1104
    .line 1105
    invoke-virtual {v1, v4, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1106
    .line 1107
    .line 1108
    const/4 v14, 0x1

    .line 1109
    const/high16 v15, 0x41600000    # 14.0f

    .line 1110
    .line 1111
    invoke-virtual {v1, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1112
    .line 1113
    .line 1114
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1115
    .line 1116
    const/4 v15, -0x2

    .line 1117
    invoke-direct {v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1118
    .line 1119
    .line 1120
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1121
    .line 1122
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v3, Lcom/mycompany/app/view/MyLineText;

    .line 1126
    .line 1127
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 1128
    .line 1129
    .line 1130
    const/16 v0, 0x11

    .line 1131
    .line 1132
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1133
    .line 1134
    .line 1135
    const/high16 v8, 0x41800000    # 16.0f

    .line 1136
    .line 1137
    invoke-virtual {v3, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1138
    .line 1139
    .line 1140
    sget v0, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 1141
    .line 1142
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1143
    .line 1144
    .line 1145
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1146
    .line 1147
    invoke-virtual {v3, v0}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 1151
    .line 1152
    .line 1153
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1154
    .line 1155
    const/4 v12, -0x1

    .line 1156
    invoke-virtual {v2, v3, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1157
    .line 1158
    .line 1159
    move-object/from16 v0, v23

    .line 1160
    .line 1161
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1162
    .line 1163
    move-object/from16 v2, v18

    .line 1164
    .line 1165
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 1166
    .line 1167
    move-object/from16 v2, v17

    .line 1168
    .line 1169
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1170
    .line 1171
    move-object/from16 v2, v16

    .line 1172
    .line 1173
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1174
    .line 1175
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1176
    .line 1177
    move-object/from16 v1, v19

    .line 1178
    .line 1179
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->m0:Landroid/widget/ImageView;

    .line 1180
    .line 1181
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1182
    .line 1183
    move-object/from16 v1, v21

    .line 1184
    .line 1185
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->o0:Landroid/widget/ImageView;

    .line 1186
    .line 1187
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1188
    .line 1189
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 1190
    .line 1191
    const v1, -0xbbcca

    .line 1192
    .line 1193
    .line 1194
    move-object/from16 v2, v20

    .line 1195
    .line 1196
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 1200
    .line 1201
    .line 1202
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 1203
    .line 1204
    if-nez v1, :cond_4

    .line 1205
    .line 1206
    goto/16 :goto_0

    .line 1207
    .line 1208
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$7;

    .line 1209
    .line 1210
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideArea$7;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1214
    .line 1215
    .line 1216
    return-void

    .line 1217
    :cond_5
    move-object v0, v1

    .line 1218
    if-ne v2, v4, :cond_8

    .line 1219
    .line 1220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 1221
    .line 1222
    if-nez v1, :cond_6

    .line 1223
    .line 1224
    goto/16 :goto_0

    .line 1225
    .line 1226
    :cond_6
    const/4 v14, 0x1

    .line 1227
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 1232
    .line 1233
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 1234
    .line 1235
    .line 1236
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1237
    .line 1238
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 1242
    .line 1243
    .line 1244
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1245
    .line 1246
    const/4 v12, -0x1

    .line 1247
    invoke-virtual {v2, v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1248
    .line 1249
    .line 1250
    new-instance v5, Landroid/widget/ImageView;

    .line 1251
    .line 1252
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1253
    .line 1254
    .line 1255
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1256
    .line 1257
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1258
    .line 1259
    .line 1260
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1261
    .line 1262
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1263
    .line 1264
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1265
    .line 1266
    .line 1267
    const v7, 0x800013

    .line 1268
    .line 1269
    .line 1270
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1271
    .line 1272
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1273
    .line 1274
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    .line 1279
    .line 1280
    const/4 v9, 0x0

    .line 1281
    invoke-static {v1, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v6

    .line 1285
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1286
    .line 1287
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1288
    .line 1289
    .line 1290
    const/high16 v8, 0x41800000    # 16.0f

    .line 1291
    .line 1292
    const/4 v14, 0x1

    .line 1293
    invoke-virtual {v6, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1294
    .line 1295
    .line 1296
    sget v8, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 1297
    .line 1298
    const/4 v12, -0x1

    .line 1299
    const/4 v15, -0x2

    .line 1300
    invoke-static {v6, v8, v12, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v8

    .line 1304
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1305
    .line 1306
    const/high16 v9, 0x42800000    # 64.0f

    .line 1307
    .line 1308
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1309
    .line 1310
    .line 1311
    move-result v7

    .line 1312
    float-to-int v7, v7

    .line 1313
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1314
    .line 1315
    .line 1316
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1317
    .line 1318
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    .line 1323
    .line 1324
    const/4 v9, 0x0

    .line 1325
    invoke-static {v1, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v3

    .line 1329
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1330
    .line 1331
    const/4 v15, 0x0

    .line 1332
    invoke-direct {v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1333
    .line 1334
    .line 1335
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1336
    .line 1337
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1338
    .line 1339
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    .line 1341
    .line 1342
    new-instance v4, Landroid/widget/LinearLayout;

    .line 1343
    .line 1344
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1345
    .line 1346
    .line 1347
    const/high16 v12, 0x41c00000    # 24.0f

    .line 1348
    .line 1349
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1350
    .line 1351
    .line 1352
    move-result v7

    .line 1353
    float-to-int v7, v7

    .line 1354
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1355
    .line 1356
    invoke-virtual {v4, v8, v8, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1357
    .line 1358
    .line 1359
    const/high16 v9, 0x42900000    # 72.0f

    .line 1360
    .line 1361
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1362
    .line 1363
    .line 1364
    move-result v7

    .line 1365
    float-to-int v7, v7

    .line 1366
    invoke-virtual {v4, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1367
    .line 1368
    .line 1369
    const/4 v14, 0x1

    .line 1370
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1371
    .line 1372
    .line 1373
    const/4 v12, -0x1

    .line 1374
    const/4 v15, -0x2

    .line 1375
    invoke-virtual {v3, v4, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1376
    .line 1377
    .line 1378
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1379
    .line 1380
    const/4 v9, 0x0

    .line 1381
    invoke-direct {v3, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1382
    .line 1383
    .line 1384
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1385
    .line 1386
    int-to-float v7, v7

    .line 1387
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1388
    .line 1389
    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1390
    .line 1391
    .line 1392
    const/high16 v13, 0x41600000    # 14.0f

    .line 1393
    .line 1394
    invoke-virtual {v3, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v4, v3, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1398
    .line 1399
    .line 1400
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1401
    .line 1402
    invoke-direct {v7, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1403
    .line 1404
    .line 1405
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1406
    .line 1407
    int-to-float v10, v10

    .line 1408
    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v7, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v4, v7, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1415
    .line 1416
    .line 1417
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1418
    .line 1419
    invoke-direct {v10, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1420
    .line 1421
    .line 1422
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1423
    .line 1424
    int-to-float v11, v11

    .line 1425
    invoke-virtual {v10, v11, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v10, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v4, v10, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1432
    .line 1433
    .line 1434
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1435
    .line 1436
    invoke-direct {v11, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1437
    .line 1438
    .line 1439
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1440
    .line 1441
    int-to-float v9, v9

    .line 1442
    invoke-virtual {v11, v9, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v11, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v4, v11, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1449
    .line 1450
    .line 1451
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 1452
    .line 1453
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 1454
    .line 1455
    .line 1456
    const/16 v1, 0x11

    .line 1457
    .line 1458
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1459
    .line 1460
    .line 1461
    const/high16 v8, 0x41800000    # 16.0f

    .line 1462
    .line 1463
    invoke-virtual {v4, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1464
    .line 1465
    .line 1466
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 1467
    .line 1468
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1469
    .line 1470
    .line 1471
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1472
    .line 1473
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 1474
    .line 1475
    .line 1476
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 1477
    .line 1478
    .line 1479
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1480
    .line 1481
    invoke-virtual {v2, v4, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1482
    .line 1483
    .line 1484
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1485
    .line 1486
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 1487
    .line 1488
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1489
    .line 1490
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1491
    .line 1492
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1493
    .line 1494
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1495
    .line 1496
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1497
    .line 1498
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 1499
    .line 1500
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 1501
    .line 1502
    if-nez v1, :cond_7

    .line 1503
    .line 1504
    goto/16 :goto_0

    .line 1505
    .line 1506
    :cond_7
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$10;

    .line 1507
    .line 1508
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideArea$10;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1512
    .line 1513
    .line 1514
    return-void

    .line 1515
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->a0:Landroid/content/Context;

    .line 1516
    .line 1517
    if-nez v1, :cond_9

    .line 1518
    .line 1519
    goto/16 :goto_0

    .line 1520
    .line 1521
    :cond_9
    const/4 v14, 0x1

    .line 1522
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v2

    .line 1526
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 1527
    .line 1528
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 1529
    .line 1530
    .line 1531
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1532
    .line 1533
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v3, v14}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 1537
    .line 1538
    .line 1539
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1540
    .line 1541
    const/4 v12, -0x1

    .line 1542
    invoke-virtual {v2, v3, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1543
    .line 1544
    .line 1545
    new-instance v5, Landroid/widget/ImageView;

    .line 1546
    .line 1547
    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1548
    .line 1549
    .line 1550
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 1551
    .line 1552
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1553
    .line 1554
    .line 1555
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1556
    .line 1557
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 1558
    .line 1559
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1560
    .line 1561
    .line 1562
    const v7, 0x800013

    .line 1563
    .line 1564
    .line 1565
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1566
    .line 1567
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1568
    .line 1569
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1573
    .line 1574
    .line 1575
    const/4 v9, 0x0

    .line 1576
    invoke-static {v1, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v6

    .line 1580
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1581
    .line 1582
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1583
    .line 1584
    .line 1585
    const/high16 v8, 0x41800000    # 16.0f

    .line 1586
    .line 1587
    const/4 v14, 0x1

    .line 1588
    invoke-virtual {v6, v14, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1589
    .line 1590
    .line 1591
    sget v8, Lnet/kaki87/soul2/testing/R$string;->tip:I

    .line 1592
    .line 1593
    const/4 v12, -0x1

    .line 1594
    const/4 v15, -0x2

    .line 1595
    invoke-static {v6, v8, v12, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v8

    .line 1599
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1600
    .line 1601
    const/high16 v9, 0x42800000    # 64.0f

    .line 1602
    .line 1603
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1604
    .line 1605
    .line 1606
    move-result v7

    .line 1607
    float-to-int v7, v7

    .line 1608
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1609
    .line 1610
    .line 1611
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1612
    .line 1613
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v3, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    .line 1618
    .line 1619
    const/4 v9, 0x0

    .line 1620
    invoke-static {v1, v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v3

    .line 1624
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1625
    .line 1626
    const/4 v15, 0x0

    .line 1627
    invoke-direct {v4, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1628
    .line 1629
    .line 1630
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1631
    .line 1632
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1633
    .line 1634
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    .line 1636
    .line 1637
    new-instance v4, Landroid/widget/LinearLayout;

    .line 1638
    .line 1639
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1640
    .line 1641
    .line 1642
    const/high16 v9, 0x42900000    # 72.0f

    .line 1643
    .line 1644
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1645
    .line 1646
    .line 1647
    move-result v7

    .line 1648
    float-to-int v7, v7

    .line 1649
    invoke-virtual {v4, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1650
    .line 1651
    .line 1652
    const/4 v14, 0x1

    .line 1653
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1654
    .line 1655
    .line 1656
    const/4 v15, -0x2

    .line 1657
    invoke-virtual {v3, v4, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1658
    .line 1659
    .line 1660
    new-instance v7, Lcom/mycompany/app/view/MyRoundLinear;

    .line 1661
    .line 1662
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 1663
    .line 1664
    .line 1665
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1666
    .line 1667
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v4, v7, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1674
    .line 1675
    .line 1676
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1677
    .line 1678
    const/4 v9, 0x0

    .line 1679
    invoke-direct {v8, v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1680
    .line 1681
    .line 1682
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1683
    .line 1684
    int-to-float v9, v9

    .line 1685
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1686
    .line 1687
    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1688
    .line 1689
    .line 1690
    const/high16 v13, 0x41600000    # 14.0f

    .line 1691
    .line 1692
    invoke-virtual {v8, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1693
    .line 1694
    .line 1695
    invoke-virtual {v7, v8, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1696
    .line 1697
    .line 1698
    const/high16 v12, 0x41c00000    # 24.0f

    .line 1699
    .line 1700
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1701
    .line 1702
    .line 1703
    move-result v9

    .line 1704
    float-to-int v9, v9

    .line 1705
    const/high16 v10, 0x40c00000    # 6.0f

    .line 1706
    .line 1707
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 1708
    .line 1709
    .line 1710
    move-result v10

    .line 1711
    float-to-int v10, v10

    .line 1712
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1713
    .line 1714
    const/4 v12, 0x0

    .line 1715
    invoke-direct {v11, v1, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1716
    .line 1717
    .line 1718
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1719
    .line 1720
    int-to-float v12, v12

    .line 1721
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1722
    .line 1723
    invoke-virtual {v11, v12, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1724
    .line 1725
    .line 1726
    const/4 v14, 0x1

    .line 1727
    const/high16 v15, 0x41600000    # 14.0f

    .line 1728
    .line 1729
    invoke-virtual {v11, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1730
    .line 1731
    .line 1732
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1733
    .line 1734
    const/4 v13, -0x1

    .line 1735
    const/4 v15, -0x2

    .line 1736
    invoke-direct {v12, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1737
    .line 1738
    .line 1739
    iput v9, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1740
    .line 1741
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1742
    .line 1743
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1747
    .line 1748
    .line 1749
    new-instance v12, Lcom/mycompany/app/view/MyRoundLinear;

    .line 1750
    .line 1751
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 1752
    .line 1753
    .line 1754
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1755
    .line 1756
    invoke-virtual {v12, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1760
    .line 1761
    .line 1762
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1763
    .line 1764
    const/4 v14, -0x1

    .line 1765
    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1766
    .line 1767
    .line 1768
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1769
    .line 1770
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1771
    .line 1772
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1773
    .line 1774
    .line 1775
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1776
    .line 1777
    const/4 v14, 0x0

    .line 1778
    invoke-direct {v13, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1779
    .line 1780
    .line 1781
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1782
    .line 1783
    int-to-float v14, v14

    .line 1784
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1785
    .line 1786
    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1787
    .line 1788
    .line 1789
    const/high16 v14, 0x41600000    # 14.0f

    .line 1790
    .line 1791
    const/4 v15, 0x1

    .line 1792
    invoke-virtual {v13, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1793
    .line 1794
    .line 1795
    const/4 v14, -0x2

    .line 1796
    const/4 v15, -0x1

    .line 1797
    invoke-virtual {v12, v13, v15, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1798
    .line 1799
    .line 1800
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1801
    .line 1802
    const/4 v15, 0x0

    .line 1803
    invoke-direct {v14, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1804
    .line 1805
    .line 1806
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1807
    .line 1808
    int-to-float v15, v15

    .line 1809
    move-object/from16 v16, v13

    .line 1810
    .line 1811
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1812
    .line 1813
    invoke-virtual {v14, v15, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1814
    .line 1815
    .line 1816
    const/4 v13, 0x1

    .line 1817
    const/high16 v15, 0x41600000    # 14.0f

    .line 1818
    .line 1819
    invoke-virtual {v14, v13, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1820
    .line 1821
    .line 1822
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1823
    .line 1824
    move-object/from16 v17, v11

    .line 1825
    .line 1826
    invoke-static {v15, v13}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v11

    .line 1830
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1831
    .line 1832
    .line 1833
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1834
    .line 1835
    move-object/from16 v18, v7

    .line 1836
    .line 1837
    const/4 v7, -0x1

    .line 1838
    const/4 v13, -0x2

    .line 1839
    invoke-direct {v11, v7, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1840
    .line 1841
    .line 1842
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1843
    .line 1844
    invoke-virtual {v12, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1845
    .line 1846
    .line 1847
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1848
    .line 1849
    const/4 v7, 0x0

    .line 1850
    invoke-direct {v11, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1851
    .line 1852
    .line 1853
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1854
    .line 1855
    int-to-float v7, v7

    .line 1856
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1857
    .line 1858
    invoke-virtual {v11, v7, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1859
    .line 1860
    .line 1861
    const/high16 v7, 0x41600000    # 14.0f

    .line 1862
    .line 1863
    const/4 v13, 0x1

    .line 1864
    invoke-virtual {v11, v13, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1865
    .line 1866
    .line 1867
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1868
    .line 1869
    move-object/from16 v19, v14

    .line 1870
    .line 1871
    const/4 v13, -0x2

    .line 1872
    const/4 v14, -0x1

    .line 1873
    invoke-direct {v7, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1874
    .line 1875
    .line 1876
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1877
    .line 1878
    invoke-virtual {v12, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1879
    .line 1880
    .line 1881
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1882
    .line 1883
    const/4 v13, 0x0

    .line 1884
    invoke-direct {v7, v1, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1885
    .line 1886
    .line 1887
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1888
    .line 1889
    int-to-float v13, v13

    .line 1890
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1891
    .line 1892
    invoke-virtual {v7, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1893
    .line 1894
    .line 1895
    const/high16 v13, 0x41600000    # 14.0f

    .line 1896
    .line 1897
    const/4 v14, 0x1

    .line 1898
    invoke-virtual {v7, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1899
    .line 1900
    .line 1901
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1902
    .line 1903
    move-object/from16 v20, v12

    .line 1904
    .line 1905
    const/4 v12, -0x1

    .line 1906
    const/4 v14, -0x2

    .line 1907
    invoke-direct {v13, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1908
    .line 1909
    .line 1910
    iput v9, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1911
    .line 1912
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1913
    .line 1914
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v4, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1918
    .line 1919
    .line 1920
    new-instance v12, Lcom/mycompany/app/view/MyRoundLinear;

    .line 1921
    .line 1922
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 1923
    .line 1924
    .line 1925
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1926
    .line 1927
    invoke-virtual {v12, v13, v13, v13, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1928
    .line 1929
    .line 1930
    const/4 v13, 0x1

    .line 1931
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1932
    .line 1933
    .line 1934
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1935
    .line 1936
    move-object/from16 v21, v7

    .line 1937
    .line 1938
    const/4 v7, -0x1

    .line 1939
    invoke-direct {v13, v7, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1940
    .line 1941
    .line 1942
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1943
    .line 1944
    iput v7, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1945
    .line 1946
    invoke-virtual {v4, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1947
    .line 1948
    .line 1949
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1950
    .line 1951
    const/4 v7, 0x0

    .line 1952
    invoke-direct {v4, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1953
    .line 1954
    .line 1955
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1956
    .line 1957
    int-to-float v13, v13

    .line 1958
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1959
    .line 1960
    invoke-virtual {v4, v13, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1961
    .line 1962
    .line 1963
    const/4 v7, 0x1

    .line 1964
    const/high16 v13, 0x41600000    # 14.0f

    .line 1965
    .line 1966
    invoke-virtual {v4, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1967
    .line 1968
    .line 1969
    const/4 v7, -0x1

    .line 1970
    invoke-virtual {v12, v4, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1971
    .line 1972
    .line 1973
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1974
    .line 1975
    const/4 v14, 0x0

    .line 1976
    invoke-direct {v7, v1, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1977
    .line 1978
    .line 1979
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1980
    .line 1981
    int-to-float v14, v14

    .line 1982
    move-object/from16 v22, v4

    .line 1983
    .line 1984
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1985
    .line 1986
    invoke-virtual {v7, v14, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1987
    .line 1988
    .line 1989
    const/4 v14, 0x1

    .line 1990
    invoke-virtual {v7, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 1991
    .line 1992
    .line 1993
    invoke-static {v15, v14}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v4

    .line 1997
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1998
    .line 1999
    .line 2000
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2001
    .line 2002
    const/4 v13, -0x1

    .line 2003
    const/4 v15, -0x2

    .line 2004
    invoke-direct {v4, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2005
    .line 2006
    .line 2007
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2008
    .line 2009
    invoke-virtual {v12, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2010
    .line 2011
    .line 2012
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 2013
    .line 2014
    const/4 v10, 0x0

    .line 2015
    invoke-direct {v4, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2016
    .line 2017
    .line 2018
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 2019
    .line 2020
    int-to-float v10, v10

    .line 2021
    const/high16 v13, 0x3f800000    # 1.0f

    .line 2022
    .line 2023
    invoke-virtual {v4, v10, v13}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2024
    .line 2025
    .line 2026
    const/high16 v13, 0x41600000    # 14.0f

    .line 2027
    .line 2028
    invoke-virtual {v4, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2029
    .line 2030
    .line 2031
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 2032
    .line 2033
    const/4 v13, -0x1

    .line 2034
    invoke-direct {v10, v13, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2035
    .line 2036
    .line 2037
    iput v9, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2038
    .line 2039
    invoke-virtual {v12, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2040
    .line 2041
    .line 2042
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 2043
    .line 2044
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 2045
    .line 2046
    .line 2047
    const/16 v1, 0x11

    .line 2048
    .line 2049
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2050
    .line 2051
    .line 2052
    const/high16 v1, 0x41800000    # 16.0f

    .line 2053
    .line 2054
    invoke-virtual {v9, v14, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 2055
    .line 2056
    .line 2057
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 2058
    .line 2059
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2060
    .line 2061
    .line 2062
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 2063
    .line 2064
    invoke-virtual {v9, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 2068
    .line 2069
    .line 2070
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 2071
    .line 2072
    const/4 v15, -0x1

    .line 2073
    invoke-virtual {v2, v9, v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 2074
    .line 2075
    .line 2076
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2077
    .line 2078
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->f0:Landroid/widget/ImageView;

    .line 2079
    .line 2080
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2081
    .line 2082
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2083
    .line 2084
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2085
    .line 2086
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2087
    .line 2088
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->r0:Landroidx/core/widget/NestedScrollView;

    .line 2089
    .line 2090
    move-object/from16 v1, v18

    .line 2091
    .line 2092
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->s0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2093
    .line 2094
    move-object/from16 v1, v20

    .line 2095
    .line 2096
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->t0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2097
    .line 2098
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->u0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 2099
    .line 2100
    move-object/from16 v1, v17

    .line 2101
    .line 2102
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2103
    .line 2104
    move-object/from16 v1, v16

    .line 2105
    .line 2106
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2107
    .line 2108
    move-object/from16 v1, v19

    .line 2109
    .line 2110
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2111
    .line 2112
    move-object/from16 v1, v21

    .line 2113
    .line 2114
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2115
    .line 2116
    move-object/from16 v1, v22

    .line 2117
    .line 2118
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2119
    .line 2120
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->A0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2121
    .line 2122
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogGuideArea;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 2123
    .line 2124
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 2125
    .line 2126
    if-nez v1, :cond_a

    .line 2127
    .line 2128
    :goto_0
    return-void

    .line 2129
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogGuideArea$13;

    .line 2130
    .line 2131
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGuideArea$13;-><init>(Lcom/mycompany/app/dialog/DialogGuideArea;)V

    .line 2132
    .line 2133
    .line 2134
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2135
    .line 2136
    .line 2137
    return-void
.end method
