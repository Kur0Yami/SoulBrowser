.class Lcom/mycompany/app/dialog/DialogSeekWebText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$1;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText$1;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 12
    .line 13
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

    .line 16
    .line 17
    sget v6, Lnet/kaki87/soul2/testing/R$id;->item_zoom_text:I

    .line 18
    .line 19
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-direct {v7, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v8, Lcom/mycompany/app/view/MyDialogLinear;

    .line 25
    .line 26
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyDialogLinear;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8, v3}, Landroid/view/View;->setId(I)V

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    .line 36
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v11, -0x1

    .line 39
    const/4 v12, -0x2

    .line 40
    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .line 42
    .line 43
    const/16 v13, 0xc

    .line 44
    .line 45
    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    new-instance v10, Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-direct {v10, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 57
    .line 58
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 59
    .line 60
    const/4 v15, 0x0

    .line 61
    invoke-virtual {v10, v13, v15, v14, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 62
    .line 63
    .line 64
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 65
    .line 66
    invoke-virtual {v10, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8, v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 70
    .line 71
    .line 72
    new-instance v13, Lcom/mycompany/app/view/MySwitchView;

    .line 73
    .line 74
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 80
    .line 81
    invoke-direct {v14, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    const/16 v9, 0x15

    .line 85
    .line 86
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    .line 88
    .line 89
    const/16 v9, 0xf

    .line 90
    .line 91
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v10, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 98
    .line 99
    invoke-direct {v14, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 103
    .line 104
    invoke-virtual {v14, v15, v0, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    .line 106
    .line 107
    invoke-static {v11, v12, v9}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget v17, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 112
    .line 113
    sget v18, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 114
    .line 115
    add-int v9, v17, v18

    .line 116
    .line 117
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x0

    .line 124
    const/high16 v9, 0x41800000    # 16.0f

    .line 125
    .line 126
    move-object/from16 v18, v13

    .line 127
    .line 128
    const/4 v15, 0x1

    .line 129
    invoke-static {v2, v0, v4, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-virtual {v14, v13, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 134
    .line 135
    .line 136
    const/high16 v9, 0x41600000    # 14.0f

    .line 137
    .line 138
    invoke-static {v2, v0, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const/4 v15, 0x3

    .line 143
    invoke-static {v11, v12, v15, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 148
    .line 149
    iput v15, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 150
    .line 151
    invoke-virtual {v14, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v4, Lcom/mycompany/app/view/MyLineRelative;

    .line 155
    .line 156
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 160
    .line 161
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v4, v14, v0, v15, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 165
    .line 166
    .line 167
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 168
    .line 169
    invoke-virtual {v4, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 170
    .line 171
    .line 172
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 173
    .line 174
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyLineRelative;->d(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 178
    .line 179
    .line 180
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    const/4 v15, 0x0

    .line 183
    invoke-direct {v14, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    .line 185
    .line 186
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 187
    .line 188
    invoke-virtual {v14, v0, v15, v0, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 189
    .line 190
    .line 191
    move-object/from16 v20, v9

    .line 192
    .line 193
    const/high16 v0, 0x41800000    # 16.0f

    .line 194
    .line 195
    const/4 v15, 0x1

    .line 196
    invoke-static {v14, v15, v0, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    const/16 v0, 0xf

    .line 201
    .line 202
    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    const/high16 v0, 0x41400000    # 12.0f

    .line 209
    .line 210
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    float-to-int v0, v0

    .line 215
    new-instance v9, Lcom/mycompany/app/view/MyButtonView;

    .line 216
    .line 217
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonView;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    int-to-float v15, v0

    .line 221
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonView;->setBgNorRadius(F)V

    .line 222
    .line 223
    .line 224
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .line 226
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 227
    .line 228
    invoke-direct {v15, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 229
    .line 230
    .line 231
    const/16 v11, 0xf

    .line 232
    .line 233
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    .line 235
    .line 236
    const/16 v11, 0x15

    .line 237
    .line 238
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    new-instance v11, Lcom/mycompany/app/view/MyRoundItem;

    .line 245
    .line 246
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    const/4 v15, -0x1

    .line 250
    invoke-virtual {v8, v11, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v21, v9

    .line 254
    .line 255
    move-object/from16 v22, v14

    .line 256
    .line 257
    const/4 v9, 0x1

    .line 258
    const/4 v12, 0x0

    .line 259
    const/high16 v15, 0x41800000    # 16.0f

    .line 260
    .line 261
    invoke-static {v2, v12, v9, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .line 267
    const/4 v9, -0x2

    .line 268
    invoke-direct {v15, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    .line 270
    .line 271
    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    .line 273
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 274
    .line 275
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v11, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .line 280
    .line 281
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    invoke-direct {v9, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v9, v6}, Landroid/view/View;->setId(I)V

    .line 287
    .line 288
    .line 289
    const/4 v15, 0x1

    .line 290
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    .line 292
    .line 293
    const/high16 v12, 0x41800000    # 16.0f

    .line 294
    .line 295
    invoke-virtual {v9, v15, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 296
    .line 297
    .line 298
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 299
    .line 300
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 301
    .line 302
    .line 303
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 304
    .line 305
    const/4 v15, -0x2

    .line 306
    invoke-direct {v12, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .line 308
    .line 309
    const/16 v15, 0x15

    .line 310
    .line 311
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    .line 313
    .line 314
    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    .line 316
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 317
    .line 318
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .line 323
    .line 324
    new-instance v12, Landroid/widget/FrameLayout;

    .line 325
    .line 326
    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 330
    .line 331
    move-object/from16 v23, v9

    .line 332
    .line 333
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 334
    .line 335
    move-object/from16 v24, v14

    .line 336
    .line 337
    const/4 v14, -0x1

    .line 338
    invoke-direct {v15, v14, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 339
    .line 340
    .line 341
    const/4 v9, 0x3

    .line 342
    invoke-virtual {v15, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v11, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    .line 347
    .line 348
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 349
    .line 350
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 351
    .line 352
    .line 353
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 354
    .line 355
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 356
    .line 357
    .line 358
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 359
    .line 360
    invoke-virtual {v12, v6, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 361
    .line 362
    .line 363
    new-instance v14, Landroid/widget/SeekBar;

    .line 364
    .line 365
    invoke-direct {v14, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    move-object/from16 v25, v6

    .line 371
    .line 372
    move-object/from16 v26, v11

    .line 373
    .line 374
    const/4 v6, -0x2

    .line 375
    const/4 v11, -0x1

    .line 376
    invoke-direct {v15, v11, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 377
    .line 378
    .line 379
    const/16 v6, 0x10

    .line 380
    .line 381
    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    .line 383
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 384
    .line 385
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 386
    .line 387
    .line 388
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 389
    .line 390
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v12, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 401
    .line 402
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 403
    .line 404
    invoke-direct {v15, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 405
    .line 406
    .line 407
    const v6, 0x800005

    .line 408
    .line 409
    .line 410
    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 411
    .line 412
    invoke-virtual {v12, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    .line 414
    .line 415
    new-instance v15, Lcom/mycompany/app/view/MyRoundItem;

    .line 416
    .line 417
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 418
    .line 419
    .line 420
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    .line 422
    move-object/from16 v27, v11

    .line 423
    .line 424
    move-object/from16 v28, v14

    .line 425
    .line 426
    const/4 v11, -0x2

    .line 427
    const/4 v14, -0x1

    .line 428
    invoke-direct {v6, v14, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 429
    .line 430
    .line 431
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 432
    .line 433
    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 434
    .line 435
    invoke-virtual {v8, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    .line 437
    .line 438
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 439
    .line 440
    const/4 v14, 0x0

    .line 441
    invoke-direct {v6, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 442
    .line 443
    .line 444
    move-object/from16 v30, v4

    .line 445
    .line 446
    move-object/from16 v29, v12

    .line 447
    .line 448
    const/4 v12, 0x1

    .line 449
    const/high16 v14, 0x41800000    # 16.0f

    .line 450
    .line 451
    invoke-static {v6, v12, v14, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 456
    .line 457
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 458
    .line 459
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v15, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    .line 464
    .line 465
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 466
    .line 467
    const/4 v11, 0x0

    .line 468
    invoke-direct {v4, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v12, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 478
    .line 479
    .line 480
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 481
    .line 482
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 483
    .line 484
    .line 485
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 486
    .line 487
    const/4 v12, -0x2

    .line 488
    invoke-direct {v11, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 489
    .line 490
    .line 491
    const/16 v12, 0x15

    .line 492
    .line 493
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 494
    .line 495
    .line 496
    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 497
    .line 498
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 499
    .line 500
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v15, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    .line 505
    .line 506
    new-instance v0, Landroid/widget/FrameLayout;

    .line 507
    .line 508
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 509
    .line 510
    .line 511
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 512
    .line 513
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 514
    .line 515
    const/4 v14, -0x1

    .line 516
    invoke-direct {v11, v14, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 517
    .line 518
    .line 519
    const/4 v12, 0x3

    .line 520
    invoke-virtual {v11, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v15, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    .line 525
    .line 526
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 527
    .line 528
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 532
    .line 533
    .line 534
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 535
    .line 536
    invoke-virtual {v0, v5, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 537
    .line 538
    .line 539
    new-instance v11, Landroid/widget/SeekBar;

    .line 540
    .line 541
    invoke-direct {v11, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 542
    .line 543
    .line 544
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .line 546
    move-object/from16 v16, v5

    .line 547
    .line 548
    const/4 v5, -0x2

    .line 549
    invoke-direct {v12, v14, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 550
    .line 551
    .line 552
    const/16 v5, 0x10

    .line 553
    .line 554
    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 555
    .line 556
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 557
    .line 558
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 559
    .line 560
    .line 561
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 562
    .line 563
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 574
    .line 575
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 576
    .line 577
    invoke-direct {v9, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 578
    .line 579
    .line 580
    const v12, 0x800005

    .line 581
    .line 582
    .line 583
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 584
    .line 585
    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Lcom/mycompany/app/view/MyLineLinear;

    .line 589
    .line 590
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 591
    .line 592
    .line 593
    const/4 v9, 0x0

    .line 594
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    .line 599
    .line 600
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 601
    .line 602
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 603
    .line 604
    .line 605
    const/4 v12, 0x1

    .line 606
    invoke-virtual {v0, v12}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 607
    .line 608
    .line 609
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 610
    .line 611
    const/4 v9, -0x1

    .line 612
    invoke-static {v8, v0, v9, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 613
    .line 614
    .line 615
    move-result-object v14

    .line 616
    const/16 v9, 0x11

    .line 617
    .line 618
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    .line 620
    .line 621
    const/high16 v9, 0x41800000    # 16.0f

    .line 622
    .line 623
    invoke-virtual {v14, v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 624
    .line 625
    .line 626
    sget v9, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 627
    .line 628
    move-object/from16 v17, v5

    .line 629
    .line 630
    const/4 v5, -0x1

    .line 631
    const/4 v12, 0x0

    .line 632
    invoke-static {v14, v9, v2, v12, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    const/high16 v5, 0x3f800000    # 1.0f

    .line 637
    .line 638
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 639
    .line 640
    const/4 v5, 0x0

    .line 641
    invoke-static {v0, v14, v9, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    const/16 v9, 0x11

    .line 646
    .line 647
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 648
    .line 649
    .line 650
    const/high16 v9, 0x41800000    # 16.0f

    .line 651
    .line 652
    const/4 v12, 0x1

    .line 653
    invoke-virtual {v5, v12, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 654
    .line 655
    .line 656
    sget v9, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 657
    .line 658
    move-object/from16 v19, v14

    .line 659
    .line 660
    const/4 v12, 0x0

    .line 661
    const/4 v14, -0x1

    .line 662
    invoke-static {v5, v9, v12, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    const/high16 v12, 0x3f800000    # 1.0f

    .line 667
    .line 668
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 669
    .line 670
    invoke-virtual {v0, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    .line 672
    .line 673
    new-instance v0, Landroid/widget/FrameLayout;

    .line 674
    .line 675
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 676
    .line 677
    .line 678
    const/4 v9, 0x2

    .line 679
    invoke-static {v14, v14, v9, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-virtual {v7, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    .line 685
    .line 686
    new-instance v3, Lcom/mycompany/app/view/MyRecyclerView;

    .line 687
    .line 688
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 689
    .line 690
    .line 691
    const/4 v12, 0x1

    .line 692
    invoke-virtual {v3, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 693
    .line 694
    .line 695
    const/4 v12, 0x0

    .line 696
    invoke-virtual {v3, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v3, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 700
    .line 701
    .line 702
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->g0:Landroid/widget/RelativeLayout;

    .line 703
    .line 704
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 705
    .line 706
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->i0:Landroid/widget/RelativeLayout;

    .line 707
    .line 708
    move-object/from16 v2, v18

    .line 709
    .line 710
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 711
    .line 712
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 713
    .line 714
    move-object/from16 v2, v20

    .line 715
    .line 716
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 717
    .line 718
    move-object/from16 v2, v30

    .line 719
    .line 720
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 721
    .line 722
    move-object/from16 v2, v22

    .line 723
    .line 724
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 725
    .line 726
    move-object/from16 v2, v21

    .line 727
    .line 728
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 729
    .line 730
    move-object/from16 v2, v26

    .line 731
    .line 732
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 733
    .line 734
    move-object/from16 v2, v24

    .line 735
    .line 736
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 737
    .line 738
    move-object/from16 v2, v23

    .line 739
    .line 740
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 741
    .line 742
    move-object/from16 v2, v29

    .line 743
    .line 744
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->s0:Landroid/widget/FrameLayout;

    .line 745
    .line 746
    move-object/from16 v2, v28

    .line 747
    .line 748
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 749
    .line 750
    move-object/from16 v2, v25

    .line 751
    .line 752
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 753
    .line 754
    move-object/from16 v2, v27

    .line 755
    .line 756
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 757
    .line 758
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 759
    .line 760
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 761
    .line 762
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 763
    .line 764
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 765
    .line 766
    move-object/from16 v2, v16

    .line 767
    .line 768
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 769
    .line 770
    move-object/from16 v2, v17

    .line 771
    .line 772
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 773
    .line 774
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 775
    .line 776
    move-object/from16 v2, v19

    .line 777
    .line 778
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 779
    .line 780
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 781
    .line 782
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 783
    .line 784
    if-nez v0, :cond_1

    .line 785
    .line 786
    :goto_0
    return-void

    .line 787
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$2;

    .line 788
    .line 789
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSeekWebText$2;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    .line 794
    .line 795
    return-void
.end method
