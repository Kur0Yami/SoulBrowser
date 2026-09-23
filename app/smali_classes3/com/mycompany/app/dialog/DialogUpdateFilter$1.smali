.class Lcom/mycompany/app/dialog/DialogUpdateFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUpdateFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUpdateFilter$1;->c:Lcom/mycompany/app/dialog/DialogUpdateFilter;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUpdateFilter$1;->c:Lcom/mycompany/app/dialog/DialogUpdateFilter;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->a0:Landroid/content/Context;

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
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_info_view:I

    .line 14
    .line 15
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_count_view:I

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-direct {v8, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 28
    .line 29
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    const/4 v9, -0x1

    .line 33
    const/4 v10, -0x2

    .line 34
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v11, Lcom/mycompany/app/view/MyLineRelative;

    .line 38
    .line 39
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v11, v3}, Landroid/view/View;->setId(I)V

    .line 43
    .line 44
    .line 45
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    invoke-virtual {v11, v13, v13, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    .line 50
    .line 51
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 52
    .line 53
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 54
    .line 55
    .line 56
    const/16 v12, 0x8

    .line 57
    .line 58
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v11, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    const/4 v15, 0x0

    .line 67
    invoke-direct {v14, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 71
    .line 72
    .line 73
    const/4 v13, 0x3

    .line 74
    invoke-virtual {v14, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 75
    .line 76
    .line 77
    const/high16 v12, 0x41800000    # 16.0f

    .line 78
    .line 79
    invoke-virtual {v14, v6, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 80
    .line 81
    .line 82
    const/4 v13, 0x4

    .line 83
    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .line 88
    invoke-direct {v13, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    const/16 v9, 0x15

    .line 92
    .line 93
    invoke-virtual {v13, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v15, v6, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    const/16 v9, 0x10

    .line 104
    .line 105
    const/4 v6, -0x1

    .line 106
    invoke-static {v6, v10, v9, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    invoke-direct {v5, v2, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    .line 122
    .line 123
    const/4 v6, 0x3

    .line 124
    invoke-virtual {v5, v6}, Landroid/view/View;->setTextDirection(I)V

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    invoke-virtual {v5, v6, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 129
    .line 130
    .line 131
    const/16 v6, 0x8

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .line 138
    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    .line 143
    .line 144
    const/16 v12, 0x15

    .line 145
    .line 146
    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    .line 148
    .line 149
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 150
    .line 151
    iput v12, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 152
    .line 153
    invoke-virtual {v8, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    new-instance v9, Landroid/widget/RelativeLayout;

    .line 157
    .line 158
    invoke-direct {v9, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    const/4 v6, 0x3

    .line 165
    const/4 v12, -0x1

    .line 166
    invoke-static {v12, v10, v6, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 171
    .line 172
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 173
    .line 174
    invoke-virtual {v8, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    new-instance v3, Landroid/widget/FrameLayout;

    .line 178
    .line 179
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v3, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 186
    .line 187
    .line 188
    const/high16 v6, 0x41800000    # 16.0f

    .line 189
    .line 190
    const/4 v12, 0x1

    .line 191
    invoke-static {v2, v15, v12, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    .line 194
    move-result-object v10

    .line 195
    sget v6, Lnet/kaki87/soul2/testing/R$string;->size:I

    .line 196
    .line 197
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(I)V

    .line 198
    .line 199
    .line 200
    const/4 v6, -0x2

    .line 201
    invoke-virtual {v3, v10, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 202
    .line 203
    .line 204
    const/high16 v6, 0x41800000    # 16.0f

    .line 205
    .line 206
    invoke-static {v2, v15, v12, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .line 212
    const/4 v12, -0x2

    .line 213
    invoke-direct {v6, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 214
    .line 215
    .line 216
    const v12, 0x800005

    .line 217
    .line 218
    .line 219
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    .line 221
    invoke-virtual {v3, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    const/high16 v6, 0x41400000    # 12.0f

    .line 225
    .line 226
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    float-to-int v6, v6

    .line 231
    new-instance v12, Lcom/mycompany/app/view/MyProgressBar;

    .line 232
    .line 233
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v17, v0

    .line 237
    .line 238
    const/4 v0, -0x1

    .line 239
    const/4 v15, 0x3

    .line 240
    invoke-static {v0, v6, v15, v4}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 245
    .line 246
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 247
    .line 248
    invoke-virtual {v9, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    .line 250
    .line 251
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    invoke-direct {v0, v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    .line 256
    .line 257
    const/4 v6, 0x1

    .line 258
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    .line 260
    .line 261
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 262
    .line 263
    int-to-float v4, v4

    .line 264
    const/high16 v15, 0x3f800000    # 1.0f

    .line 265
    .line 266
    invoke-virtual {v0, v4, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 267
    .line 268
    .line 269
    const/high16 v4, 0x41800000    # 16.0f

    .line 270
    .line 271
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 272
    .line 273
    .line 274
    const/16 v6, 0x8

    .line 275
    .line 276
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 280
    .line 281
    const/4 v15, -0x2

    .line 282
    invoke-direct {v4, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    .line 284
    .line 285
    const/16 v15, 0xd

    .line 286
    .line 287
    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .line 292
    .line 293
    new-instance v4, Lcom/mycompany/app/view/MyCoverView;

    .line 294
    .line 295
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 302
    .line 303
    move-object/from16 v18, v0

    .line 304
    .line 305
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 306
    .line 307
    invoke-direct {v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lcom/mycompany/app/view/MyLineLinear;

    .line 317
    .line 318
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    const/4 v6, 0x0

    .line 322
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 326
    .line 327
    .line 328
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 329
    .line 330
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 331
    .line 332
    .line 333
    const/4 v6, 0x1

    .line 334
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 335
    .line 336
    .line 337
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 338
    .line 339
    const/4 v15, -0x1

    .line 340
    invoke-static {v7, v0, v15, v8, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 341
    .line 342
    .line 343
    move-result-object v8

    .line 344
    const/16 v15, 0x11

    .line 345
    .line 346
    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 347
    .line 348
    .line 349
    const/high16 v15, 0x41800000    # 16.0f

    .line 350
    .line 351
    invoke-virtual {v8, v6, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 352
    .line 353
    .line 354
    sget v6, Lnet/kaki87/soul2/testing/R$string;->skip:I

    .line 355
    .line 356
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v8, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    const/16 v6, 0x8

    .line 363
    .line 364
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .line 369
    move-object/from16 v16, v4

    .line 370
    .line 371
    const/4 v4, -0x1

    .line 372
    const/4 v15, 0x0

    .line 373
    invoke-direct {v6, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 374
    .line 375
    .line 376
    const/high16 v4, 0x3f800000    # 1.0f

    .line 377
    .line 378
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 379
    .line 380
    const/4 v4, 0x0

    .line 381
    invoke-static {v0, v8, v6, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    const/16 v4, 0x11

    .line 386
    .line 387
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 388
    .line 389
    .line 390
    const/4 v4, 0x1

    .line 391
    const/high16 v6, 0x41800000    # 16.0f

    .line 392
    .line 393
    invoke-virtual {v2, v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 394
    .line 395
    .line 396
    sget v4, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 397
    .line 398
    const/4 v6, -0x1

    .line 399
    invoke-static {v2, v4, v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    const/high16 v6, 0x3f800000    # 1.0f

    .line 404
    .line 405
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 406
    .line 407
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 411
    .line 412
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->e0:Lcom/mycompany/app/view/MyLineRelative;

    .line 413
    .line 414
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    .line 416
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 417
    .line 418
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 419
    .line 420
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->i0:Landroid/widget/RelativeLayout;

    .line 421
    .line 422
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->j0:Landroid/widget/FrameLayout;

    .line 423
    .line 424
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 425
    .line 426
    move-object/from16 v0, v17

    .line 427
    .line 428
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 429
    .line 430
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 431
    .line 432
    move-object/from16 v0, v18

    .line 433
    .line 434
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 435
    .line 436
    move-object/from16 v0, v16

    .line 437
    .line 438
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->q0:Lcom/mycompany/app/view/MyCoverView;

    .line 439
    .line 440
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 441
    .line 442
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogUpdateFilter;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 443
    .line 444
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 445
    .line 446
    if-nez v0, :cond_1

    .line 447
    .line 448
    :goto_0
    return-void

    .line 449
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogUpdateFilter$2;

    .line 450
    .line 451
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogUpdateFilter$2;-><init>(Lcom/mycompany/app/dialog/DialogUpdateFilter;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    .line 456
    .line 457
    return-void
.end method
