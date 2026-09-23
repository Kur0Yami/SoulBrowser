.class Lcom/mycompany/app/dialog/DialogEditorPen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorPen;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorPen$1;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorPen$1;->c:Lcom/mycompany/app/dialog/DialogEditorPen;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->a0:Landroid/content/Context;

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
    const/high16 v5, 0x42900000    # 72.0f

    .line 17
    .line 18
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    float-to-int v5, v5

    .line 23
    new-instance v6, Lcom/mycompany/app/view/MyLineFrame;

    .line 24
    .line 25
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 31
    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    invoke-virtual {v4, v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v8, Lcom/mycompany/app/view/MyCircleView;

    .line 38
    .line 39
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v8, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lcom/mycompany/app/view/MyCircleView;

    .line 46
    .line 47
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    invoke-direct {v10, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    const/high16 v5, 0x42880000    # 68.0f

    .line 56
    .line 57
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    float-to-int v5, v5

    .line 62
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    .line 64
    .line 65
    const/high16 v5, 0x41400000    # 12.0f

    .line 66
    .line 67
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    float-to-int v5, v5

    .line 72
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v6, 0x2

    .line 80
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    invoke-direct {v11, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    .line 90
    const/high16 v13, 0x3f800000    # 1.0f

    .line 91
    .line 92
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    .line 94
    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    new-instance v11, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    invoke-direct {v11, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 103
    .line 104
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 105
    .line 106
    invoke-virtual {v11, v12, v14, v12, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    .line 111
    .line 112
    const/4 v14, -0x2

    .line 113
    invoke-virtual {v10, v11, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Landroid/widget/FrameLayout;

    .line 117
    .line 118
    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v10, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    new-instance v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-direct {v15, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    .line 128
    .line 129
    move/from16 v16, v6

    .line 130
    .line 131
    const/high16 v6, 0x41800000    # 16.0f

    .line 132
    .line 133
    invoke-virtual {v15, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    sget v13, Lnet/kaki87/soul2/testing/R$string;->color_size:I

    .line 140
    .line 141
    invoke-static {v15, v13, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 146
    .line 147
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v5, v3, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 161
    .line 162
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 163
    .line 164
    .line 165
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    .line 167
    invoke-direct {v13, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    .line 170
    const v15, 0x800005

    .line 171
    .line 172
    .line 173
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    .line 175
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 176
    .line 177
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 184
    .line 185
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 189
    .line 190
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 191
    .line 192
    .line 193
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 194
    .line 195
    invoke-virtual {v11, v3, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 196
    .line 197
    .line 198
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 199
    .line 200
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 201
    .line 202
    .line 203
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 204
    .line 205
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    .line 207
    .line 208
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_white_24:I

    .line 209
    .line 210
    invoke-virtual {v10, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 211
    .line 212
    .line 213
    const v6, -0x5e8a8a8b

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 217
    .line 218
    .line 219
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 220
    .line 221
    invoke-virtual {v3, v10, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 222
    .line 223
    .line 224
    new-instance v5, Landroid/widget/SeekBar;

    .line 225
    .line 226
    invoke-direct {v5, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    .line 230
    .line 231
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    invoke-virtual {v5, v15}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    .line 237
    .line 238
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    .line 239
    .line 240
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    invoke-virtual {v5, v15}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .line 246
    .line 247
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    .line 249
    invoke-direct {v15, v7, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 250
    .line 251
    .line 252
    const v7, 0x800013

    .line 253
    .line 254
    .line 255
    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 256
    .line 257
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 258
    .line 259
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 260
    .line 261
    .line 262
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 263
    .line 264
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_white_24:I

    .line 275
    .line 276
    invoke-virtual {v7, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 280
    .line 281
    .line 282
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 283
    .line 284
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    invoke-direct {v15, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 287
    .line 288
    .line 289
    const v6, 0x800005

    .line 290
    .line 291
    .line 292
    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    .line 294
    invoke-virtual {v3, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Landroid/widget/FrameLayout;

    .line 298
    .line 299
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 303
    .line 304
    const/4 v15, -0x1

    .line 305
    invoke-direct {v6, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 306
    .line 307
    .line 308
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 309
    .line 310
    iput v14, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 311
    .line 312
    invoke-virtual {v11, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    const/4 v14, 0x0

    .line 318
    invoke-direct {v6, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 319
    .line 320
    .line 321
    const/4 v0, 0x1

    .line 322
    const/high16 v14, 0x41800000    # 16.0f

    .line 323
    .line 324
    invoke-virtual {v6, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    .line 329
    .line 330
    sget v15, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 331
    .line 332
    const/4 v0, -0x2

    .line 333
    invoke-static {v6, v15, v0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 334
    .line 335
    .line 336
    move-result-object v15

    .line 337
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 338
    .line 339
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    const/4 v0, 0x0

    .line 346
    const/4 v6, 0x1

    .line 347
    invoke-static {v2, v0, v6, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const/4 v15, -0x1

    .line 352
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    .line 354
    .line 355
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 356
    .line 357
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 358
    .line 359
    .line 360
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 361
    .line 362
    const/4 v14, -0x2

    .line 363
    invoke-direct {v6, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 364
    .line 365
    .line 366
    const v14, 0x800005

    .line 367
    .line 368
    .line 369
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 370
    .line 371
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 372
    .line 373
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 380
    .line 381
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 382
    .line 383
    .line 384
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 385
    .line 386
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 387
    .line 388
    .line 389
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 390
    .line 391
    const/4 v15, -0x1

    .line 392
    invoke-virtual {v11, v3, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 393
    .line 394
    .line 395
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 396
    .line 397
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 401
    .line 402
    .line 403
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_white_24:I

    .line 404
    .line 405
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 406
    .line 407
    .line 408
    const v14, -0x5e8a8a8b

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 412
    .line 413
    .line 414
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 415
    .line 416
    invoke-virtual {v3, v6, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 417
    .line 418
    .line 419
    new-instance v14, Landroid/widget/SeekBar;

    .line 420
    .line 421
    invoke-direct {v14, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 422
    .line 423
    .line 424
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    .line 425
    .line 426
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    invoke-virtual {v14, v15}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    .line 432
    .line 433
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    .line 434
    .line 435
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 436
    .line 437
    .line 438
    move-result-object v15

    .line 439
    invoke-virtual {v14, v15}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 440
    .line 441
    .line 442
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .line 444
    move-object/from16 v24, v0

    .line 445
    .line 446
    move-object/from16 v20, v6

    .line 447
    .line 448
    const/4 v0, -0x1

    .line 449
    const/4 v6, -0x2

    .line 450
    invoke-direct {v15, v0, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 451
    .line 452
    .line 453
    const v0, 0x800013

    .line 454
    .line 455
    .line 456
    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 457
    .line 458
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 459
    .line 460
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 461
    .line 462
    .line 463
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 464
    .line 465
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_white_24:I

    .line 476
    .line 477
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 478
    .line 479
    .line 480
    const v6, -0x5e8a8a8b

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 484
    .line 485
    .line 486
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 487
    .line 488
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 489
    .line 490
    invoke-direct {v6, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 491
    .line 492
    .line 493
    const v13, 0x800005

    .line 494
    .line 495
    .line 496
    iput v13, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 497
    .line 498
    invoke-virtual {v3, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    .line 500
    .line 501
    new-instance v3, Landroid/widget/LinearLayout;

    .line 502
    .line 503
    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 504
    .line 505
    .line 506
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 507
    .line 508
    const/4 v13, 0x0

    .line 509
    invoke-virtual {v3, v6, v13, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 516
    .line 517
    .line 518
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 519
    .line 520
    const/4 v13, -0x2

    .line 521
    const/4 v15, -0x1

    .line 522
    invoke-direct {v6, v15, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    .line 524
    .line 525
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 526
    .line 527
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 528
    .line 529
    invoke-virtual {v11, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .line 531
    .line 532
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 533
    .line 534
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 535
    .line 536
    .line 537
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 538
    .line 539
    int-to-float v13, v13

    .line 540
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 541
    .line 542
    .line 543
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 544
    .line 545
    invoke-static {v3, v6, v13, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v13

    .line 549
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 550
    .line 551
    move-object/from16 v21, v6

    .line 552
    .line 553
    const/4 v6, 0x0

    .line 554
    invoke-direct {v15, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    .line 556
    .line 557
    const/high16 v6, 0x3f800000    # 1.0f

    .line 558
    .line 559
    iput v6, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 560
    .line 561
    invoke-static {v3, v13, v15, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 562
    .line 563
    .line 564
    move-result-object v13

    .line 565
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 566
    .line 567
    int-to-float v15, v15

    .line 568
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 569
    .line 570
    .line 571
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 572
    .line 573
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v15

    .line 577
    move-object/from16 v17, v13

    .line 578
    .line 579
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 580
    .line 581
    move-object/from16 v22, v0

    .line 582
    .line 583
    const/4 v0, 0x0

    .line 584
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 585
    .line 586
    .line 587
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 588
    .line 589
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 590
    .line 591
    .line 592
    move-result-object v13

    .line 593
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 594
    .line 595
    int-to-float v15, v15

    .line 596
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 597
    .line 598
    .line 599
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 600
    .line 601
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 602
    .line 603
    .line 604
    move-result-object v15

    .line 605
    move-object/from16 v23, v13

    .line 606
    .line 607
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 608
    .line 609
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 610
    .line 611
    .line 612
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 613
    .line 614
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 615
    .line 616
    .line 617
    move-result-object v13

    .line 618
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 619
    .line 620
    int-to-float v15, v15

    .line 621
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 622
    .line 623
    .line 624
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 625
    .line 626
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 627
    .line 628
    .line 629
    move-result-object v15

    .line 630
    move-object/from16 v25, v13

    .line 631
    .line 632
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 633
    .line 634
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 635
    .line 636
    .line 637
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 638
    .line 639
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 640
    .line 641
    .line 642
    move-result-object v13

    .line 643
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 644
    .line 645
    int-to-float v15, v15

    .line 646
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 647
    .line 648
    .line 649
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 650
    .line 651
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 652
    .line 653
    .line 654
    move-result-object v15

    .line 655
    move-object/from16 v26, v13

    .line 656
    .line 657
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 658
    .line 659
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 660
    .line 661
    .line 662
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 663
    .line 664
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 665
    .line 666
    .line 667
    move-result-object v13

    .line 668
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 669
    .line 670
    int-to-float v15, v15

    .line 671
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 672
    .line 673
    .line 674
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 675
    .line 676
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 677
    .line 678
    .line 679
    move-result-object v15

    .line 680
    move-object/from16 v27, v13

    .line 681
    .line 682
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 683
    .line 684
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 685
    .line 686
    .line 687
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 688
    .line 689
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 694
    .line 695
    int-to-float v15, v15

    .line 696
    invoke-virtual {v13, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 697
    .line 698
    .line 699
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 700
    .line 701
    invoke-static {v3, v13, v15, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 702
    .line 703
    .line 704
    move-result-object v15

    .line 705
    move-object/from16 v28, v13

    .line 706
    .line 707
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 708
    .line 709
    invoke-direct {v13, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 710
    .line 711
    .line 712
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 713
    .line 714
    invoke-static {v3, v15, v13, v2}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 719
    .line 720
    int-to-float v6, v6

    .line 721
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 722
    .line 723
    .line 724
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 725
    .line 726
    invoke-virtual {v3, v0, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 727
    .line 728
    .line 729
    new-instance v3, Lcom/mycompany/app/view/MyPaletteView;

    .line 730
    .line 731
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 732
    .line 733
    .line 734
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 735
    .line 736
    const/4 v13, -0x2

    .line 737
    invoke-direct {v6, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 738
    .line 739
    .line 740
    const/4 v13, 0x1

    .line 741
    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 742
    .line 743
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 744
    .line 745
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 746
    .line 747
    invoke-virtual {v11, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    .line 749
    .line 750
    new-instance v6, Lcom/mycompany/app/view/MyLineText;

    .line 751
    .line 752
    invoke-direct {v6, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 753
    .line 754
    .line 755
    const/16 v2, 0x11

    .line 756
    .line 757
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 758
    .line 759
    .line 760
    const/high16 v2, 0x41800000    # 16.0f

    .line 761
    .line 762
    invoke-virtual {v6, v13, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 763
    .line 764
    .line 765
    const/4 v15, -0x1

    .line 766
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    .line 768
    .line 769
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 770
    .line 771
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 772
    .line 773
    .line 774
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 775
    .line 776
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 777
    .line 778
    .line 779
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 780
    .line 781
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 785
    .line 786
    .line 787
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 788
    .line 789
    invoke-virtual {v4, v6, v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 790
    .line 791
    .line 792
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 793
    .line 794
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->d0:Lcom/mycompany/app/view/MyCircleView;

    .line 795
    .line 796
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 797
    .line 798
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 799
    .line 800
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->g0:Landroid/widget/SeekBar;

    .line 801
    .line 802
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 803
    .line 804
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 805
    .line 806
    move-object/from16 v2, v24

    .line 807
    .line 808
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 809
    .line 810
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->k0:Landroid/widget/SeekBar;

    .line 811
    .line 812
    move-object/from16 v2, v20

    .line 813
    .line 814
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 815
    .line 816
    move-object/from16 v2, v22

    .line 817
    .line 818
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 819
    .line 820
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->o0:Lcom/mycompany/app/view/MyPaletteView;

    .line 821
    .line 822
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 823
    .line 824
    sget-object v2, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 825
    .line 826
    array-length v2, v2

    .line 827
    new-array v2, v2, [Lcom/mycompany/app/view/MyButtonCheck;

    .line 828
    .line 829
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditorPen;->n0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 830
    .line 831
    const/16 v18, 0x0

    .line 832
    .line 833
    aput-object v21, v2, v18

    .line 834
    .line 835
    const/16 v19, 0x1

    .line 836
    .line 837
    aput-object v17, v2, v19

    .line 838
    .line 839
    aput-object v23, v2, v16

    .line 840
    .line 841
    const/4 v3, 0x3

    .line 842
    aput-object v25, v2, v3

    .line 843
    .line 844
    const/4 v3, 0x4

    .line 845
    aput-object v26, v2, v3

    .line 846
    .line 847
    const/4 v3, 0x5

    .line 848
    aput-object v27, v2, v3

    .line 849
    .line 850
    const/4 v3, 0x6

    .line 851
    aput-object v28, v2, v3

    .line 852
    .line 853
    const/4 v3, 0x7

    .line 854
    aput-object v0, v2, v3

    .line 855
    .line 856
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 857
    .line 858
    if-nez v0, :cond_1

    .line 859
    .line 860
    :goto_0
    return-void

    .line 861
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorPen$2;

    .line 862
    .line 863
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogEditorPen$2;-><init>(Lcom/mycompany/app/dialog/DialogEditorPen;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 867
    .line 868
    .line 869
    return-void
.end method
