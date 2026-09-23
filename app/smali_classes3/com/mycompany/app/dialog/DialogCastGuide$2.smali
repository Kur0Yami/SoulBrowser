.class Lcom/mycompany/app/dialog/DialogCastGuide$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCastGuide;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCastGuide$2;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCastGuide$2;->c:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_20

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_d

    .line 14
    .line 15
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    const/high16 v3, -0x1000000

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->d0:Landroid/widget/ImageView;

    .line 22
    .line 23
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_dark_24:I

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    const v4, -0x50506

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->d0:Landroid/widget/ImageView;

    .line 65
    .line 66
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_wb_incandescent_2_black_24:I

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    const v4, -0xe19938

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->b0:I

    .line 107
    .line 108
    const v4, -0x70708

    .line 109
    .line 110
    .line 111
    const/high16 v5, 0x3f800000    # 1.0f

    .line 112
    .line 113
    const-string v6, "2. "

    .line 114
    .line 115
    const-string v7, "1. "

    .line 116
    .line 117
    const/high16 v9, -0x10000

    .line 118
    .line 119
    const/4 v12, 0x1

    .line 120
    const/4 v13, 0x2

    .line 121
    const/4 v14, 0x0

    .line 122
    const-string v15, "\n"

    .line 123
    .line 124
    if-nez v2, :cond_d

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 132
    .line 133
    sget v3, Lnet/kaki87/soul2/testing/R$string;->local_cast_guide_1:I

    .line 134
    .line 135
    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 148
    .line 149
    sget v7, Lnet/kaki87/soul2/testing/R$string;->local_cast_guide_2:I

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 164
    .line 165
    const/16 v16, 0x5

    .line 166
    .line 167
    sget v10, Lnet/kaki87/soul2/testing/R$string;->local_cast_guide_3:I

    .line 168
    .line 169
    invoke-static {v7, v10, v6, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 173
    .line 174
    sget v10, Lnet/kaki87/soul2/testing/R$string;->local_cast_guide_4:I

    .line 175
    .line 176
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 216
    .line 217
    if-nez v2, :cond_2

    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_2
    const/16 v3, 0x17

    .line 222
    .line 223
    const/16 v6, 0x19

    .line 224
    .line 225
    const/16 v7, 0x15

    .line 226
    .line 227
    const/16 v10, 0x16

    .line 228
    .line 229
    const/16 v15, 0x18

    .line 230
    .line 231
    filled-new-array {v7, v10, v3, v15, v6}, [I

    .line 232
    .line 233
    .line 234
    move-result-object v19

    .line 235
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 236
    .line 237
    if-eqz v3, :cond_3

    .line 238
    .line 239
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_live_tv_dark_24:I

    .line 240
    .line 241
    move/from16 v27, v12

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_3
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_live_tv_black_24:I

    .line 245
    .line 246
    move/from16 v27, v14

    .line 247
    .line 248
    :goto_1
    new-instance v6, Lcom/mycompany/app/view/MyBarView;

    .line 249
    .line 250
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 251
    .line 252
    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 256
    .line 257
    const/16 v29, 0x0

    .line 258
    .line 259
    const/16 v30, 0x0

    .line 260
    .line 261
    const/16 v20, 0x0

    .line 262
    .line 263
    const/16 v21, 0x0

    .line 264
    .line 265
    const/16 v22, 0x0

    .line 266
    .line 267
    const/16 v23, 0x0

    .line 268
    .line 269
    const/16 v24, 0x0

    .line 270
    .line 271
    const/16 v25, 0x0

    .line 272
    .line 273
    const/16 v26, 0x0

    .line 274
    .line 275
    const/16 v28, 0x0

    .line 276
    .line 277
    move-object/from16 v17, v6

    .line 278
    .line 279
    move-object/from16 v18, v7

    .line 280
    .line 281
    invoke-virtual/range {v17 .. v30}, Lcom/mycompany/app/view/MyBarView;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;IZIIZIIII)V

    .line 282
    .line 283
    .line 284
    move/from16 v12, v27

    .line 285
    .line 286
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 287
    .line 288
    if-eqz v7, :cond_4

    .line 289
    .line 290
    const/high16 v4, -0x1000000

    .line 291
    .line 292
    :cond_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    .line 294
    .line 295
    iget-object v4, v6, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 296
    .line 297
    if-eqz v4, :cond_5

    .line 298
    .line 299
    array-length v4, v4

    .line 300
    goto :goto_2

    .line 301
    :cond_5
    move v4, v14

    .line 302
    :goto_2
    if-nez v4, :cond_6

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_6
    iget-object v7, v6, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 306
    .line 307
    if-eqz v7, :cond_7

    .line 308
    .line 309
    array-length v7, v7

    .line 310
    goto :goto_3

    .line 311
    :cond_7
    move v7, v14

    .line 312
    :goto_3
    if-eq v4, v7, :cond_8

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_8
    move v7, v14

    .line 316
    :goto_4
    if-ge v7, v4, :cond_b

    .line 317
    .line 318
    iget-object v10, v6, Lcom/mycompany/app/view/MyBarView;->g:[I

    .line 319
    .line 320
    aget v10, v10, v7

    .line 321
    .line 322
    if-ne v15, v10, :cond_a

    .line 323
    .line 324
    iget-object v10, v6, Lcom/mycompany/app/view/MyBarView;->j:[Lcom/mycompany/app/view/MyIconView;

    .line 325
    .line 326
    aget-object v10, v10, v7

    .line 327
    .line 328
    if-nez v10, :cond_9

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_9
    invoke-virtual {v10, v3}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v10, v15, v12}, Lcom/mycompany/app/view/MyBarView;->e(Lcom/mycompany/app/view/MyIconView;II)V

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_b
    :goto_6
    new-instance v3, Landroid/view/View;

    .line 342
    .line 343
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 344
    .line 345
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 346
    .line 347
    .line 348
    new-instance v4, Landroid/view/View;

    .line 349
    .line 350
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 351
    .line 352
    invoke-direct {v4, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    new-instance v7, Landroid/view/View;

    .line 356
    .line 357
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 358
    .line 359
    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    new-instance v10, Landroid/view/View;

    .line 363
    .line 364
    iget-object v12, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 365
    .line 366
    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 367
    .line 368
    .line 369
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 370
    .line 371
    iget-object v15, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 372
    .line 373
    invoke-direct {v12, v15}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 377
    .line 378
    mul-int/lit8 v15, v15, 0x5

    .line 379
    .line 380
    int-to-float v15, v15

    .line 381
    invoke-virtual {v12, v15, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 382
    .line 383
    .line 384
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 385
    .line 386
    div-int/2addr v15, v13

    .line 387
    invoke-virtual {v12, v9, v15}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 388
    .line 389
    .line 390
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 391
    .line 392
    sget v13, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 393
    .line 394
    invoke-direct {v9, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    .line 396
    .line 397
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 398
    .line 399
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 400
    .line 401
    sget v15, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 402
    .line 403
    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    .line 405
    .line 406
    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 407
    .line 408
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 409
    .line 410
    sget v8, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 411
    .line 412
    invoke-direct {v15, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    .line 414
    .line 415
    iput v5, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 416
    .line 417
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 418
    .line 419
    sget v11, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 420
    .line 421
    invoke-direct {v8, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 422
    .line 423
    .line 424
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 425
    .line 426
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    .line 428
    sget v0, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 429
    .line 430
    invoke-direct {v11, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 431
    .line 432
    .line 433
    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 434
    .line 435
    new-instance v0, Landroid/widget/LinearLayout;

    .line 436
    .line 437
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 438
    .line 439
    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    .line 459
    .line 460
    new-instance v3, Landroid/widget/FrameLayout;

    .line 461
    .line 462
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 463
    .line 464
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .line 466
    .line 467
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 468
    .line 469
    if-eqz v4, :cond_c

    .line 470
    .line 471
    const/high16 v4, -0x1000000

    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_c
    const/4 v4, -0x1

    .line 475
    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 476
    .line 477
    .line 478
    sget v4, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 479
    .line 480
    const/4 v5, -0x1

    .line 481
    invoke-virtual {v3, v6, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 482
    .line 483
    .line 484
    sget v4, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 485
    .line 486
    invoke-virtual {v3, v0, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 487
    .line 488
    .line 489
    const/4 v0, -0x2

    .line 490
    invoke-virtual {v2, v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_c

    .line 497
    .line 498
    :cond_d
    const/16 v16, 0x5

    .line 499
    .line 500
    if-ne v2, v12, :cond_e

    .line 501
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 508
    .line 509
    sget v3, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_1:I

    .line 510
    .line 511
    invoke-static {v2, v3, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 515
    .line 516
    sget v3, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_2:I

    .line 517
    .line 518
    invoke-static {v2, v3, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 522
    .line 523
    sget v3, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_3:I

    .line 524
    .line 525
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 538
    .line 539
    sget v4, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_4:I

    .line 540
    .line 541
    invoke-static {v3, v4, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 545
    .line 546
    sget v4, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_5:I

    .line 547
    .line 548
    invoke-static {v3, v4, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 552
    .line 553
    sget v4, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_6:I

    .line 554
    .line 555
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 563
    .line 564
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    .line 570
    .line 571
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 572
    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 581
    .line 582
    sget v2, Lnet/kaki87/soul2/testing/R$string;->subtitle_info_7:I

    .line 583
    .line 584
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 585
    .line 586
    .line 587
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 588
    .line 589
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_c

    .line 593
    .line 594
    :cond_e
    if-ne v2, v13, :cond_12

    .line 595
    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 602
    .line 603
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_0:I

    .line 604
    .line 605
    invoke-static {v2, v3, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 609
    .line 610
    sget v3, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_1:I

    .line 611
    .line 612
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .line 623
    .line 624
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 625
    .line 626
    sget v5, Lnet/kaki87/soul2/testing/R$string;->cast_info_6:I

    .line 627
    .line 628
    invoke-static {v3, v5, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 632
    .line 633
    sget v5, Lnet/kaki87/soul2/testing/R$string;->cast_info_7:I

    .line 634
    .line 635
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 643
    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    .line 650
    .line 651
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    .line 659
    .line 660
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 661
    .line 662
    if-nez v0, :cond_f

    .line 663
    .line 664
    goto/16 :goto_c

    .line 665
    .line 666
    :cond_f
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 667
    .line 668
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 669
    .line 670
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 671
    .line 672
    .line 673
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 674
    .line 675
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 676
    .line 677
    invoke-direct {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 678
    .line 679
    .line 680
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 681
    .line 682
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 683
    .line 684
    invoke-direct {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 685
    .line 686
    .line 687
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 688
    .line 689
    if-eqz v6, :cond_10

    .line 690
    .line 691
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_dark_24:I

    .line 692
    .line 693
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 694
    .line 695
    .line 696
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_dark_24:I

    .line 697
    .line 698
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 699
    .line 700
    .line 701
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_24:I

    .line 702
    .line 703
    invoke-virtual {v5, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 704
    .line 705
    .line 706
    const v4, -0xafafb0

    .line 707
    .line 708
    .line 709
    const v6, -0xc0c0c1

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v5, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 719
    .line 720
    .line 721
    goto :goto_8

    .line 722
    :cond_10
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_in_picture_alt_black_24:I

    .line 723
    .line 724
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 725
    .line 726
    .line 727
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_fullscreen_black_24:I

    .line 728
    .line 729
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 730
    .line 731
    .line 732
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_24:I

    .line 733
    .line 734
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 735
    .line 736
    .line 737
    const v6, -0x1f1f20

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5, v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 747
    .line 748
    .line 749
    :goto_8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 750
    .line 751
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 758
    .line 759
    .line 760
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 761
    .line 762
    int-to-float v4, v4

    .line 763
    invoke-virtual {v2, v4, v12}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 764
    .line 765
    .line 766
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 767
    .line 768
    int-to-float v4, v4

    .line 769
    invoke-virtual {v3, v4, v12}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 770
    .line 771
    .line 772
    sget v4, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 773
    .line 774
    int-to-float v4, v4

    .line 775
    invoke-virtual {v5, v4, v12}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 776
    .line 777
    .line 778
    new-instance v4, Lcom/mycompany/app/dialog/DialogCastGuide$5;

    .line 779
    .line 780
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    .line 785
    .line 786
    new-instance v4, Lcom/mycompany/app/dialog/DialogCastGuide$6;

    .line 787
    .line 788
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    .line 793
    .line 794
    new-instance v4, Lcom/mycompany/app/dialog/DialogCastGuide$7;

    .line 795
    .line 796
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v5, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    .line 801
    .line 802
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 803
    .line 804
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 805
    .line 806
    invoke-direct {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 807
    .line 808
    .line 809
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 810
    .line 811
    mul-int/lit8 v6, v6, 0x5

    .line 812
    .line 813
    int-to-float v6, v6

    .line 814
    invoke-virtual {v4, v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 815
    .line 816
    .line 817
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 818
    .line 819
    div-int/2addr v6, v13

    .line 820
    invoke-virtual {v4, v9, v6}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 821
    .line 822
    .line 823
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 824
    .line 825
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 826
    .line 827
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 828
    .line 829
    .line 830
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 831
    .line 832
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 833
    .line 834
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 835
    .line 836
    .line 837
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 838
    .line 839
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 840
    .line 841
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 842
    .line 843
    .line 844
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 845
    .line 846
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 847
    .line 848
    add-int/2addr v9, v10

    .line 849
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 850
    .line 851
    .line 852
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 853
    .line 854
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 855
    .line 856
    add-int/2addr v9, v10

    .line 857
    mul-int/2addr v9, v13

    .line 858
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 859
    .line 860
    .line 861
    new-instance v9, Landroid/widget/FrameLayout;

    .line 862
    .line 863
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 864
    .line 865
    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 866
    .line 867
    .line 868
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 869
    .line 870
    if-eqz v10, :cond_11

    .line 871
    .line 872
    const/high16 v10, -0x1000000

    .line 873
    .line 874
    goto :goto_9

    .line 875
    :cond_11
    const/4 v10, -0x1

    .line 876
    :goto_9
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 877
    .line 878
    .line 879
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 880
    .line 881
    invoke-virtual {v9, v10, v14, v10, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v9, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v9, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v9, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v9, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    .line 895
    .line 896
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 897
    .line 898
    const/4 v3, -0x2

    .line 899
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 900
    .line 901
    .line 902
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 903
    .line 904
    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_c

    .line 911
    .line 912
    :cond_12
    const/4 v0, 0x3

    .line 913
    if-ne v2, v0, :cond_16

    .line 914
    .line 915
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 916
    .line 917
    sget v2, Lnet/kaki87/soul2/testing/R$string;->only_image:I

    .line 918
    .line 919
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 924
    .line 925
    sget v3, Lnet/kaki87/soul2/testing/R$string;->downall_image:I

    .line 926
    .line 927
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 932
    .line 933
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 934
    .line 935
    sget v8, Lnet/kaki87/soul2/testing/R$string;->image_cast_guide_2:I

    .line 936
    .line 937
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    new-array v8, v13, [Ljava/lang/Object;

    .line 942
    .line 943
    aput-object v0, v8, v14

    .line 944
    .line 945
    aput-object v2, v8, v12

    .line 946
    .line 947
    invoke-static {v3, v4, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    .line 952
    .line 953
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 957
    .line 958
    sget v4, Lnet/kaki87/soul2/testing/R$string;->image_cast_guide_1:I

    .line 959
    .line 960
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    .line 974
    .line 975
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 979
    .line 980
    sget v4, Lnet/kaki87/soul2/testing/R$string;->image_cast_guide_3:I

    .line 981
    .line 982
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v3

    .line 986
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 990
    .line 991
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    .line 997
    .line 998
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 999
    .line 1000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    .line 1006
    .line 1007
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 1008
    .line 1009
    if-nez v0, :cond_13

    .line 1010
    .line 1011
    goto/16 :goto_c

    .line 1012
    .line 1013
    :cond_13
    new-instance v2, Lcom/mycompany/app/view/MyRecyclerView;

    .line 1014
    .line 1015
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1016
    .line 1017
    invoke-direct {v2, v3}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 1018
    .line 1019
    .line 1020
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1021
    .line 1022
    new-instance v19, Lcom/mycompany/app/main/MenuIconAdapter;

    .line 1023
    .line 1024
    new-instance v24, Lcom/mycompany/app/dialog/DialogCastGuide$8;

    .line 1025
    .line 1026
    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    const/16 v21, 0x0

    .line 1030
    .line 1031
    const/16 v22, 0x0

    .line 1032
    .line 1033
    const/16 v23, 0x0

    .line 1034
    .line 1035
    move-object/from16 v20, v2

    .line 1036
    .line 1037
    invoke-direct/range {v19 .. v24}, Lcom/mycompany/app/main/MenuIconAdapter;-><init>(Landroid/view/View;[IIZLcom/mycompany/app/main/MenuIconAdapter$MenuListener;)V

    .line 1038
    .line 1039
    .line 1040
    move-object/from16 v2, v19

    .line 1041
    .line 1042
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->l0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 1043
    .line 1044
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1045
    .line 1046
    new-instance v3, Lcom/mycompany/app/view/MyManagerGrid;

    .line 1047
    .line 1048
    move/from16 v4, v16

    .line 1049
    .line 1050
    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1054
    .line 1055
    .line 1056
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1057
    .line 1058
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->l0:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 1059
    .line 1060
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 1064
    .line 1065
    if-nez v2, :cond_14

    .line 1066
    .line 1067
    goto/16 :goto_c

    .line 1068
    .line 1069
    :cond_14
    new-instance v3, Lcom/mycompany/app/dialog/DialogCastGuide$9;

    .line 1070
    .line 1071
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogCastGuide$9;-><init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1075
    .line 1076
    .line 1077
    new-instance v2, Landroid/view/View;

    .line 1078
    .line 1079
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1080
    .line 1081
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1082
    .line 1083
    .line 1084
    new-instance v3, Landroid/view/View;

    .line 1085
    .line 1086
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1087
    .line 1088
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1089
    .line 1090
    .line 1091
    new-instance v4, Landroid/view/View;

    .line 1092
    .line 1093
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1094
    .line 1095
    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1096
    .line 1097
    .line 1098
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 1099
    .line 1100
    div-int/lit8 v7, v6, 0x2

    .line 1101
    .line 1102
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1103
    .line 1104
    sub-int/2addr v7, v8

    .line 1105
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 1106
    .line 1107
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1108
    .line 1109
    invoke-direct {v8, v10}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1110
    .line 1111
    .line 1112
    int-to-float v7, v7

    .line 1113
    invoke-virtual {v8, v7, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 1114
    .line 1115
    .line 1116
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1117
    .line 1118
    div-int/2addr v10, v13

    .line 1119
    invoke-virtual {v8, v9, v10}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 1123
    .line 1124
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1125
    .line 1126
    invoke-direct {v10, v11}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v10, v7, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 1130
    .line 1131
    .line 1132
    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1133
    .line 1134
    div-int/2addr v7, v13

    .line 1135
    invoke-virtual {v10, v9, v7}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 1136
    .line 1137
    .line 1138
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1139
    .line 1140
    invoke-direct {v7, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1141
    .line 1142
    .line 1143
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1144
    .line 1145
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 1146
    .line 1147
    invoke-direct {v9, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1148
    .line 1149
    .line 1150
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1151
    .line 1152
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1153
    .line 1154
    invoke-direct {v11, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1155
    .line 1156
    .line 1157
    iput v5, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1158
    .line 1159
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 1160
    .line 1161
    invoke-direct {v12, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1162
    .line 1163
    .line 1164
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1165
    .line 1166
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1167
    .line 1168
    invoke-direct {v13, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1169
    .line 1170
    .line 1171
    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1172
    .line 1173
    new-instance v5, Landroid/widget/LinearLayout;

    .line 1174
    .line 1175
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1176
    .line 1177
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v5, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v5, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v5, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v5, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v2, Landroid/widget/FrameLayout;

    .line 1199
    .line 1200
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1201
    .line 1202
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1203
    .line 1204
    .line 1205
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1206
    .line 1207
    if-eqz v3, :cond_15

    .line 1208
    .line 1209
    const/high16 v3, -0x1000000

    .line 1210
    .line 1211
    goto :goto_a

    .line 1212
    :cond_15
    const/4 v3, -0x1

    .line 1213
    :goto_a
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1214
    .line 1215
    .line 1216
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 1217
    .line 1218
    const/4 v4, -0x2

    .line 1219
    const/4 v6, -0x1

    .line 1220
    invoke-virtual {v2, v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v2, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v0, v2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    .line 1231
    .line 1232
    goto/16 :goto_c

    .line 1233
    .line 1234
    :cond_16
    const/4 v6, -0x1

    .line 1235
    const/4 v3, 0x4

    .line 1236
    const/16 v4, 0x8

    .line 1237
    .line 1238
    const-string v5, "\n\n"

    .line 1239
    .line 1240
    if-ne v2, v3, :cond_1a

    .line 1241
    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1243
    .line 1244
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    .line 1246
    .line 1247
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1248
    .line 1249
    sget v7, Lnet/kaki87/soul2/testing/R$string;->quick_guide_1:I

    .line 1250
    .line 1251
    invoke-static {v3, v7, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1255
    .line 1256
    sget v5, Lnet/kaki87/soul2/testing/R$string;->quick_guide_2:I

    .line 1257
    .line 1258
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v3

    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1266
    .line 1267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    .line 1273
    .line 1274
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1275
    .line 1276
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    .line 1278
    .line 1279
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 1280
    .line 1281
    if-nez v2, :cond_17

    .line 1282
    .line 1283
    goto/16 :goto_c

    .line 1284
    .line 1285
    :cond_17
    new-instance v3, Landroid/widget/FrameLayout;

    .line 1286
    .line 1287
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1288
    .line 1289
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1290
    .line 1291
    .line 1292
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1293
    .line 1294
    if-eqz v4, :cond_18

    .line 1295
    .line 1296
    const/high16 v6, -0x1000000

    .line 1297
    .line 1298
    :cond_18
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1299
    .line 1300
    .line 1301
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1302
    .line 1303
    invoke-virtual {v3, v4, v14, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1304
    .line 1305
    .line 1306
    const-string v4, "Google"

    .line 1307
    .line 1308
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_search_google:I

    .line 1309
    .line 1310
    invoke-virtual {v1, v3, v14, v4, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->C(Landroid/widget/FrameLayout;ILjava/lang/String;I)V

    .line 1311
    .line 1312
    .line 1313
    const-string v4, "YouTube"

    .line 1314
    .line 1315
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_search_youtube:I

    .line 1316
    .line 1317
    invoke-virtual {v1, v3, v12, v4, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->C(Landroid/widget/FrameLayout;ILjava/lang/String;I)V

    .line 1318
    .line 1319
    .line 1320
    const-string v4, "Facebook"

    .line 1321
    .line 1322
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->ic_facebook:I

    .line 1323
    .line 1324
    invoke-virtual {v1, v3, v13, v4, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->C(Landroid/widget/FrameLayout;ILjava/lang/String;I)V

    .line 1325
    .line 1326
    .line 1327
    const-string v4, "Instagram"

    .line 1328
    .line 1329
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->ic_instagram:I

    .line 1330
    .line 1331
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->C(Landroid/widget/FrameLayout;ILjava/lang/String;I)V

    .line 1332
    .line 1333
    .line 1334
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 1335
    .line 1336
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1337
    .line 1338
    invoke-direct {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1339
    .line 1340
    .line 1341
    const/16 v4, 0x14

    .line 1342
    .line 1343
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1344
    .line 1345
    .line 1346
    move-result v4

    .line 1347
    int-to-float v4, v4

    .line 1348
    invoke-virtual {v0, v4, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 1349
    .line 1350
    .line 1351
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1352
    .line 1353
    div-int/2addr v4, v13

    .line 1354
    invoke-virtual {v0, v9, v4}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 1355
    .line 1356
    .line 1357
    const/16 v4, 0x30

    .line 1358
    .line 1359
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1360
    .line 1361
    .line 1362
    move-result v4

    .line 1363
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1364
    .line 1365
    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1366
    .line 1367
    .line 1368
    const/16 v4, 0x28

    .line 1369
    .line 1370
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1371
    .line 1372
    .line 1373
    move-result v4

    .line 1374
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1375
    .line 1376
    const/16 v4, 0x98

    .line 1377
    .line 1378
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1379
    .line 1380
    .line 1381
    move-result v4

    .line 1382
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1386
    .line 1387
    .line 1388
    new-instance v0, Lcom/mycompany/app/view/MyArrowView;

    .line 1389
    .line 1390
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1391
    .line 1392
    invoke-direct {v0, v4}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyArrowView;->a()V

    .line 1396
    .line 1397
    .line 1398
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1399
    .line 1400
    const/16 v5, 0x50

    .line 1401
    .line 1402
    invoke-virtual {v1, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1403
    .line 1404
    .line 1405
    move-result v5

    .line 1406
    const/16 v6, 0x20

    .line 1407
    .line 1408
    invoke-virtual {v1, v6}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1409
    .line 1410
    .line 1411
    move-result v7

    .line 1412
    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1413
    .line 1414
    .line 1415
    const/16 v5, 0xc

    .line 1416
    .line 1417
    invoke-virtual {v1, v5}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1418
    .line 1419
    .line 1420
    move-result v5

    .line 1421
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1422
    .line 1423
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1424
    .line 1425
    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1426
    .line 1427
    .line 1428
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1429
    .line 1430
    const/4 v4, -0x2

    .line 1431
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1432
    .line 1433
    .line 1434
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1435
    .line 1436
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1444
    .line 1445
    if-eqz v0, :cond_19

    .line 1446
    .line 1447
    invoke-virtual {v1, v6}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1448
    .line 1449
    .line 1450
    move-result v3

    .line 1451
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1452
    .line 1453
    :cond_19
    invoke-virtual {v2, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    .line 1455
    .line 1456
    goto/16 :goto_c

    .line 1457
    .line 1458
    :cond_1a
    const/4 v0, 0x5

    .line 1459
    if-ne v2, v0, :cond_1f

    .line 1460
    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1464
    .line 1465
    .line 1466
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1467
    .line 1468
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_guide_1:I

    .line 1469
    .line 1470
    invoke-static {v2, v3, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1471
    .line 1472
    .line 1473
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1474
    .line 1475
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tab_guide_2:I

    .line 1476
    .line 1477
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1485
    .line 1486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 1494
    .line 1495
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1496
    .line 1497
    .line 1498
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->g0:Landroid/widget/FrameLayout;

    .line 1499
    .line 1500
    if-nez v0, :cond_1b

    .line 1501
    .line 1502
    goto/16 :goto_c

    .line 1503
    .line 1504
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    .line 1505
    .line 1506
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .line 1508
    .line 1509
    move v3, v14

    .line 1510
    :goto_b
    if-ge v3, v13, :cond_1c

    .line 1511
    .line 1512
    new-instance v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 1513
    .line 1514
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1515
    .line 1516
    .line 1517
    iput v3, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 1518
    .line 1519
    const-string v5, "file:///android_asset/shortcut.html"

    .line 1520
    .line 1521
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 1522
    .line 1523
    const-string v5, "Soul"

    .line 1524
    .line 1525
    iput-object v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 1526
    .line 1527
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    .line 1529
    .line 1530
    add-int/lit8 v3, v3, 0x1

    .line 1531
    .line 1532
    goto :goto_b

    .line 1533
    :cond_1c
    new-instance v3, Lcom/mycompany/app/view/MyRecyclerView;

    .line 1534
    .line 1535
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1536
    .line 1537
    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 1538
    .line 1539
    .line 1540
    new-instance v18, Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 1541
    .line 1542
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1543
    .line 1544
    const/16 v24, 0x0

    .line 1545
    .line 1546
    const/16 v25, 0x0

    .line 1547
    .line 1548
    const/16 v21, -0x1

    .line 1549
    .line 1550
    const/16 v22, 0x0

    .line 1551
    .line 1552
    const/16 v23, 0x0

    .line 1553
    .line 1554
    move-object/from16 v20, v2

    .line 1555
    .line 1556
    move-object/from16 v19, v4

    .line 1557
    .line 1558
    invoke-direct/range {v18 .. v25}, Lcom/mycompany/app/web/WebTabBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZIILcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;)V

    .line 1559
    .line 1560
    .line 1561
    move-object/from16 v2, v18

    .line 1562
    .line 1563
    sget v4, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 1564
    .line 1565
    iput-boolean v12, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 1566
    .line 1567
    iput-boolean v12, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 1568
    .line 1569
    const/4 v5, 0x5

    .line 1570
    iput v5, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->r:I

    .line 1571
    .line 1572
    iput-boolean v12, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->s:Z

    .line 1573
    .line 1574
    iput v4, v2, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 1575
    .line 1576
    new-instance v4, Lcom/mycompany/app/view/MyManagerLinear;

    .line 1577
    .line 1578
    invoke-direct {v4, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1585
    .line 1586
    .line 1587
    new-instance v2, Landroid/widget/FrameLayout;

    .line 1588
    .line 1589
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1590
    .line 1591
    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1592
    .line 1593
    .line 1594
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 1595
    .line 1596
    if-eqz v4, :cond_1d

    .line 1597
    .line 1598
    const/high16 v6, -0x1000000

    .line 1599
    .line 1600
    :cond_1d
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1601
    .line 1602
    .line 1603
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1604
    .line 1605
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1606
    .line 1607
    invoke-virtual {v2, v4, v14, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1608
    .line 1609
    .line 1610
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1611
    .line 1612
    sget v5, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 1613
    .line 1614
    const/4 v6, -0x2

    .line 1615
    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1616
    .line 1617
    .line 1618
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1619
    .line 1620
    mul-int/lit8 v5, v5, 0xa

    .line 1621
    .line 1622
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1623
    .line 1624
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    .line 1626
    .line 1627
    new-instance v3, Lcom/mycompany/app/view/MyButtonImage;

    .line 1628
    .line 1629
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1630
    .line 1631
    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 1632
    .line 1633
    .line 1634
    sget v4, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 1635
    .line 1636
    div-int/2addr v4, v13

    .line 1637
    int-to-float v4, v4

    .line 1638
    invoke-virtual {v3, v4, v14}, Lcom/mycompany/app/view/MyButtonImage;->l(FZ)V

    .line 1639
    .line 1640
    .line 1641
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 1642
    .line 1643
    div-int/2addr v4, v13

    .line 1644
    invoke-virtual {v3, v9, v4}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 1645
    .line 1646
    .line 1647
    sget v4, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 1648
    .line 1649
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1650
    .line 1651
    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1652
    .line 1653
    .line 1654
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1655
    .line 1656
    sget v4, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 1657
    .line 1658
    const/16 v7, 0x26

    .line 1659
    .line 1660
    invoke-virtual {v1, v7}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1661
    .line 1662
    .line 1663
    move-result v7

    .line 1664
    add-int/2addr v7, v4

    .line 1665
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    .line 1670
    .line 1671
    new-instance v3, Lcom/mycompany/app/view/MyArrowView;

    .line 1672
    .line 1673
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->a0:Landroid/content/Context;

    .line 1674
    .line 1675
    invoke-direct {v3, v4}, Lcom/mycompany/app/view/MyArrowView;-><init>(Landroid/content/Context;)V

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyArrowView;->a()V

    .line 1679
    .line 1680
    .line 1681
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1682
    .line 1683
    const/16 v6, 0x76

    .line 1684
    .line 1685
    invoke-virtual {v1, v6}, Lcom/mycompany/app/dialog/DialogCastGuide;->B(I)I

    .line 1686
    .line 1687
    .line 1688
    move-result v6

    .line 1689
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1690
    .line 1691
    sub-int/2addr v5, v7

    .line 1692
    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1693
    .line 1694
    .line 1695
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 1696
    .line 1697
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1698
    .line 1699
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1700
    .line 1701
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1702
    .line 1703
    .line 1704
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1705
    .line 1706
    const/4 v4, -0x2

    .line 1707
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1708
    .line 1709
    .line 1710
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1711
    .line 1712
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v2

    .line 1719
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1720
    .line 1721
    if-eqz v2, :cond_1e

    .line 1722
    .line 1723
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 1724
    .line 1725
    add-int/2addr v3, v3

    .line 1726
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1727
    .line 1728
    :cond_1e
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    .line 1730
    .line 1731
    :cond_1f
    :goto_c
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 1732
    .line 1733
    new-instance v2, Lcom/mycompany/app/dialog/DialogCastGuide$3;

    .line 1734
    .line 1735
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogCastGuide$3;-><init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1739
    .line 1740
    .line 1741
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogCastGuide;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 1742
    .line 1743
    new-instance v2, Lcom/mycompany/app/dialog/DialogCastGuide$4;

    .line 1744
    .line 1745
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogCastGuide$4;-><init>(Lcom/mycompany/app/dialog/DialogCastGuide;)V

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 1749
    .line 1750
    .line 1751
    :cond_20
    :goto_d
    return-void
.end method
