.class Lcom/mycompany/app/dialog/DialogSetFilter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetFilter$2;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetFilter$2;->c:Lcom/mycompany/app/dialog/DialogSetFilter;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->d0:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    if-eqz v3, :cond_25

    .line 10
    .line 11
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->b0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1a

    .line 16
    .line 17
    :cond_0
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/high16 v5, -0x1000000

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const v4, -0x50506

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 57
    .line 58
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 59
    .line 60
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 66
    .line 67
    const v4, -0xc0c0c1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const v4, -0x70708

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    const v4, -0xe19938

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 111
    .line 112
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 113
    .line 114
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 115
    .line 116
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 120
    .line 121
    const v4, -0x1f1f20

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    if-eqz v2, :cond_2

    .line 128
    .line 129
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->g0:Landroid/widget/ImageView;

    .line 130
    .line 131
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    const-string v4, "AdGuard"

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->g0:Landroid/widget/ImageView;

    .line 145
    .line 146
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    const-string v4, "Adblock Plus"

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    const/16 v3, 0x2c

    .line 159
    .line 160
    const/16 v4, 0x12

    .line 161
    .line 162
    if-eqz v2, :cond_3

    .line 163
    .line 164
    move v5, v4

    .line 165
    goto :goto_2

    .line 166
    :cond_3
    move v5, v3

    .line 167
    :goto_2
    new-array v6, v5, [Z

    .line 168
    .line 169
    const/4 v7, 0x0

    .line 170
    const-string v8, ""

    .line 171
    .line 172
    const-string v9, "/"

    .line 173
    .line 174
    const/4 v10, 0x0

    .line 175
    if-eqz v2, :cond_6

    .line 176
    .line 177
    sget-object v11, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_4

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_4
    sget-object v11, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    if-eqz v9, :cond_5

    .line 193
    .line 194
    array-length v11, v9

    .line 195
    if-nez v11, :cond_8

    .line 196
    .line 197
    :cond_5
    sput-object v8, Lcom/mycompany/app/pref/PrefAlbum;->t:Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_6
    sget-object v11, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-eqz v11, :cond_7

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_7
    sget-object v11, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    if-eqz v9, :cond_b

    .line 216
    .line 217
    array-length v11, v9

    .line 218
    if-nez v11, :cond_8

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_8
    array-length v8, v9

    .line 222
    move v11, v7

    .line 223
    :goto_3
    if-ge v11, v8, :cond_c

    .line 224
    .line 225
    aget-object v12, v9, v11

    .line 226
    .line 227
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    const/4 v13, -0x1

    .line 232
    if-ne v12, v13, :cond_9

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_9
    if-nez v10, :cond_a

    .line 236
    .line 237
    new-instance v10, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .line 241
    .line 242
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    :goto_5
    sput-object v8, Lcom/mycompany/app/pref/PrefAlbum;->s:Ljava/lang/String;

    .line 253
    .line 254
    :cond_c
    :goto_6
    const/4 v8, 0x1

    .line 255
    if-eqz v10, :cond_11

    .line 256
    .line 257
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_d

    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_d
    move v9, v7

    .line 265
    :goto_7
    if-ge v9, v5, :cond_12

    .line 266
    .line 267
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    if-eqz v11, :cond_f

    .line 272
    .line 273
    :cond_e
    move v11, v7

    .line 274
    goto :goto_8

    .line 275
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    move v12, v7

    .line 280
    :cond_10
    if-ge v12, v11, :cond_e

    .line 281
    .line 282
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    add-int/lit8 v12, v12, 0x1

    .line 287
    .line 288
    check-cast v13, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    if-ne v13, v9, :cond_10

    .line 295
    .line 296
    move v11, v8

    .line 297
    :goto_8
    aput-boolean v11, v6, v9

    .line 298
    .line 299
    add-int/lit8 v9, v9, 0x1

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_11
    :goto_9
    move v9, v7

    .line 303
    :goto_a
    if-ge v9, v5, :cond_12

    .line 304
    .line 305
    aput-boolean v7, v6, v9

    .line 306
    .line 307
    add-int/lit8 v9, v9, 0x1

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_12
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 311
    .line 312
    invoke-virtual {v1, v7}, Lcom/mycompany/app/dialog/DialogSetFilter;->G(Z)V

    .line 313
    .line 314
    .line 315
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 316
    .line 317
    if-eqz v5, :cond_13

    .line 318
    .line 319
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_dark_24:I

    .line 320
    .line 321
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_24:I

    .line 322
    .line 323
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_dark_24:I

    .line 324
    .line 325
    :goto_b
    move v14, v5

    .line 326
    move/from16 v19, v6

    .line 327
    .line 328
    move/from16 v24, v9

    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_13
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 332
    .line 333
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_24:I

    .line 334
    .line 335
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_black_24:I

    .line 336
    .line 337
    goto :goto_b

    .line 338
    :goto_c
    new-instance v5, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .line 342
    .line 343
    const/16 v6, 0x9

    .line 344
    .line 345
    const/4 v9, 0x2

    .line 346
    if-eqz v2, :cond_1c

    .line 347
    .line 348
    move v2, v7

    .line 349
    :goto_d
    if-ge v2, v4, :cond_1b

    .line 350
    .line 351
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 352
    .line 353
    if-eqz v3, :cond_15

    .line 354
    .line 355
    array-length v10, v3

    .line 356
    if-lt v2, v10, :cond_14

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_14
    aget-boolean v3, v3, v2

    .line 360
    .line 361
    move/from16 v30, v3

    .line 362
    .line 363
    goto :goto_f

    .line 364
    :cond_15
    :goto_e
    move/from16 v30, v7

    .line 365
    .line 366
    :goto_f
    if-nez v2, :cond_17

    .line 367
    .line 368
    :cond_16
    :goto_10
    move/from16 v27, v8

    .line 369
    .line 370
    goto :goto_12

    .line 371
    :cond_17
    if-eq v2, v8, :cond_1a

    .line 372
    .line 373
    const/16 v3, 0x8

    .line 374
    .line 375
    if-ne v2, v3, :cond_18

    .line 376
    .line 377
    goto :goto_11

    .line 378
    :cond_18
    if-eq v2, v9, :cond_16

    .line 379
    .line 380
    if-ne v2, v6, :cond_19

    .line 381
    .line 382
    goto :goto_10

    .line 383
    :cond_19
    move/from16 v27, v7

    .line 384
    .line 385
    goto :goto_12

    .line 386
    :cond_1a
    :goto_11
    move/from16 v27, v9

    .line 387
    .line 388
    :goto_12
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 389
    .line 390
    sget-object v3, Lcom/mycompany/app/dialog/DialogSetFilter;->q0:[[Ljava/lang/String;

    .line 391
    .line 392
    aget-object v3, v3, v2

    .line 393
    .line 394
    aget-object v28, v3, v7

    .line 395
    .line 396
    const/16 v29, 0x0

    .line 397
    .line 398
    move/from16 v26, v2

    .line 399
    .line 400
    invoke-direct/range {v25 .. v30}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v2, v25

    .line 404
    .line 405
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    add-int/lit8 v2, v26, 0x1

    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_1b
    move v11, v4

    .line 412
    move v2, v9

    .line 413
    goto :goto_19

    .line 414
    :cond_1c
    move v2, v7

    .line 415
    :goto_13
    const/16 v4, 0xa

    .line 416
    .line 417
    if-ge v2, v3, :cond_24

    .line 418
    .line 419
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->e0:[Z

    .line 420
    .line 421
    if-eqz v10, :cond_1e

    .line 422
    .line 423
    array-length v11, v10

    .line 424
    if-lt v2, v11, :cond_1d

    .line 425
    .line 426
    goto :goto_14

    .line 427
    :cond_1d
    aget-boolean v10, v10, v2

    .line 428
    .line 429
    move/from16 v30, v10

    .line 430
    .line 431
    goto :goto_15

    .line 432
    :cond_1e
    :goto_14
    move/from16 v30, v7

    .line 433
    .line 434
    :goto_15
    const/4 v10, 0x3

    .line 435
    if-nez v2, :cond_1f

    .line 436
    .line 437
    move/from16 v27, v10

    .line 438
    .line 439
    goto :goto_18

    .line 440
    :cond_1f
    if-eqz v2, :cond_23

    .line 441
    .line 442
    if-ne v2, v6, :cond_20

    .line 443
    .line 444
    goto :goto_17

    .line 445
    :cond_20
    if-eq v2, v8, :cond_22

    .line 446
    .line 447
    if-ne v2, v4, :cond_21

    .line 448
    .line 449
    goto :goto_16

    .line 450
    :cond_21
    move/from16 v27, v7

    .line 451
    .line 452
    goto :goto_18

    .line 453
    :cond_22
    :goto_16
    move/from16 v27, v8

    .line 454
    .line 455
    goto :goto_18

    .line 456
    :cond_23
    :goto_17
    move/from16 v27, v9

    .line 457
    .line 458
    :goto_18
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 459
    .line 460
    sget-object v4, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 461
    .line 462
    aget-object v4, v4, v2

    .line 463
    .line 464
    aget-object v28, v4, v7

    .line 465
    .line 466
    aget-object v29, v4, v10

    .line 467
    .line 468
    move/from16 v26, v2

    .line 469
    .line 470
    invoke-direct/range {v25 .. v30}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v2, v25

    .line 474
    .line 475
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    add-int/lit8 v2, v26, 0x1

    .line 479
    .line 480
    goto :goto_13

    .line 481
    :cond_24
    move v11, v3

    .line 482
    move v6, v4

    .line 483
    move v2, v8

    .line 484
    :goto_19
    new-instance v10, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 485
    .line 486
    sget v12, Lnet/kaki87/soul2/testing/R$string;->basic:I

    .line 487
    .line 488
    const/4 v13, 0x0

    .line 489
    const/4 v15, 0x1

    .line 490
    invoke-direct/range {v10 .. v15}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v5, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    add-int/2addr v2, v8

    .line 497
    new-instance v15, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 498
    .line 499
    add-int/lit8 v16, v11, 0x1

    .line 500
    .line 501
    sget v17, Lnet/kaki87/soul2/testing/R$string;->functional:I

    .line 502
    .line 503
    const/16 v18, 0x0

    .line 504
    .line 505
    const/16 v20, 0x1

    .line 506
    .line 507
    invoke-direct/range {v15 .. v20}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5, v2, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    add-int/2addr v6, v9

    .line 514
    new-instance v20, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 515
    .line 516
    add-int/lit8 v21, v11, 0x2

    .line 517
    .line 518
    sget v22, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 519
    .line 520
    const/16 v23, 0x0

    .line 521
    .line 522
    const/16 v25, 0x1

    .line 523
    .line 524
    invoke-direct/range {v20 .. v25}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;IZ)V

    .line 525
    .line 526
    .line 527
    move-object/from16 v2, v20

    .line 528
    .line 529
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 533
    .line 534
    invoke-direct {v2, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 535
    .line 536
    .line 537
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 538
    .line 539
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetFilter$3;

    .line 540
    .line 541
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$3;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 542
    .line 543
    .line 544
    invoke-direct {v3, v5, v8, v2, v4}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 545
    .line 546
    .line 547
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 548
    .line 549
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 550
    .line 551
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 552
    .line 553
    .line 554
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 555
    .line 556
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 557
    .line 558
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 559
    .line 560
    .line 561
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 562
    .line 563
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFilter$4;

    .line 564
    .line 565
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$4;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 569
    .line 570
    .line 571
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->j0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 572
    .line 573
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFilter$5;

    .line 574
    .line 575
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$5;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    .line 580
    .line 581
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 582
    .line 583
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFilter$6;

    .line 584
    .line 585
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$6;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    .line 590
    .line 591
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetFilter;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 592
    .line 593
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetFilter$7;

    .line 594
    .line 595
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetFilter$7;-><init>(Lcom/mycompany/app/dialog/DialogSetFilter;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 599
    .line 600
    .line 601
    :cond_25
    :goto_1a
    return-void
.end method
