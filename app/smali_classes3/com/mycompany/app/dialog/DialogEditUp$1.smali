.class Lcom/mycompany/app/dialog/DialogEditUp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$1;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp$1;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

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
    sget v4, Lnet/kaki87/soul2/testing/R$id;->item_value_view:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v7, Lcom/mycompany/app/view/MyMoveFrame;

    .line 21
    .line 22
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyMoveFrame;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/4 v8, -0x1

    .line 26
    const/4 v9, -0x2

    .line 27
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v10, Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v10, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 41
    .line 42
    .line 43
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 51
    .line 52
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/16 v13, 0x11

    .line 56
    .line 57
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    new-instance v12, Landroidx/core/widget/NestedScrollView;

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    invoke-direct {v12, v2, v14}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    .line 67
    .line 68
    const/4 v15, 0x2

    .line 69
    invoke-virtual {v12, v15}, Landroid/view/View;->setOverScrollMode(I)V

    .line 70
    .line 71
    .line 72
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    invoke-direct {v15, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    const/high16 v14, 0x3f800000    # 1.0f

    .line 79
    .line 80
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    .line 82
    invoke-virtual {v6, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v15, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 91
    .line 92
    invoke-virtual {v15, v13, v13, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v15, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 99
    .line 100
    .line 101
    new-instance v12, Lcom/mycompany/app/view/MyLineRelative;

    .line 102
    .line 103
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 107
    .line 108
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    .line 110
    .line 111
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 112
    .line 113
    invoke-virtual {v12, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 114
    .line 115
    .line 116
    const/16 v14, 0x10

    .line 117
    .line 118
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 119
    .line 120
    .line 121
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 122
    .line 123
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v15, v12, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    new-instance v14, Landroid/view/View;

    .line 130
    .line 131
    invoke-direct {v14, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    invoke-direct {v13, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    const/16 v8, 0x15

    .line 140
    .line 141
    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .line 146
    .line 147
    const/high16 v8, 0x41800000    # 16.0f

    .line 148
    .line 149
    const/4 v13, 0x0

    .line 150
    invoke-static {v2, v13, v3, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/4 v8, -0x1

    .line 155
    invoke-virtual {v12, v0, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 156
    .line 157
    .line 158
    const/high16 v8, 0x41600000    # 14.0f

    .line 159
    .line 160
    move-object/from16 v17, v0

    .line 161
    .line 162
    invoke-static {v2, v13, v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v5, 0x3

    .line 167
    const/4 v8, -0x1

    .line 168
    invoke-static {v8, v9, v5, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 173
    .line 174
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    .line 176
    invoke-virtual {v12, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    invoke-direct {v3, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    .line 183
    .line 184
    const/high16 v5, 0x41600000    # 14.0f

    .line 185
    .line 186
    const/4 v13, 0x1

    .line 187
    invoke-static {v3, v13, v5, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const/4 v13, 0x3

    .line 192
    invoke-virtual {v5, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    .line 194
    .line 195
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 196
    .line 197
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    .line 199
    invoke-virtual {v12, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    new-instance v4, Landroid/widget/FrameLayout;

    .line 203
    .line 204
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    invoke-virtual {v4, v13, v5, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 214
    .line 215
    .line 216
    move-object/from16 v18, v3

    .line 217
    .line 218
    const/high16 v5, 0x41800000    # 16.0f

    .line 219
    .line 220
    const/4 v8, 0x1

    .line 221
    const/4 v13, 0x0

    .line 222
    invoke-static {v2, v13, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    sget v5, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 227
    .line 228
    invoke-static {v3, v5, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 233
    .line 234
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    .line 239
    .line 240
    const/high16 v5, 0x41800000    # 16.0f

    .line 241
    .line 242
    invoke-static {v2, v13, v8, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 247
    .line 248
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 249
    .line 250
    .line 251
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .line 253
    const/4 v8, -0x2

    .line 254
    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 255
    .line 256
    .line 257
    const v8, 0x800005

    .line 258
    .line 259
    .line 260
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    .line 262
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 263
    .line 264
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    new-instance v4, Landroid/widget/FrameLayout;

    .line 271
    .line 272
    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 276
    .line 277
    const/4 v13, -0x1

    .line 278
    invoke-virtual {v15, v4, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 279
    .line 280
    .line 281
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 282
    .line 283
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 287
    .line 288
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    .line 290
    .line 291
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_white_24:I

    .line 292
    .line 293
    invoke-virtual {v5, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 294
    .line 295
    .line 296
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 297
    .line 298
    invoke-virtual {v4, v5, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 299
    .line 300
    .line 301
    new-instance v15, Landroid/widget/SeekBar;

    .line 302
    .line 303
    invoke-direct {v15, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 304
    .line 305
    .line 306
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 307
    .line 308
    move-object/from16 v20, v5

    .line 309
    .line 310
    move-object/from16 v19, v9

    .line 311
    .line 312
    const/4 v5, -0x2

    .line 313
    const/4 v9, -0x1

    .line 314
    invoke-direct {v8, v9, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 315
    .line 316
    .line 317
    const v5, 0x800013

    .line 318
    .line 319
    .line 320
    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 321
    .line 322
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 323
    .line 324
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 325
    .line 326
    .line 327
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 328
    .line 329
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v15, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_white_24:I

    .line 340
    .line 341
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 342
    .line 343
    .line 344
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 345
    .line 346
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 347
    .line 348
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 349
    .line 350
    .line 351
    const v9, 0x800005

    .line 352
    .line 353
    .line 354
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 355
    .line 356
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    new-instance v4, Lcom/mycompany/app/view/MyLineLinear;

    .line 360
    .line 361
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    const/4 v13, 0x0

    .line 365
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    .line 370
    .line 371
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 372
    .line 373
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 374
    .line 375
    .line 376
    const/4 v8, 0x1

    .line 377
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 378
    .line 379
    .line 380
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 381
    .line 382
    const/4 v13, -0x1

    .line 383
    invoke-static {v6, v4, v13, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    const/16 v13, 0x11

    .line 388
    .line 389
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    .line 391
    .line 392
    const/high16 v13, 0x41800000    # 16.0f

    .line 393
    .line 394
    invoke-virtual {v9, v8, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 395
    .line 396
    .line 397
    sget v8, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 398
    .line 399
    move-object/from16 v16, v5

    .line 400
    .line 401
    const/4 v5, -0x1

    .line 402
    const/4 v13, 0x0

    .line 403
    invoke-static {v9, v8, v2, v13, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    const/high16 v5, 0x3f800000    # 1.0f

    .line 408
    .line 409
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 410
    .line 411
    const/4 v5, 0x0

    .line 412
    invoke-static {v4, v9, v8, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    const/16 v5, 0x11

    .line 417
    .line 418
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 419
    .line 420
    .line 421
    const/high16 v5, 0x41800000    # 16.0f

    .line 422
    .line 423
    const/4 v8, 0x1

    .line 424
    invoke-virtual {v2, v8, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 425
    .line 426
    .line 427
    sget v5, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 428
    .line 429
    const/4 v8, -0x1

    .line 430
    invoke-static {v2, v5, v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    const/high16 v8, 0x3f800000    # 1.0f

    .line 435
    .line 436
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 437
    .line 438
    invoke-virtual {v4, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    .line 440
    .line 441
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditUp;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 442
    .line 443
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 444
    .line 445
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 446
    .line 447
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditUp;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 448
    .line 449
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 450
    .line 451
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogEditUp;->i0:Landroid/view/View;

    .line 452
    .line 453
    move-object/from16 v4, v17

    .line 454
    .line 455
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditUp;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditUp;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 458
    .line 459
    move-object/from16 v0, v18

    .line 460
    .line 461
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditUp;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 462
    .line 463
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogEditUp;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 464
    .line 465
    move-object/from16 v0, v19

    .line 466
    .line 467
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 468
    .line 469
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 470
    .line 471
    move-object/from16 v0, v20

    .line 472
    .line 473
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 474
    .line 475
    move-object/from16 v0, v16

    .line 476
    .line 477
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 478
    .line 479
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 480
    .line 481
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 482
    .line 483
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 484
    .line 485
    if-nez v0, :cond_1

    .line 486
    .line 487
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$2;

    .line 489
    .line 490
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogEditUp$2;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    .line 495
    .line 496
    return-void
.end method
