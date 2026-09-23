.class Lcom/mycompany/app/dialog/DialogExtract$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$8$1;->c:Lcom/mycompany/app/dialog/DialogExtract$8;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract$8$1;->c:Lcom/mycompany/app/dialog/DialogExtract$8;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogExtract$8;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 6
    .line 7
    iget v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->e0:I

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->R0:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_c

    .line 15
    .line 16
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    goto/16 :goto_c

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogExtract;->E(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_c

    .line 29
    .line 30
    :cond_2
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->f0:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const/4 v8, -0x1

    .line 47
    const/4 v9, 0x0

    .line 48
    if-nez v7, :cond_14

    .line 49
    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_3
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 59
    .line 60
    if-eqz v7, :cond_13

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_4

    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_4
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v10, 0x0

    .line 77
    if-nez v7, :cond_e

    .line 78
    .line 79
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 82
    .line 83
    const-string v11, "_display_name"

    .line 84
    .line 85
    if-eqz v7, :cond_9

    .line 86
    .line 87
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-static {v6, v12}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    filled-new-array {v11}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 121
    .line 122
    .line 123
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    if-eqz v6, :cond_8

    .line 125
    .line 126
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_8

    .line 131
    .line 132
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    new-instance v11, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    :cond_6
    :try_start_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-nez v13, :cond_7

    .line 150
    .line 151
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 155
    .line 156
    .line 157
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    if-nez v12, :cond_6

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :catch_0
    :cond_8
    move-object v11, v9

    .line 162
    goto :goto_0

    .line 163
    :catch_1
    move-object v6, v9

    .line 164
    move-object v11, v6

    .line 165
    :catch_2
    :goto_0
    if-eqz v6, :cond_a

    .line 166
    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    :goto_1
    move-object v11, v9

    .line 172
    :cond_a
    :goto_2
    if-eqz v11, :cond_d

    .line 173
    .line 174
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_b

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    move v7, v10

    .line 193
    :goto_3
    if-ge v7, v6, :cond_e

    .line 194
    .line 195
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 200
    .line 201
    check-cast v12, Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-eqz v13, :cond_c

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_c
    iget-object v13, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 211
    .line 212
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 213
    .line 214
    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_d
    :goto_4
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 223
    .line 224
    goto/16 :goto_9

    .line 225
    .line 226
    :cond_e
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_15

    .line 233
    .line 234
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 235
    .line 236
    if-eqz v6, :cond_15

    .line 237
    .line 238
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_f

    .line 243
    .line 244
    goto/16 :goto_9

    .line 245
    .line 246
    :cond_f
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 247
    .line 248
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 249
    .line 250
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-nez v6, :cond_10

    .line 259
    .line 260
    goto :goto_9

    .line 261
    :cond_10
    const-string v6, ")"

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    const-string v11, " ("

    .line 268
    .line 269
    if-eqz v7, :cond_11

    .line 270
    .line 271
    invoke-virtual {v5, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-eq v7, v8, :cond_11

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    add-int/lit8 v12, v12, -0x3

    .line 282
    .line 283
    if-ge v7, v12, :cond_11

    .line 284
    .line 285
    add-int/lit8 v12, v7, 0x2

    .line 286
    .line 287
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    sub-int/2addr v13, v4

    .line 292
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result v12
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 300
    :try_start_4
    invoke-virtual {v5, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 304
    :catch_3
    :goto_5
    move-object v7, v5

    .line 305
    goto :goto_6

    .line 306
    :catch_4
    :cond_11
    move v12, v4

    .line 307
    goto :goto_5

    .line 308
    :cond_12
    :goto_6
    add-int/2addr v12, v4

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 331
    .line 332
    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    iget-object v13, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v13

    .line 342
    if-nez v13, :cond_12

    .line 343
    .line 344
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_13
    :goto_7
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 351
    .line 352
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_14
    :goto_8
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->L0:Ljava/lang/String;

    .line 356
    .line 357
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->M0:Ljava/util/ArrayList;

    .line 358
    .line 359
    :cond_15
    :goto_9
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->A0:[Ljava/lang/String;

    .line 360
    .line 361
    aput-object v5, v6, v2

    .line 362
    .line 363
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->k0:[Lcom/mycompany/app/view/MyRoundImage;

    .line 364
    .line 365
    aget-object v6, v6, v2

    .line 366
    .line 367
    invoke-virtual {v1, v6, v2}, Lcom/mycompany/app/dialog/DialogExtract;->G(Lcom/mycompany/app/view/MyRoundImage;I)V

    .line 368
    .line 369
    .line 370
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 371
    .line 372
    aget-object v6, v6, v2

    .line 373
    .line 374
    iget-object v3, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 380
    .line 381
    aget-object v3, v3, v2

    .line 382
    .line 383
    if-nez v2, :cond_16

    .line 384
    .line 385
    const v6, -0xe19938

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :cond_16
    const v6, -0x252526

    .line 390
    .line 391
    .line 392
    :goto_a
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 393
    .line 394
    .line 395
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 396
    .line 397
    aget-object v3, v3, v2

    .line 398
    .line 399
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    .line 401
    .line 402
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 403
    .line 404
    aget-object v3, v3, v2

    .line 405
    .line 406
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 410
    .line 411
    aget-object v3, v3, v2

    .line 412
    .line 413
    new-instance v5, Lcom/mycompany/app/dialog/DialogExtract$9;

    .line 414
    .line 415
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogExtract$9;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 419
    .line 420
    .line 421
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 422
    .line 423
    if-eqz v3, :cond_18

    .line 424
    .line 425
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->S0:Landroid/view/View;

    .line 426
    .line 427
    if-eqz v3, :cond_17

    .line 428
    .line 429
    const v5, -0xc0c0c1

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 433
    .line 434
    .line 435
    :cond_17
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->T0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 436
    .line 437
    const v5, -0x3e3e3f

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    .line 442
    .line 443
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->U0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 444
    .line 445
    const v5, -0x50506

    .line 446
    .line 447
    .line 448
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    .line 450
    .line 451
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->V0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 452
    .line 453
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    .line 455
    .line 456
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->W0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 457
    .line 458
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    .line 460
    .line 461
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->X0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 462
    .line 463
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 464
    .line 465
    .line 466
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->Y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 467
    .line 468
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    .line 470
    .line 471
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->Z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 472
    .line 473
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    .line 475
    .line 476
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->a1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 477
    .line 478
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    .line 480
    .line 481
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 482
    .line 483
    aget-object v3, v3, v2

    .line 484
    .line 485
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 489
    .line 490
    aget-object v3, v3, v2

    .line 491
    .line 492
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 496
    .line 497
    aget-object v3, v3, v2

    .line 498
    .line 499
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 500
    .line 501
    .line 502
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 503
    .line 504
    aget-object v3, v3, v2

    .line 505
    .line 506
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    .line 508
    .line 509
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 510
    .line 511
    aget-object v3, v3, v2

    .line 512
    .line 513
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 514
    .line 515
    .line 516
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 517
    .line 518
    aget-object v3, v3, v2

    .line 519
    .line 520
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    .line 522
    .line 523
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 524
    .line 525
    aget-object v3, v3, v2

    .line 526
    .line 527
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    .line 529
    .line 530
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 531
    .line 532
    aget-object v3, v3, v2

    .line 533
    .line 534
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    .line 536
    .line 537
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 538
    .line 539
    aget-object v3, v3, v2

    .line 540
    .line 541
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 545
    .line 546
    aget-object v2, v3, v2

    .line 547
    .line 548
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    .line 550
    .line 551
    goto/16 :goto_b

    .line 552
    .line 553
    :cond_18
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->S0:Landroid/view/View;

    .line 554
    .line 555
    if-eqz v3, :cond_19

    .line 556
    .line 557
    const v5, -0x70708

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 561
    .line 562
    .line 563
    :cond_19
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->T0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 564
    .line 565
    const v5, -0x9e9e9f

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    .line 570
    .line 571
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->U0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 572
    .line 573
    const/high16 v5, -0x1000000

    .line 574
    .line 575
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    .line 577
    .line 578
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->V0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 579
    .line 580
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    .line 582
    .line 583
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->W0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 584
    .line 585
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    .line 587
    .line 588
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->X0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 589
    .line 590
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    .line 592
    .line 593
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->Y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 594
    .line 595
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 596
    .line 597
    .line 598
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->Z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 599
    .line 600
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    .line 602
    .line 603
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->a1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 604
    .line 605
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    .line 607
    .line 608
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->l0:[Landroid/widget/TextView;

    .line 609
    .line 610
    aget-object v3, v3, v2

    .line 611
    .line 612
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    .line 614
    .line 615
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 616
    .line 617
    aget-object v3, v3, v2

    .line 618
    .line 619
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 620
    .line 621
    .line 622
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->p0:[Landroid/widget/TextView;

    .line 623
    .line 624
    aget-object v3, v3, v2

    .line 625
    .line 626
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    .line 628
    .line 629
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->r0:[Landroid/widget/TextView;

    .line 630
    .line 631
    aget-object v3, v3, v2

    .line 632
    .line 633
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 634
    .line 635
    .line 636
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->t0:[Landroid/widget/TextView;

    .line 637
    .line 638
    aget-object v3, v3, v2

    .line 639
    .line 640
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    .line 642
    .line 643
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->u0:[Landroid/widget/TextView;

    .line 644
    .line 645
    aget-object v3, v3, v2

    .line 646
    .line 647
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    .line 649
    .line 650
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->v0:[Landroid/widget/EditText;

    .line 651
    .line 652
    aget-object v3, v3, v2

    .line 653
    .line 654
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    .line 656
    .line 657
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->x0:[Landroid/widget/TextView;

    .line 658
    .line 659
    aget-object v3, v3, v2

    .line 660
    .line 661
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 662
    .line 663
    .line 664
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->y0:[Landroid/widget/TextView;

    .line 665
    .line 666
    aget-object v3, v3, v2

    .line 667
    .line 668
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    .line 670
    .line 671
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->z0:[Landroid/widget/TextView;

    .line 672
    .line 673
    aget-object v2, v3, v2

    .line 674
    .line 675
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 676
    .line 677
    .line 678
    :goto_b
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 679
    .line 680
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->R0:Landroid/widget/LinearLayout;

    .line 681
    .line 682
    const/4 v5, -0x2

    .line 683
    invoke-virtual {v2, v3, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 684
    .line 685
    .line 686
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->R0:Landroid/widget/LinearLayout;

    .line 687
    .line 688
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->S0:Landroid/view/View;

    .line 689
    .line 690
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->T0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 691
    .line 692
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->U0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 693
    .line 694
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->V0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 695
    .line 696
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->W0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 697
    .line 698
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->X0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 699
    .line 700
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->Y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 701
    .line 702
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->Z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 703
    .line 704
    iput-object v9, v1, Lcom/mycompany/app/dialog/DialogExtract;->a1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 705
    .line 706
    :goto_c
    iget v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->e0:I

    .line 707
    .line 708
    add-int/2addr v2, v4

    .line 709
    iput v2, v1, Lcom/mycompany/app/dialog/DialogExtract;->e0:I

    .line 710
    .line 711
    iget v3, v1, Lcom/mycompany/app/dialog/DialogExtract;->d0:I

    .line 712
    .line 713
    if-ge v2, v3, :cond_1b

    .line 714
    .line 715
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 716
    .line 717
    if-nez v2, :cond_1a

    .line 718
    .line 719
    goto :goto_d

    .line 720
    :cond_1a
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogExtract;->Q0:Ljava/lang/Runnable;

    .line 721
    .line 722
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    .line 724
    .line 725
    return-void

    .line 726
    :cond_1b
    iget-object v1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 727
    .line 728
    if-nez v1, :cond_1c

    .line 729
    .line 730
    :goto_d
    return-void

    .line 731
    :cond_1c
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$8$1$1;

    .line 732
    .line 733
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$8$1$1;-><init>(Lcom/mycompany/app/dialog/DialogExtract$8$1;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 737
    .line 738
    .line 739
    return-void
.end method
