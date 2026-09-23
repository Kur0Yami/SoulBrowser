.class Lcom/mycompany/app/dialog/DialogEditIcon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$1;->c:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon$1;->c:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 v4, 0x1

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x5

    .line 19
    const/16 v7, 0x11

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, -0x1

    .line 23
    if-eq v2, v6, :cond_1

    .line 24
    .line 25
    const/high16 v10, 0x42900000    # 72.0f

    .line 26
    .line 27
    invoke-static {v3, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result v10

    .line 31
    float-to-int v10, v10

    .line 32
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 33
    .line 34
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 38
    .line 39
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v11, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    sget v13, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 53
    .line 54
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    invoke-virtual {v11, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v10, v8

    .line 64
    :goto_0
    const/4 v11, 0x2

    .line 65
    invoke-static {v3, v8, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    .line 71
    const/4 v14, 0x0

    .line 72
    invoke-direct {v13, v9, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    const/high16 v15, 0x3f800000    # 1.0f

    .line 76
    .line 77
    iput v15, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 78
    .line 79
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v13, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    invoke-direct {v13, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    move/from16 v16, v6

    .line 88
    .line 89
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 90
    .line 91
    move/from16 v17, v11

    .line 92
    .line 93
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 94
    .line 95
    invoke-virtual {v13, v14, v6, v14, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    .line 100
    .line 101
    const/4 v6, -0x2

    .line 102
    invoke-virtual {v12, v13, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 103
    .line 104
    .line 105
    new-instance v11, Landroid/widget/FrameLayout;

    .line 106
    .line 107
    invoke-direct {v11, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v11, v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 111
    .line 112
    .line 113
    const/high16 v12, 0x41800000    # 16.0f

    .line 114
    .line 115
    invoke-static {v3, v8, v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    sget v15, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 120
    .line 121
    invoke-static {v7, v15, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 126
    .line 127
    invoke-virtual {v15, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v3, v8, v4, v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 138
    .line 139
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 140
    .line 141
    .line 142
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    invoke-direct {v15, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    const v8, 0x800005

    .line 148
    .line 149
    .line 150
    iput v8, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    .line 152
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 153
    .line 154
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 161
    .line 162
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 166
    .line 167
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 168
    .line 169
    .line 170
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 171
    .line 172
    invoke-virtual {v13, v11, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 173
    .line 174
    .line 175
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    invoke-direct {v12, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 181
    .line 182
    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    .line 184
    .line 185
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_white_24:I

    .line 186
    .line 187
    invoke-virtual {v12, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 191
    .line 192
    invoke-virtual {v11, v12, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 193
    .line 194
    .line 195
    new-instance v4, Landroid/widget/SeekBar;

    .line 196
    .line 197
    invoke-direct {v4, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    .line 202
    invoke-direct {v8, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    const v6, 0x800013

    .line 206
    .line 207
    .line 208
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    .line 210
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 211
    .line 212
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 213
    .line 214
    .line 215
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 216
    .line 217
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v3, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_white_24:I

    .line 228
    .line 229
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 233
    .line 234
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 235
    .line 236
    invoke-direct {v8, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 237
    .line 238
    .line 239
    const v15, 0x800005

    .line 240
    .line 241
    .line 242
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 243
    .line 244
    invoke-virtual {v11, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    .line 246
    .line 247
    new-instance v8, Landroid/widget/LinearLayout;

    .line 248
    .line 249
    invoke-direct {v8, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 253
    .line 254
    const/4 v15, 0x0

    .line 255
    invoke-virtual {v8, v11, v15, v11, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    .line 263
    .line 264
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    .line 266
    const/4 v15, -0x2

    .line 267
    invoke-direct {v11, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    .line 269
    .line 270
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 271
    .line 272
    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 273
    .line 274
    invoke-virtual {v13, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    new-instance v11, Lcom/mycompany/app/view/MyButtonCheck;

    .line 278
    .line 279
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 283
    .line 284
    int-to-float v15, v15

    .line 285
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 286
    .line 287
    .line 288
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 289
    .line 290
    invoke-static {v8, v11, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v15

    .line 294
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 295
    .line 296
    const/4 v0, 0x0

    .line 297
    invoke-direct {v9, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 298
    .line 299
    .line 300
    const/high16 v0, 0x3f800000    # 1.0f

    .line 301
    .line 302
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 303
    .line 304
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 309
    .line 310
    int-to-float v15, v15

    .line 311
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 312
    .line 313
    .line 314
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 315
    .line 316
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    move-object/from16 v21, v9

    .line 321
    .line 322
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .line 324
    move-object/from16 v22, v11

    .line 325
    .line 326
    const/4 v11, 0x0

    .line 327
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 328
    .line 329
    .line 330
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 331
    .line 332
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 337
    .line 338
    int-to-float v15, v15

    .line 339
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 340
    .line 341
    .line 342
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 343
    .line 344
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    move-object/from16 v23, v9

    .line 349
    .line 350
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .line 352
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    .line 354
    .line 355
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 356
    .line 357
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 362
    .line 363
    int-to-float v15, v15

    .line 364
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 365
    .line 366
    .line 367
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 368
    .line 369
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object v15

    .line 373
    move-object/from16 v24, v9

    .line 374
    .line 375
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .line 377
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    .line 379
    .line 380
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 381
    .line 382
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 387
    .line 388
    int-to-float v15, v15

    .line 389
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 390
    .line 391
    .line 392
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 393
    .line 394
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    move-object/from16 v25, v9

    .line 399
    .line 400
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 401
    .line 402
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 403
    .line 404
    .line 405
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 406
    .line 407
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 412
    .line 413
    int-to-float v15, v15

    .line 414
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 415
    .line 416
    .line 417
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 418
    .line 419
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v15

    .line 423
    move-object/from16 v26, v9

    .line 424
    .line 425
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 426
    .line 427
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .line 429
    .line 430
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 431
    .line 432
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 437
    .line 438
    int-to-float v15, v15

    .line 439
    invoke-virtual {v9, v15}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 440
    .line 441
    .line 442
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 443
    .line 444
    invoke-static {v8, v9, v15, v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    move-object/from16 v27, v9

    .line 449
    .line 450
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 451
    .line 452
    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    .line 454
    .line 455
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 456
    .line 457
    invoke-static {v8, v15, v9, v3}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 462
    .line 463
    int-to-float v9, v9

    .line 464
    invoke-virtual {v0, v9}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 465
    .line 466
    .line 467
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 468
    .line 469
    invoke-virtual {v8, v0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 470
    .line 471
    .line 472
    new-instance v8, Lcom/mycompany/app/view/MyPaletteView;

    .line 473
    .line 474
    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 475
    .line 476
    .line 477
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 478
    .line 479
    const/4 v15, -0x2

    .line 480
    invoke-direct {v9, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    .line 482
    .line 483
    const/4 v11, 0x1

    .line 484
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 485
    .line 486
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 487
    .line 488
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 489
    .line 490
    invoke-virtual {v13, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    .line 492
    .line 493
    new-instance v9, Lcom/mycompany/app/view/MyLineLinear;

    .line 494
    .line 495
    invoke-direct {v9, v3}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 496
    .line 497
    .line 498
    const/4 v15, 0x0

    .line 499
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 503
    .line 504
    .line 505
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 506
    .line 507
    invoke-virtual {v9, v13}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9, v11}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 511
    .line 512
    .line 513
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 514
    .line 515
    const/4 v15, -0x1

    .line 516
    invoke-static {v5, v9, v15, v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    const/16 v15, 0x11

    .line 521
    .line 522
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 523
    .line 524
    .line 525
    const/high16 v15, 0x41800000    # 16.0f

    .line 526
    .line 527
    invoke-virtual {v13, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 528
    .line 529
    .line 530
    sget v11, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 531
    .line 532
    move-object/from16 v20, v0

    .line 533
    .line 534
    const/4 v0, 0x0

    .line 535
    const/4 v15, -0x1

    .line 536
    invoke-static {v13, v11, v3, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 537
    .line 538
    .line 539
    move-result-object v11

    .line 540
    const/high16 v0, 0x3f800000    # 1.0f

    .line 541
    .line 542
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 543
    .line 544
    const/4 v0, 0x0

    .line 545
    invoke-static {v9, v13, v11, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    const/16 v3, 0x11

    .line 550
    .line 551
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 552
    .line 553
    .line 554
    const/high16 v3, 0x41800000    # 16.0f

    .line 555
    .line 556
    const/4 v11, 0x1

    .line 557
    invoke-virtual {v0, v11, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 558
    .line 559
    .line 560
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 561
    .line 562
    const/4 v11, 0x0

    .line 563
    invoke-static {v0, v3, v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    const/high16 v11, 0x3f800000    # 1.0f

    .line 568
    .line 569
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 570
    .line 571
    invoke-virtual {v9, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    .line 573
    .line 574
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 575
    .line 576
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 577
    .line 578
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 579
    .line 580
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 583
    .line 584
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 585
    .line 586
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 587
    .line 588
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 589
    .line 590
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 591
    .line 592
    iput-object v13, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 593
    .line 594
    const/4 v0, 0x4

    .line 595
    if-ne v2, v0, :cond_2

    .line 596
    .line 597
    sget-object v2, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 598
    .line 599
    array-length v2, v2

    .line 600
    goto :goto_1

    .line 601
    :cond_2
    sget-object v2, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 602
    .line 603
    array-length v2, v2

    .line 604
    :goto_1
    new-array v2, v2, [Lcom/mycompany/app/view/MyButtonCheck;

    .line 605
    .line 606
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 607
    .line 608
    const/16 v18, 0x0

    .line 609
    .line 610
    aput-object v22, v2, v18

    .line 611
    .line 612
    const/16 v19, 0x1

    .line 613
    .line 614
    aput-object v21, v2, v19

    .line 615
    .line 616
    aput-object v23, v2, v17

    .line 617
    .line 618
    const/4 v3, 0x3

    .line 619
    aput-object v24, v2, v3

    .line 620
    .line 621
    aput-object v25, v2, v0

    .line 622
    .line 623
    aput-object v26, v2, v16

    .line 624
    .line 625
    const/4 v0, 0x6

    .line 626
    aput-object v27, v2, v0

    .line 627
    .line 628
    const/4 v0, 0x7

    .line 629
    aput-object v20, v2, v0

    .line 630
    .line 631
    iget-object v0, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 632
    .line 633
    if-nez v0, :cond_3

    .line 634
    .line 635
    :goto_2
    return-void

    .line 636
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditIcon$2;

    .line 637
    .line 638
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogEditIcon$2;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    .line 643
    .line 644
    return-void
.end method
