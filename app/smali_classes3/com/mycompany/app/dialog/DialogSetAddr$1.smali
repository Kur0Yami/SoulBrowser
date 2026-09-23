.class Lcom/mycompany/app/dialog/DialogSetAddr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetAddr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr$1;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr$1;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_info_view:I

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
    new-instance v6, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/4 v7, -0x1

    .line 24
    const/4 v8, -0x2

    .line 25
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    const/high16 v9, 0x42a00000    # 80.0f

    .line 29
    .line 30
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    float-to-int v9, v9

    .line 35
    new-instance v10, Lcom/mycompany/app/view/MyAddrView;

    .line 36
    .line 37
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyAddrView;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v10, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 41
    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    invoke-static {v2, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual {v6, v12, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-direct {v9, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    const/high16 v13, 0x42f00000    # 120.0f

    .line 57
    .line 58
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    float-to-int v13, v13

    .line 63
    invoke-virtual {v9, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 64
    .line 65
    .line 66
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v13, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    const/high16 v14, 0x42700000    # 60.0f

    .line 72
    .line 73
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    float-to-int v14, v14

    .line 78
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 79
    .line 80
    invoke-virtual {v6, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    new-instance v6, Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    const/high16 v13, 0x42c80000    # 100.0f

    .line 89
    .line 90
    invoke-static {v2, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    float-to-int v13, v13

    .line 95
    invoke-virtual {v6, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 96
    .line 97
    .line 98
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .line 100
    invoke-direct {v13, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    .line 102
    .line 103
    const/high16 v14, 0x41a00000    # 20.0f

    .line 104
    .line 105
    invoke-static {v2, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    float-to-int v14, v14

    .line 110
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    .line 112
    invoke-virtual {v9, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    const/4 v14, 0x0

    .line 118
    invoke-direct {v13, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    .line 120
    .line 121
    const/high16 v15, 0x41600000    # 14.0f

    .line 122
    .line 123
    invoke-virtual {v13, v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 124
    .line 125
    .line 126
    sget v15, Lnet/kaki87/soul2/testing/R$string;->not_used:I

    .line 127
    .line 128
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    const/16 v15, 0x8

    .line 132
    .line 133
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    invoke-direct {v14, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 142
    .line 143
    invoke-virtual {v14, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .line 148
    .line 149
    new-instance v8, Landroid/widget/LinearLayout;

    .line 150
    .line 151
    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    .line 165
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 166
    .line 167
    invoke-direct {v14, v7, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    const v15, 0x800013

    .line 171
    .line 172
    .line 173
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    .line 175
    invoke-virtual {v6, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    const/high16 v6, 0x41c00000    # 24.0f

    .line 179
    .line 180
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    float-to-int v6, v6

    .line 185
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 191
    .line 192
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    .line 194
    .line 195
    int-to-float v6, v6

    .line 196
    invoke-virtual {v14, v6, v4}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v14, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 200
    .line 201
    .line 202
    const/4 v4, 0x4

    .line 203
    invoke-virtual {v14, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 207
    .line 208
    invoke-direct {v4, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    .line 210
    .line 211
    const/high16 v7, 0x3f800000    # 1.0f

    .line 212
    .line 213
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 214
    .line 215
    invoke-virtual {v8, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    .line 217
    .line 218
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 219
    .line 220
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    .line 225
    .line 226
    const/4 v7, 0x1

    .line 227
    invoke-virtual {v4, v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 231
    .line 232
    .line 233
    const/4 v7, 0x4

    .line 234
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 238
    .line 239
    const/4 v0, -0x1

    .line 240
    invoke-direct {v7, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .line 242
    .line 243
    const/high16 v0, 0x3f800000    # 1.0f

    .line 244
    .line 245
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 246
    .line 247
    invoke-virtual {v8, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    new-instance v7, Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    .line 257
    .line 258
    const/4 v15, 0x1

    .line 259
    invoke-virtual {v7, v6, v15}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreRadius(F)V

    .line 263
    .line 264
    .line 265
    const/4 v6, 0x4

    .line 266
    invoke-virtual {v7, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .line 271
    const/4 v6, -0x1

    .line 272
    invoke-direct {v15, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .line 274
    .line 275
    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 276
    .line 277
    invoke-virtual {v8, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 281
    .line 282
    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 286
    .line 287
    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 288
    .line 289
    .line 290
    const/4 v15, 0x4

    .line 291
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    .line 296
    const/4 v11, -0x2

    .line 297
    invoke-direct {v15, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 298
    .line 299
    .line 300
    const v6, 0x800013

    .line 301
    .line 302
    .line 303
    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 304
    .line 305
    invoke-virtual {v9, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    const/4 v9, 0x0

    .line 311
    invoke-direct {v6, v2, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    .line 315
    .line 316
    .line 317
    const/high16 v15, 0x41800000    # 16.0f

    .line 318
    .line 319
    const/4 v9, 0x1

    .line 320
    invoke-virtual {v6, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 321
    .line 322
    .line 323
    sget v9, Lnet/kaki87/soul2/testing/R$string;->quick_guide_1:I

    .line 324
    .line 325
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v6, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 329
    .line 330
    .line 331
    move-object/from16 v16, v4

    .line 332
    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v11, 0x1

    .line 335
    invoke-static {v2, v9, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    sget v9, Lnet/kaki87/soul2/testing/R$string;->addr_icon_info:I

    .line 340
    .line 341
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 342
    .line 343
    .line 344
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .line 346
    const/4 v11, -0x2

    .line 347
    invoke-direct {v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    .line 349
    .line 350
    const/4 v11, 0x3

    .line 351
    invoke-virtual {v9, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 352
    .line 353
    .line 354
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 355
    .line 356
    iput v3, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 357
    .line 358
    invoke-virtual {v0, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    new-instance v3, Lcom/mycompany/app/view/MyLineLinear;

    .line 362
    .line 363
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    const/4 v9, 0x0

    .line 367
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    .line 372
    .line 373
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 374
    .line 375
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 376
    .line 377
    .line 378
    const/4 v11, 0x1

    .line 379
    invoke-virtual {v3, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 380
    .line 381
    .line 382
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 383
    .line 384
    const/4 v11, -0x1

    .line 385
    invoke-static {v5, v3, v11, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 386
    .line 387
    .line 388
    move-result-object v9

    .line 389
    const/16 v11, 0x11

    .line 390
    .line 391
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 392
    .line 393
    .line 394
    const/4 v11, 0x1

    .line 395
    invoke-virtual {v9, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 396
    .line 397
    .line 398
    sget v11, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 399
    .line 400
    move-object/from16 v19, v7

    .line 401
    .line 402
    const/4 v7, -0x1

    .line 403
    const/4 v15, 0x0

    .line 404
    invoke-static {v9, v11, v2, v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    const/high16 v7, 0x3f800000    # 1.0f

    .line 409
    .line 410
    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 411
    .line 412
    const/4 v7, 0x0

    .line 413
    invoke-static {v3, v9, v11, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    const/16 v7, 0x11

    .line 418
    .line 419
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    .line 421
    .line 422
    const/high16 v7, 0x41800000    # 16.0f

    .line 423
    .line 424
    const/4 v11, 0x1

    .line 425
    invoke-virtual {v2, v11, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 426
    .line 427
    .line 428
    sget v7, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 429
    .line 430
    const/4 v11, -0x1

    .line 431
    invoke-static {v2, v7, v15, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    const/high16 v11, 0x3f800000    # 1.0f

    .line 436
    .line 437
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 438
    .line 439
    invoke-virtual {v3, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    .line 441
    .line 442
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 443
    .line 444
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->d0:Lcom/mycompany/app/view/MyAddrView;

    .line 445
    .line 446
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 447
    .line 448
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 449
    .line 450
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->g0:Landroid/widget/LinearLayout;

    .line 451
    .line 452
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->i0:Landroid/widget/RelativeLayout;

    .line 453
    .line 454
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 455
    .line 456
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 457
    .line 458
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 459
    .line 460
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 461
    .line 462
    const/4 v0, 0x3

    .line 463
    new-array v0, v0, [Lcom/mycompany/app/view/MyButtonImage;

    .line 464
    .line 465
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetAddr;->h0:[Lcom/mycompany/app/view/MyButtonImage;

    .line 466
    .line 467
    const/16 v18, 0x0

    .line 468
    .line 469
    aput-object v14, v0, v18

    .line 470
    .line 471
    const/16 v17, 0x1

    .line 472
    .line 473
    aput-object v16, v0, v17

    .line 474
    .line 475
    const/4 v2, 0x2

    .line 476
    aput-object v19, v0, v2

    .line 477
    .line 478
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 479
    .line 480
    if-nez v0, :cond_1

    .line 481
    .line 482
    :goto_0
    return-void

    .line 483
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$2;

    .line 484
    .line 485
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSetAddr$2;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    .line 490
    .line 491
    return-void
.end method
