.class Lcom/mycompany/app/dialog/DialogCapture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$1;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture$1;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/high16 v4, -0x1000000

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean v5, v1, Lcom/mycompany/app/dialog/DialogCapture;->y:Z

    .line 22
    .line 23
    const v6, 0x800055

    .line 24
    .line 25
    .line 26
    const v7, -0x5e8a8a8b

    .line 27
    .line 28
    .line 29
    const/high16 v8, -0x5f000000

    .line 30
    .line 31
    const/16 v9, 0x8

    .line 32
    .line 33
    const/4 v10, 0x1

    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, -0x1

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    new-instance v5, Lcom/mycompany/app/view/MySizeImage;

    .line 39
    .line 40
    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 44
    .line 45
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    .line 47
    .line 48
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v14, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 54
    .line 55
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 56
    .line 57
    invoke-virtual {v3, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v14, Lcom/mycompany/app/view/MyAreaView;

    .line 61
    .line 62
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyAreaView;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v14, v10}, Lcom/mycompany/app/view/MyAreaView;->setFullMode(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    const/high16 v15, 0x43200000    # 160.0f

    .line 72
    .line 73
    invoke-static {v2, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    float-to-int v15, v15

    .line 78
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    invoke-direct {v11, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 84
    .line 85
    iput v15, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 86
    .line 87
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 99
    .line 100
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    .line 102
    .line 103
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_exit_white_24:I

    .line 104
    .line 105
    invoke-virtual {v11, v15}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    sget v15, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 109
    .line 110
    int-to-float v15, v15

    .line 111
    sget v4, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 112
    .line 113
    int-to-float v4, v4

    .line 114
    invoke-virtual {v11, v15, v4}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v8, v7}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11, v9}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .line 125
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 126
    .line 127
    invoke-direct {v4, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .line 129
    .line 130
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    .line 132
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 133
    .line 134
    sget v16, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 135
    .line 136
    add-int v15, v15, v16

    .line 137
    .line 138
    iput v15, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 139
    .line 140
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 141
    .line 142
    sget v16, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 143
    .line 144
    add-int v15, v15, v16

    .line 145
    .line 146
    invoke-virtual {v4, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    new-instance v4, Lcom/mycompany/app/crop/CropImageView;

    .line 155
    .line 156
    invoke-direct {v4, v2}, Lcom/mycompany/app/crop/CropImageView;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 160
    .line 161
    invoke-virtual {v4, v12, v5, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    .line 163
    .line 164
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .line 174
    invoke-direct {v5, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 178
    .line 179
    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 180
    .line 181
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v14, 0x0

    .line 187
    :goto_0
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 188
    .line 189
    invoke-direct {v15, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 193
    .line 194
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 195
    .line 196
    .line 197
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_white_24:I

    .line 198
    .line 199
    invoke-virtual {v15, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 200
    .line 201
    .line 202
    sget v9, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 203
    .line 204
    int-to-float v9, v9

    .line 205
    sget v10, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 206
    .line 207
    int-to-float v10, v10

    .line 208
    invoke-virtual {v15, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15, v8, v7}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 212
    .line 213
    .line 214
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 215
    .line 216
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 217
    .line 218
    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 222
    .line 223
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 224
    .line 225
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 226
    .line 227
    add-int/2addr v6, v9

    .line 228
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 229
    .line 230
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 231
    .line 232
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .line 237
    .line 238
    new-instance v6, Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 247
    .line 248
    .line 249
    const/high16 v7, -0x1000000

    .line 250
    .line 251
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    .line 253
    .line 254
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 255
    .line 256
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 257
    .line 258
    invoke-direct {v7, v13, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    const/16 v9, 0x50

    .line 262
    .line 263
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    .line 265
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 269
    .line 270
    invoke-direct {v7, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    const/16 v9, 0x11

    .line 274
    .line 275
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    .line 277
    .line 278
    const/high16 v10, 0x41800000    # 16.0f

    .line 279
    .line 280
    const/4 v8, 0x1

    .line 281
    invoke-virtual {v7, v8, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    .line 286
    .line 287
    sget v8, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 288
    .line 289
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 290
    .line 291
    .line 292
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 293
    .line 294
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 301
    .line 302
    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    .line 304
    .line 305
    const/high16 v12, 0x3f800000    # 1.0f

    .line 306
    .line 307
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 308
    .line 309
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 313
    .line 314
    const/4 v12, 0x0

    .line 315
    invoke-direct {v8, v2, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 319
    .line 320
    .line 321
    const/4 v9, 0x1

    .line 322
    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    .line 327
    .line 328
    sget v9, Lnet/kaki87/soul2/testing/R$string;->crop_save:I

    .line 329
    .line 330
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 331
    .line 332
    .line 333
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 334
    .line 335
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 336
    .line 337
    .line 338
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    .line 340
    const/4 v10, 0x0

    .line 341
    invoke-direct {v9, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 342
    .line 343
    .line 344
    const/high16 v10, 0x3f800000    # 1.0f

    .line 345
    .line 346
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 347
    .line 348
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    .line 350
    .line 351
    new-instance v9, Lcom/mycompany/app/view/MyCoverView;

    .line 352
    .line 353
    sget v10, Lcom/mycompany/app/main/MainApp;->y1:I

    .line 354
    .line 355
    sget v12, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 356
    .line 357
    invoke-direct {v9, v2, v13, v10, v12}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 358
    .line 359
    .line 360
    const/high16 v2, -0x5f000000

    .line 361
    .line 362
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 363
    .line 364
    .line 365
    const/4 v2, 0x1

    .line 366
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyCoverView;->setBlockTouch(Z)V

    .line 367
    .line 368
    .line 369
    const/16 v2, 0x8

    .line 370
    .line 371
    invoke-virtual {v9, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v9, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 375
    .line 376
    .line 377
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 378
    .line 379
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 380
    .line 381
    iput-object v14, v1, Lcom/mycompany/app/dialog/DialogCapture;->I:Lcom/mycompany/app/view/MyAreaView;

    .line 382
    .line 383
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogCapture;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 384
    .line 385
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 386
    .line 387
    iput-object v15, v1, Lcom/mycompany/app/dialog/DialogCapture;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 388
    .line 389
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogCapture;->M:Landroid/widget/LinearLayout;

    .line 390
    .line 391
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogCapture;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 392
    .line 393
    iput-object v7, v1, Lcom/mycompany/app/dialog/DialogCapture;->O:Lcom/mycompany/app/view/MyLineText;

    .line 394
    .line 395
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogCapture;->P:Lcom/mycompany/app/view/MyCoverView;

    .line 396
    .line 397
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 398
    .line 399
    if-nez v2, :cond_2

    .line 400
    .line 401
    :goto_1
    return-void

    .line 402
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogCapture$2;

    .line 403
    .line 404
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogCapture$2;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    .line 409
    .line 410
    return-void
.end method
