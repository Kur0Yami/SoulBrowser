.class Lcom/mycompany/app/dialog/DialogSetBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$1;->c:Lcom/mycompany/app/dialog/DialogSetBar;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar$1;->c:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

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
    new-instance v5, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    const/4 v6, -0x1

    .line 22
    const/4 v7, -0x2

    .line 23
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    new-instance v8, Lcom/mycompany/app/view/MyRoundImage;

    .line 27
    .line 28
    invoke-direct {v8, v2}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 32
    .line 33
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v8, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    const/high16 v9, 0x41400000    # 12.0f

    .line 40
    .line 41
    invoke-static {v2, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    float-to-int v9, v9

    .line 46
    iget v10, v1, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 47
    .line 48
    const/4 v11, 0x2

    .line 49
    const v13, 0x800005

    .line 50
    .line 51
    .line 52
    const/high16 v14, 0x41800000    # 16.0f

    .line 53
    .line 54
    const/4 v15, 0x0

    .line 55
    const/4 v12, 0x0

    .line 56
    if-ne v10, v11, :cond_1

    .line 57
    .line 58
    new-instance v10, Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v15, v9, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v10, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v12, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v15, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 79
    .line 80
    invoke-virtual {v15, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v12, v3, v3, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 91
    .line 92
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 93
    .line 94
    .line 95
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    invoke-direct {v15, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    iput v13, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    .line 102
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 103
    .line 104
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lcom/mycompany/app/view/MyLineFrame;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 116
    .line 117
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 118
    .line 119
    .line 120
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 121
    .line 122
    const/4 v15, -0x1

    .line 123
    invoke-virtual {v4, v3, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    .line 125
    .line 126
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    invoke-direct {v10, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 132
    .line 133
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    .line 135
    .line 136
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 137
    .line 138
    invoke-virtual {v3, v10, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 139
    .line 140
    .line 141
    new-instance v14, Landroid/widget/SeekBar;

    .line 142
    .line 143
    invoke-direct {v14, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    invoke-direct {v13, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    const v15, 0x800013

    .line 152
    .line 153
    .line 154
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    .line 156
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 157
    .line 158
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 159
    .line 160
    .line 161
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 162
    .line 163
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v14, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 176
    .line 177
    invoke-direct {v13, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .line 179
    .line 180
    const v15, 0x800005

    .line 181
    .line 182
    .line 183
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    .line 185
    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_1
    const/4 v6, 0x0

    .line 190
    const/4 v10, 0x0

    .line 191
    const/4 v11, 0x0

    .line 192
    const/4 v12, 0x0

    .line 193
    const/4 v14, 0x0

    .line 194
    :goto_0
    new-instance v3, Landroid/widget/FrameLayout;

    .line 195
    .line 196
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    const/4 v13, 0x0

    .line 200
    invoke-virtual {v3, v13, v9, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    .line 202
    .line 203
    const/4 v15, -0x1

    .line 204
    invoke-virtual {v4, v3, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 205
    .line 206
    .line 207
    const/high16 v9, 0x41800000    # 16.0f

    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    const/4 v15, 0x1

    .line 211
    invoke-static {v2, v13, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    .line 217
    invoke-direct {v9, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 218
    .line 219
    .line 220
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 221
    .line 222
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    const/high16 v9, 0x41800000    # 16.0f

    .line 229
    .line 230
    invoke-static {v2, v13, v15, v15, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 235
    .line 236
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 237
    .line 238
    .line 239
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    .line 241
    const/4 v13, -0x2

    .line 242
    invoke-direct {v9, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    const v15, 0x800005

    .line 246
    .line 247
    .line 248
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    .line 250
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 251
    .line 252
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .line 257
    .line 258
    new-instance v3, Landroid/widget/FrameLayout;

    .line 259
    .line 260
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 264
    .line 265
    const/4 v15, -0x1

    .line 266
    invoke-virtual {v4, v3, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 267
    .line 268
    .line 269
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 270
    .line 271
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 272
    .line 273
    .line 274
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 275
    .line 276
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 277
    .line 278
    .line 279
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 280
    .line 281
    invoke-virtual {v3, v9, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 282
    .line 283
    .line 284
    new-instance v15, Landroid/widget/SeekBar;

    .line 285
    .line 286
    invoke-direct {v15, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v18, v9

    .line 290
    .line 291
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    .line 293
    move-object/from16 v17, v0

    .line 294
    .line 295
    move-object/from16 v19, v7

    .line 296
    .line 297
    const/4 v0, -0x2

    .line 298
    const/4 v7, -0x1

    .line 299
    invoke-direct {v9, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 300
    .line 301
    .line 302
    const v0, 0x800013

    .line 303
    .line 304
    .line 305
    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 306
    .line 307
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 308
    .line 309
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 310
    .line 311
    .line 312
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 313
    .line 314
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 325
    .line 326
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 327
    .line 328
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 329
    .line 330
    .line 331
    const v9, 0x800005

    .line 332
    .line 333
    .line 334
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 335
    .line 336
    invoke-virtual {v3, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Lcom/mycompany/app/view/MyLineLinear;

    .line 340
    .line 341
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    const/4 v13, 0x0

    .line 345
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 349
    .line 350
    .line 351
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 352
    .line 353
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 354
    .line 355
    .line 356
    const/4 v7, 0x1

    .line 357
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 358
    .line 359
    .line 360
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 361
    .line 362
    const/4 v13, -0x1

    .line 363
    invoke-static {v4, v3, v13, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    const/16 v13, 0x11

    .line 368
    .line 369
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    .line 371
    .line 372
    const/high16 v13, 0x41800000    # 16.0f

    .line 373
    .line 374
    invoke-virtual {v9, v7, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 375
    .line 376
    .line 377
    sget v7, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 378
    .line 379
    move-object/from16 v16, v0

    .line 380
    .line 381
    const/4 v0, -0x1

    .line 382
    const/4 v13, 0x0

    .line 383
    invoke-static {v9, v7, v2, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    .line 388
    .line 389
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 390
    .line 391
    const/4 v0, 0x0

    .line 392
    invoke-static {v3, v9, v7, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const/16 v2, 0x11

    .line 397
    .line 398
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 399
    .line 400
    .line 401
    const/high16 v2, 0x41800000    # 16.0f

    .line 402
    .line 403
    const/4 v7, 0x1

    .line 404
    invoke-virtual {v0, v7, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 405
    .line 406
    .line 407
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 408
    .line 409
    const/4 v7, -0x1

    .line 410
    invoke-static {v0, v2, v13, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    const/high16 v7, 0x3f800000    # 1.0f

    .line 415
    .line 416
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 417
    .line 418
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 422
    .line 423
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 424
    .line 425
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 426
    .line 427
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 428
    .line 429
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 432
    .line 433
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 434
    .line 435
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 436
    .line 437
    move-object/from16 v2, v17

    .line 438
    .line 439
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 440
    .line 441
    move-object/from16 v2, v19

    .line 442
    .line 443
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 444
    .line 445
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 446
    .line 447
    move-object/from16 v2, v18

    .line 448
    .line 449
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 450
    .line 451
    move-object/from16 v2, v16

    .line 452
    .line 453
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 454
    .line 455
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 458
    .line 459
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 460
    .line 461
    if-nez v0, :cond_2

    .line 462
    .line 463
    :goto_1
    return-void

    .line 464
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetBar$2;

    .line 465
    .line 466
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogSetBar$2;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    .line 471
    .line 472
    return-void
.end method
