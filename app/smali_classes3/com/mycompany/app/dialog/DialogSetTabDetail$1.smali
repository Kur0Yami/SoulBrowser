.class Lcom/mycompany/app/dialog/DialogSetTabDetail$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/high16 v6, 0x42e00000    # 112.0f

    .line 19
    .line 20
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    float-to-int v6, v6

    .line 25
    new-instance v7, Lcom/mycompany/app/view/MyRoundFrame;

    .line 26
    .line 27
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyRoundFrame;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/4 v8, -0x1

    .line 31
    invoke-virtual {v5, v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 35
    .line 36
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 40
    .line 41
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    .line 43
    .line 44
    const/16 v9, 0x8

    .line 45
    .line 46
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v6, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    new-instance v9, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 58
    .line 59
    sget v11, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 60
    .line 61
    invoke-direct {v10, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    const/16 v11, 0x11

    .line 65
    .line 66
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    .line 68
    invoke-virtual {v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    new-instance v10, Lcom/mycompany/app/view/MyRecyclerView;

    .line 72
    .line 73
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    const/4 v12, 0x0

    .line 77
    invoke-virtual {v10, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9, v10, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 84
    .line 85
    .line 86
    const/4 v13, 0x2

    .line 87
    const/4 v14, 0x0

    .line 88
    invoke-static {v2, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    .line 94
    invoke-direct {v15, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    const/high16 v11, 0x3f800000    # 1.0f

    .line 98
    .line 99
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    .line 101
    invoke-static {v5, v13, v15, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    const/4 v11, -0x2

    .line 106
    invoke-virtual {v13, v15, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 107
    .line 108
    .line 109
    new-instance v13, Lcom/mycompany/app/view/MyLineFrame;

    .line 110
    .line 111
    invoke-direct {v13, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    .line 114
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 115
    .line 116
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 117
    .line 118
    invoke-virtual {v13, v4, v12, v14, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 119
    .line 120
    .line 121
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 122
    .line 123
    invoke-virtual {v13, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 124
    .line 125
    .line 126
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 127
    .line 128
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15, v13, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    .line 133
    .line 134
    new-instance v4, Lcom/mycompany/app/view/MySwitchView;

    .line 135
    .line 136
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    .line 141
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 142
    .line 143
    invoke-direct {v14, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .line 145
    .line 146
    const v8, 0x800015

    .line 147
    .line 148
    .line 149
    iput v8, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    .line 151
    invoke-virtual {v13, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-direct {v14, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    .line 159
    .line 160
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 161
    .line 162
    invoke-virtual {v14, v12, v8, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 163
    .line 164
    .line 165
    const/high16 v8, 0x41800000    # 16.0f

    .line 166
    .line 167
    const/4 v12, 0x1

    .line 168
    invoke-virtual {v14, v12, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 169
    .line 170
    .line 171
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .line 173
    const/4 v8, -0x1

    .line 174
    invoke-direct {v12, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    const/16 v8, 0x10

    .line 178
    .line 179
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    .line 181
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 182
    .line 183
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v13, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v11, Lcom/mycompany/app/view/MyRecyclerView;

    .line 190
    .line 191
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 195
    .line 196
    const/4 v8, 0x0

    .line 197
    invoke-virtual {v11, v12, v8, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11, v8}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11, v8}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 204
    .line 205
    .line 206
    sget v8, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 207
    .line 208
    const/4 v12, -0x1

    .line 209
    invoke-virtual {v15, v11, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 210
    .line 211
    .line 212
    new-instance v8, Lcom/mycompany/app/view/MyLineRelative;

    .line 213
    .line 214
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 218
    .line 219
    invoke-virtual {v8, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    .line 221
    .line 222
    const/16 v12, 0x10

    .line 223
    .line 224
    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 225
    .line 226
    .line 227
    sget v12, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 228
    .line 229
    invoke-virtual {v8, v12}, Landroid/view/View;->setMinimumHeight(I)V

    .line 230
    .line 231
    .line 232
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 233
    .line 234
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyLineRelative;->d(I)V

    .line 235
    .line 236
    .line 237
    const/4 v0, -0x1

    .line 238
    const/4 v12, -0x2

    .line 239
    invoke-virtual {v15, v8, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Landroid/view/View;

    .line 243
    .line 244
    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 248
    .line 249
    move-object/from16 v19, v11

    .line 250
    .line 251
    const/4 v11, 0x1

    .line 252
    invoke-direct {v12, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .line 254
    .line 255
    const/16 v11, 0x15

    .line 256
    .line 257
    invoke-virtual {v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v8, v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v20, v0

    .line 264
    .line 265
    move-object/from16 v21, v14

    .line 266
    .line 267
    const/4 v0, 0x1

    .line 268
    const/high16 v11, 0x41800000    # 16.0f

    .line 269
    .line 270
    const/4 v12, 0x0

    .line 271
    invoke-static {v2, v12, v3, v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    const/4 v0, -0x1

    .line 276
    const/4 v11, -0x2

    .line 277
    invoke-virtual {v8, v14, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 278
    .line 279
    .line 280
    const/high16 v0, 0x41600000    # 14.0f

    .line 281
    .line 282
    const/4 v11, 0x1

    .line 283
    invoke-static {v2, v12, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const/4 v11, 0x3

    .line 288
    move-object/from16 v22, v14

    .line 289
    .line 290
    const/4 v12, -0x2

    .line 291
    const/4 v14, -0x1

    .line 292
    invoke-static {v14, v12, v11, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 297
    .line 298
    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 299
    .line 300
    invoke-virtual {v8, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    .line 302
    .line 303
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 304
    .line 305
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 309
    .line 310
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 311
    .line 312
    const/4 v14, 0x0

    .line 313
    invoke-virtual {v3, v11, v14, v12, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 314
    .line 315
    .line 316
    sget v11, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 317
    .line 318
    invoke-virtual {v3, v11}, Landroid/view/View;->setMinimumHeight(I)V

    .line 319
    .line 320
    .line 321
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 322
    .line 323
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 324
    .line 325
    .line 326
    const/4 v12, -0x2

    .line 327
    const/4 v14, -0x1

    .line 328
    invoke-virtual {v15, v3, v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 329
    .line 330
    .line 331
    new-instance v11, Lcom/mycompany/app/view/MySwitchView;

    .line 332
    .line 333
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 334
    .line 335
    .line 336
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 337
    .line 338
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 339
    .line 340
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 341
    .line 342
    .line 343
    const v14, 0x800015

    .line 344
    .line 345
    .line 346
    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 347
    .line 348
    invoke-virtual {v3, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 352
    .line 353
    const/4 v14, 0x0

    .line 354
    invoke-direct {v12, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 355
    .line 356
    .line 357
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 358
    .line 359
    move-object/from16 v17, v11

    .line 360
    .line 361
    const/4 v11, 0x0

    .line 362
    invoke-virtual {v12, v11, v14, v11, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 363
    .line 364
    .line 365
    const/high16 v11, 0x41800000    # 16.0f

    .line 366
    .line 367
    const/4 v14, 0x1

    .line 368
    invoke-virtual {v12, v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 369
    .line 370
    .line 371
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .line 373
    move-object/from16 v23, v0

    .line 374
    .line 375
    const/4 v0, -0x1

    .line 376
    const/4 v14, -0x2

    .line 377
    invoke-direct {v11, v0, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .line 379
    .line 380
    const/16 v0, 0x10

    .line 381
    .line 382
    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 383
    .line 384
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 385
    .line 386
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .line 391
    .line 392
    const/high16 v0, 0x41400000    # 12.0f

    .line 393
    .line 394
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    float-to-int v0, v0

    .line 399
    new-instance v11, Landroid/widget/FrameLayout;

    .line 400
    .line 401
    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 402
    .line 403
    .line 404
    move-object/from16 v18, v12

    .line 405
    .line 406
    const/4 v12, 0x0

    .line 407
    invoke-virtual {v11, v12, v0, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 408
    .line 409
    .line 410
    const/4 v12, -0x1

    .line 411
    invoke-virtual {v15, v11, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v24, v3

    .line 415
    .line 416
    move-object/from16 v25, v8

    .line 417
    .line 418
    const/4 v3, 0x1

    .line 419
    const/high16 v12, 0x41800000    # 16.0f

    .line 420
    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-static {v2, v14, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 427
    .line 428
    const/4 v12, -0x2

    .line 429
    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 430
    .line 431
    .line 432
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 433
    .line 434
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    .line 439
    .line 440
    move-object/from16 v26, v8

    .line 441
    .line 442
    const/4 v3, 0x1

    .line 443
    const/high16 v12, 0x41800000    # 16.0f

    .line 444
    .line 445
    invoke-static {v2, v14, v3, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 450
    .line 451
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 452
    .line 453
    .line 454
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .line 456
    const/4 v12, -0x2

    .line 457
    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 458
    .line 459
    .line 460
    const v12, 0x800005

    .line 461
    .line 462
    .line 463
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    .line 465
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 466
    .line 467
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    .line 472
    .line 473
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 474
    .line 475
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 476
    .line 477
    .line 478
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 479
    .line 480
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 481
    .line 482
    .line 483
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 484
    .line 485
    const/4 v14, -0x1

    .line 486
    invoke-virtual {v15, v3, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 487
    .line 488
    .line 489
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 490
    .line 491
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 492
    .line 493
    .line 494
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 495
    .line 496
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 497
    .line 498
    .line 499
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 500
    .line 501
    invoke-virtual {v3, v11, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 502
    .line 503
    .line 504
    new-instance v14, Landroid/widget/SeekBar;

    .line 505
    .line 506
    invoke-direct {v14, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 507
    .line 508
    .line 509
    move-object/from16 v27, v11

    .line 510
    .line 511
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .line 513
    move-object/from16 v29, v4

    .line 514
    .line 515
    move-object/from16 v28, v8

    .line 516
    .line 517
    const/4 v4, -0x1

    .line 518
    const/4 v8, -0x2

    .line 519
    invoke-direct {v11, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 520
    .line 521
    .line 522
    const v4, 0x800013

    .line 523
    .line 524
    .line 525
    iput v4, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 526
    .line 527
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 528
    .line 529
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 530
    .line 531
    .line 532
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 533
    .line 534
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .line 546
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 547
    .line 548
    invoke-direct {v11, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 549
    .line 550
    .line 551
    const v4, 0x800005

    .line 552
    .line 553
    .line 554
    iput v4, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 555
    .line 556
    invoke-virtual {v3, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    .line 558
    .line 559
    new-instance v3, Landroid/widget/FrameLayout;

    .line 560
    .line 561
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 562
    .line 563
    .line 564
    const/4 v11, 0x0

    .line 565
    invoke-virtual {v3, v11, v0, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 566
    .line 567
    .line 568
    const/4 v0, -0x1

    .line 569
    const/4 v11, -0x2

    .line 570
    invoke-virtual {v15, v3, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v30, v8

    .line 574
    .line 575
    const/high16 v0, 0x41800000    # 16.0f

    .line 576
    .line 577
    const/4 v4, 0x0

    .line 578
    const/4 v11, 0x1

    .line 579
    invoke-static {v2, v4, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 580
    .line 581
    .line 582
    move-result-object v8

    .line 583
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 584
    .line 585
    const/4 v4, -0x2

    .line 586
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 587
    .line 588
    .line 589
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 590
    .line 591
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    .line 596
    .line 597
    move-object/from16 v31, v8

    .line 598
    .line 599
    const/high16 v0, 0x41800000    # 16.0f

    .line 600
    .line 601
    const/4 v4, 0x0

    .line 602
    invoke-static {v2, v4, v11, v11, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 607
    .line 608
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 609
    .line 610
    .line 611
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 612
    .line 613
    const/4 v11, -0x2

    .line 614
    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 615
    .line 616
    .line 617
    const v4, 0x800005

    .line 618
    .line 619
    .line 620
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 621
    .line 622
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 623
    .line 624
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    .line 629
    .line 630
    new-instance v0, Landroid/widget/FrameLayout;

    .line 631
    .line 632
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 633
    .line 634
    .line 635
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 636
    .line 637
    const/4 v4, -0x1

    .line 638
    invoke-virtual {v15, v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 639
    .line 640
    .line 641
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 642
    .line 643
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 647
    .line 648
    .line 649
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 650
    .line 651
    invoke-virtual {v0, v3, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 652
    .line 653
    .line 654
    new-instance v11, Landroid/widget/SeekBar;

    .line 655
    .line 656
    invoke-direct {v11, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 657
    .line 658
    .line 659
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 660
    .line 661
    move-object/from16 v32, v3

    .line 662
    .line 663
    const/4 v3, -0x2

    .line 664
    invoke-direct {v15, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 665
    .line 666
    .line 667
    const v3, 0x800013

    .line 668
    .line 669
    .line 670
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 671
    .line 672
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 673
    .line 674
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 675
    .line 676
    .line 677
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 678
    .line 679
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    .line 684
    .line 685
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    .line 691
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 692
    .line 693
    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 694
    .line 695
    .line 696
    const v12, 0x800005

    .line 697
    .line 698
    .line 699
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 700
    .line 701
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    .line 703
    .line 704
    new-instance v0, Lcom/mycompany/app/view/MyLineLinear;

    .line 705
    .line 706
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 707
    .line 708
    .line 709
    const/4 v12, 0x0

    .line 710
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 714
    .line 715
    .line 716
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 717
    .line 718
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 719
    .line 720
    .line 721
    const/4 v4, 0x1

    .line 722
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 723
    .line 724
    .line 725
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 726
    .line 727
    const/4 v12, -0x1

    .line 728
    invoke-static {v5, v0, v12, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 729
    .line 730
    .line 731
    move-result-object v15

    .line 732
    const/16 v12, 0x11

    .line 733
    .line 734
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 735
    .line 736
    .line 737
    const/high16 v12, 0x41800000    # 16.0f

    .line 738
    .line 739
    invoke-virtual {v15, v4, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 740
    .line 741
    .line 742
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 743
    .line 744
    move-object/from16 v16, v3

    .line 745
    .line 746
    const/4 v3, -0x1

    .line 747
    const/4 v12, 0x0

    .line 748
    invoke-static {v15, v4, v2, v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    const/high16 v3, 0x3f800000    # 1.0f

    .line 753
    .line 754
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 755
    .line 756
    const/4 v3, 0x0

    .line 757
    invoke-static {v0, v15, v4, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    const/16 v3, 0x11

    .line 762
    .line 763
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 764
    .line 765
    .line 766
    const/high16 v3, 0x41800000    # 16.0f

    .line 767
    .line 768
    const/4 v4, 0x1

    .line 769
    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 770
    .line 771
    .line 772
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 773
    .line 774
    const/4 v4, -0x1

    .line 775
    invoke-static {v2, v3, v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    const/high16 v4, 0x3f800000    # 1.0f

    .line 780
    .line 781
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 782
    .line 783
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    .line 785
    .line 786
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 787
    .line 788
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->h0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 789
    .line 790
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 791
    .line 792
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 793
    .line 794
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 795
    .line 796
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 797
    .line 798
    move-object/from16 v0, v29

    .line 799
    .line 800
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 801
    .line 802
    move-object/from16 v0, v21

    .line 803
    .line 804
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 805
    .line 806
    move-object/from16 v0, v19

    .line 807
    .line 808
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 809
    .line 810
    move-object/from16 v0, v25

    .line 811
    .line 812
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 813
    .line 814
    move-object/from16 v0, v20

    .line 815
    .line 816
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->x0:Landroid/view/View;

    .line 817
    .line 818
    move-object/from16 v0, v22

    .line 819
    .line 820
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 821
    .line 822
    move-object/from16 v0, v23

    .line 823
    .line 824
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 825
    .line 826
    move-object/from16 v0, v24

    .line 827
    .line 828
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 829
    .line 830
    move-object/from16 v0, v17

    .line 831
    .line 832
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 833
    .line 834
    move-object/from16 v0, v18

    .line 835
    .line 836
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 837
    .line 838
    move-object/from16 v0, v26

    .line 839
    .line 840
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 841
    .line 842
    move-object/from16 v0, v28

    .line 843
    .line 844
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 845
    .line 846
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 847
    .line 848
    move-object/from16 v0, v27

    .line 849
    .line 850
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 851
    .line 852
    move-object/from16 v0, v30

    .line 853
    .line 854
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 855
    .line 856
    move-object/from16 v0, v31

    .line 857
    .line 858
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 859
    .line 860
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 861
    .line 862
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 863
    .line 864
    move-object/from16 v0, v32

    .line 865
    .line 866
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 867
    .line 868
    move-object/from16 v0, v16

    .line 869
    .line 870
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 871
    .line 872
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 873
    .line 874
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 875
    .line 876
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 877
    .line 878
    if-nez v0, :cond_1

    .line 879
    .line 880
    :goto_0
    return-void

    .line 881
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$2;

    .line 882
    .line 883
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSetTabDetail$2;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    .line 888
    .line 889
    return-void
.end method
