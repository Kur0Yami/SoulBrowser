.class Lcom/mycompany/app/dialog/DialogSeekBright$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$2;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright$2;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

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
    sget v5, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

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
    new-instance v8, Lcom/mycompany/app/view/MyLineRelative;

    .line 23
    .line 24
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

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
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 33
    .line 34
    invoke-virtual {v8, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    .line 36
    .line 37
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 38
    .line 39
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyLineRelative;->b(I)V

    .line 40
    .line 41
    .line 42
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v10, -0x1

    .line 45
    const/4 v11, -0x2

    .line 46
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const/16 v12, 0x10

    .line 50
    .line 51
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52
    .line 53
    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance v9, Landroid/view/View;

    .line 57
    .line 58
    invoke-direct {v9, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .line 63
    invoke-direct {v13, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    const/16 v14, 0x15

    .line 67
    .line 68
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    const/high16 v15, 0x41800000    # 16.0f

    .line 76
    .line 77
    invoke-static {v2, v13, v3, v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    sget v14, Lnet/kaki87/soul2/testing/R$string;->type:I

    .line 82
    .line 83
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v12, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    .line 88
    .line 89
    const/high16 v14, 0x41600000    # 14.0f

    .line 90
    .line 91
    invoke-static {v2, v13, v4, v6, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    const/4 v6, 0x3

    .line 96
    invoke-static {v10, v11, v6, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 101
    .line 102
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 103
    .line 104
    invoke-virtual {v8, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-direct {v3, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    .line 111
    .line 112
    const/4 v6, 0x1

    .line 113
    invoke-static {v3, v6, v14, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    const/4 v6, 0x3

    .line 118
    invoke-virtual {v14, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 119
    .line 120
    .line 121
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 122
    .line 123
    iput v4, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 124
    .line 125
    invoke-virtual {v8, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    invoke-direct {v4, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 134
    .line 135
    .line 136
    const/high16 v6, 0x41400000    # 12.0f

    .line 137
    .line 138
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    float-to-int v6, v6

    .line 143
    const/4 v10, 0x1

    .line 144
    const/high16 v14, 0x41800000    # 16.0f

    .line 145
    .line 146
    invoke-static {v2, v13, v10, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    sget v10, Lnet/kaki87/soul2/testing/R$string;->brightness:I

    .line 151
    .line 152
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    .line 153
    .line 154
    .line 155
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    .line 157
    const/4 v14, -0x2

    .line 158
    invoke-direct {v10, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    .line 160
    .line 161
    iput v6, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 162
    .line 163
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 164
    .line 165
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    invoke-direct {v10, v2, v13}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v5}, Landroid/view/View;->setId(I)V

    .line 177
    .line 178
    .line 179
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 180
    .line 181
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 182
    .line 183
    .line 184
    const/4 v14, 0x1

    .line 185
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    .line 187
    .line 188
    const/high16 v13, 0x41800000    # 16.0f

    .line 189
    .line 190
    invoke-virtual {v10, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 191
    .line 192
    .line 193
    const/16 v13, 0x15

    .line 194
    .line 195
    const/4 v14, -0x2

    .line 196
    invoke-static {v14, v14, v13}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    .line 202
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 203
    .line 204
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .line 209
    .line 210
    new-instance v6, Landroid/widget/FrameLayout;

    .line 211
    .line 212
    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    .line 217
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 218
    .line 219
    const/4 v0, -0x1

    .line 220
    invoke-direct {v13, v0, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .line 222
    .line 223
    const/4 v0, 0x3

    .line 224
    invoke-virtual {v13, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    invoke-direct {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 236
    .line 237
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    .line 239
    .line 240
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 241
    .line 242
    invoke-virtual {v6, v0, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 243
    .line 244
    .line 245
    new-instance v13, Landroid/widget/SeekBar;

    .line 246
    .line 247
    invoke-direct {v13, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    .line 252
    move-object/from16 v17, v0

    .line 253
    .line 254
    move-object/from16 v18, v10

    .line 255
    .line 256
    const/4 v0, -0x2

    .line 257
    const/4 v10, -0x1

    .line 258
    invoke-direct {v14, v10, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/16 v0, 0x10

    .line 262
    .line 263
    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    .line 265
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 266
    .line 267
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 268
    .line 269
    .line 270
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 271
    .line 272
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 283
    .line 284
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 285
    .line 286
    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 287
    .line 288
    .line 289
    const v10, 0x800005

    .line 290
    .line 291
    .line 292
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    .line 294
    invoke-virtual {v6, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .line 296
    .line 297
    new-instance v5, Lcom/mycompany/app/view/MyLineLinear;

    .line 298
    .line 299
    invoke-direct {v5, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    const/4 v6, 0x0

    .line 303
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    .line 308
    .line 309
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 310
    .line 311
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 312
    .line 313
    .line 314
    const/4 v10, 0x1

    .line 315
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 316
    .line 317
    .line 318
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 319
    .line 320
    const/4 v6, -0x1

    .line 321
    invoke-static {v7, v5, v6, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    const/16 v6, 0x11

    .line 326
    .line 327
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    .line 329
    .line 330
    const/high16 v6, 0x41800000    # 16.0f

    .line 331
    .line 332
    invoke-virtual {v14, v10, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 333
    .line 334
    .line 335
    sget v6, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 336
    .line 337
    move-object/from16 v16, v0

    .line 338
    .line 339
    const/4 v0, -0x1

    .line 340
    const/4 v10, 0x0

    .line 341
    invoke-static {v14, v6, v2, v10, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    const/high16 v0, 0x3f800000    # 1.0f

    .line 346
    .line 347
    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 348
    .line 349
    const/4 v0, 0x0

    .line 350
    invoke-static {v5, v14, v6, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const/16 v2, 0x11

    .line 355
    .line 356
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    .line 358
    .line 359
    const/4 v2, 0x1

    .line 360
    const/high16 v6, 0x41800000    # 16.0f

    .line 361
    .line 362
    invoke-virtual {v0, v2, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 363
    .line 364
    .line 365
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 366
    .line 367
    const/4 v6, -0x1

    .line 368
    invoke-static {v0, v2, v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    const/high16 v6, 0x3f800000    # 1.0f

    .line 373
    .line 374
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 375
    .line 376
    invoke-virtual {v5, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    .line 378
    .line 379
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 380
    .line 381
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->g0:Lcom/mycompany/app/view/MyLineRelative;

    .line 382
    .line 383
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->h0:Landroid/view/View;

    .line 384
    .line 385
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 386
    .line 387
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 388
    .line 389
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 390
    .line 391
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->l0:Landroid/widget/RelativeLayout;

    .line 392
    .line 393
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
    .line 395
    move-object/from16 v2, v18

    .line 396
    .line 397
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 398
    .line 399
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 400
    .line 401
    move-object/from16 v2, v17

    .line 402
    .line 403
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 404
    .line 405
    move-object/from16 v2, v16

    .line 406
    .line 407
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 408
    .line 409
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 410
    .line 411
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 412
    .line 413
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 414
    .line 415
    if-nez v0, :cond_1

    .line 416
    .line 417
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$3;

    .line 419
    .line 420
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSeekBright$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    .line 425
    .line 426
    return-void
.end method
