.class Lcom/mycompany/app/lock/PinActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PinActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PinActivity$4;->c:Lcom/mycompany/app/lock/PinActivity;

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
    iget-object v1, v0, Lcom/mycompany/app/lock/PinActivity$4;->c:Lcom/mycompany/app/lock/PinActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v3, v2, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    const/high16 v4, 0x41b00000    # 22.0f

    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    float-to-int v4, v4

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46
    .line 47
    .line 48
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 49
    .line 50
    const/4 v9, -0x1

    .line 51
    invoke-virtual {v2, v6, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Lcom/mycompany/app/view/MyButtonText;

    .line 55
    .line 56
    invoke-direct {v8, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const/16 v10, 0x11

    .line 60
    .line 61
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    .line 63
    .line 64
    const/high16 v11, 0x41900000    # 18.0f

    .line 65
    .line 66
    invoke-virtual {v8, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 67
    .line 68
    .line 69
    const-string v12, "1"

    .line 70
    .line 71
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .line 76
    sget v13, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 77
    .line 78
    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 88
    .line 89
    invoke-direct {v12, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 96
    .line 97
    .line 98
    const-string v13, "2"

    .line 99
    .line 100
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .line 105
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 106
    .line 107
    invoke-direct {v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance v13, Lcom/mycompany/app/view/MyButtonText;

    .line 117
    .line 118
    invoke-direct {v13, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 125
    .line 126
    .line 127
    const-string v14, "3"

    .line 128
    .line 129
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .line 134
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 135
    .line 136
    invoke-direct {v14, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    new-instance v6, Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-direct {v6, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    .line 155
    .line 156
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .line 158
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 159
    .line 160
    invoke-direct {v14, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 164
    .line 165
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 166
    .line 167
    invoke-virtual {v2, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance v14, Lcom/mycompany/app/view/MyButtonText;

    .line 171
    .line 172
    invoke-direct {v14, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 179
    .line 180
    .line 181
    const-string v15, "4"

    .line 182
    .line 183
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    sget v9, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 189
    .line 190
    invoke-direct {v15, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    .line 198
    .line 199
    new-instance v9, Lcom/mycompany/app/view/MyButtonText;

    .line 200
    .line 201
    invoke-direct {v9, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v9, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 208
    .line 209
    .line 210
    const-string v15, "5"

    .line 211
    .line 212
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .line 217
    sget v7, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 218
    .line 219
    invoke-direct {v15, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    .line 227
    .line 228
    new-instance v7, Lcom/mycompany/app/view/MyButtonText;

    .line 229
    .line 230
    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 237
    .line 238
    .line 239
    const-string v15, "6"

    .line 240
    .line 241
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 245
    .line 246
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 247
    .line 248
    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    new-instance v5, Landroid/widget/LinearLayout;

    .line 258
    .line 259
    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 260
    .line 261
    .line 262
    const/4 v6, 0x0

    .line 263
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 267
    .line 268
    .line 269
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .line 271
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 272
    .line 273
    const/4 v11, -0x1

    .line 274
    invoke-direct {v6, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 275
    .line 276
    .line 277
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 278
    .line 279
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 280
    .line 281
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .line 283
    .line 284
    new-instance v6, Lcom/mycompany/app/view/MyButtonText;

    .line 285
    .line 286
    invoke-direct {v6, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 290
    .line 291
    .line 292
    const/high16 v11, 0x41900000    # 18.0f

    .line 293
    .line 294
    const/4 v15, 0x1

    .line 295
    invoke-virtual {v6, v15, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 296
    .line 297
    .line 298
    const-string v11, "7"

    .line 299
    .line 300
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 304
    .line 305
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 306
    .line 307
    invoke-direct {v11, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .line 315
    .line 316
    new-instance v11, Lcom/mycompany/app/view/MyButtonText;

    .line 317
    .line 318
    invoke-direct {v11, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 322
    .line 323
    .line 324
    const/4 v10, 0x1

    .line 325
    const/high16 v15, 0x41900000    # 18.0f

    .line 326
    .line 327
    invoke-virtual {v11, v10, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 328
    .line 329
    .line 330
    const-string v10, "8"

    .line 331
    .line 332
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    .line 337
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 338
    .line 339
    invoke-direct {v10, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v5, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    .line 347
    .line 348
    new-instance v10, Lcom/mycompany/app/view/MyButtonText;

    .line 349
    .line 350
    invoke-direct {v10, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 351
    .line 352
    .line 353
    const/16 v15, 0x11

    .line 354
    .line 355
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v18, v6

    .line 359
    .line 360
    const/4 v6, 0x1

    .line 361
    const/high16 v15, 0x41900000    # 18.0f

    .line 362
    .line 363
    invoke-virtual {v10, v6, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 364
    .line 365
    .line 366
    const-string v6, "9"

    .line 367
    .line 368
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 372
    .line 373
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 374
    .line 375
    invoke-direct {v6, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v5, Landroid/widget/LinearLayout;

    .line 385
    .line 386
    invoke-direct {v5, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    const/4 v6, 0x0

    .line 390
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    .line 395
    .line 396
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 397
    .line 398
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 399
    .line 400
    move-object/from16 v19, v7

    .line 401
    .line 402
    const/4 v7, -0x1

    .line 403
    invoke-direct {v6, v7, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    .line 405
    .line 406
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 407
    .line 408
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 409
    .line 410
    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .line 412
    .line 413
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 414
    .line 415
    invoke-direct {v6, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 416
    .line 417
    .line 418
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 419
    .line 420
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 421
    .line 422
    .line 423
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    .line 425
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 426
    .line 427
    invoke-direct {v7, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .line 435
    .line 436
    new-instance v7, Lcom/mycompany/app/view/MyButtonText;

    .line 437
    .line 438
    invoke-direct {v7, v3}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 439
    .line 440
    .line 441
    const/16 v15, 0x11

    .line 442
    .line 443
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 444
    .line 445
    .line 446
    const/4 v3, 0x1

    .line 447
    const/high16 v15, 0x41900000    # 18.0f

    .line 448
    .line 449
    invoke-virtual {v7, v3, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 450
    .line 451
    .line 452
    const-string v3, "0"

    .line 453
    .line 454
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 458
    .line 459
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 460
    .line 461
    invoke-direct {v3, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    .line 469
    .line 470
    const/16 v3, 0xa

    .line 471
    .line 472
    new-array v3, v3, [Lcom/mycompany/app/view/MyButtonText;

    .line 473
    .line 474
    iput-object v3, v2, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 475
    .line 476
    const/16 v16, 0x0

    .line 477
    .line 478
    aput-object v7, v3, v16

    .line 479
    .line 480
    const/16 v17, 0x1

    .line 481
    .line 482
    aput-object v8, v3, v17

    .line 483
    .line 484
    const/4 v4, 0x2

    .line 485
    aput-object v12, v3, v4

    .line 486
    .line 487
    const/4 v4, 0x3

    .line 488
    aput-object v13, v3, v4

    .line 489
    .line 490
    const/4 v4, 0x4

    .line 491
    aput-object v14, v3, v4

    .line 492
    .line 493
    const/4 v4, 0x5

    .line 494
    aput-object v9, v3, v4

    .line 495
    .line 496
    const/4 v4, 0x6

    .line 497
    aput-object v19, v3, v4

    .line 498
    .line 499
    const/4 v4, 0x7

    .line 500
    aput-object v18, v3, v4

    .line 501
    .line 502
    const/16 v4, 0x8

    .line 503
    .line 504
    aput-object v11, v3, v4

    .line 505
    .line 506
    const/16 v4, 0x9

    .line 507
    .line 508
    aput-object v10, v3, v4

    .line 509
    .line 510
    iput-object v6, v2, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 511
    .line 512
    :goto_0
    iget-object v1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 513
    .line 514
    if-nez v1, :cond_3

    .line 515
    .line 516
    :goto_1
    return-void

    .line 517
    :cond_3
    new-instance v2, Lcom/mycompany/app/lock/PinActivity$4$1;

    .line 518
    .line 519
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PinActivity$4$1;-><init>(Lcom/mycompany/app/lock/PinActivity$4;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    .line 524
    .line 525
    return-void
.end method
