.class Lcom/mycompany/app/web/WebNestView$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$26;->c:Lcom/mycompany/app/web/WebNestView;

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView$26;->c:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebNestView;->t2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebNestView;->u2:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebNestView;->v2:Z

    .line 10
    .line 11
    iget-object v6, v1, Lcom/mycompany/app/web/WebNestView;->w2:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    iput-object v12, v1, Lcom/mycompany/app/web/WebNestView;->t2:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v12, v1, Lcom/mycompany/app/web/WebNestView;->u2:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    iput-boolean v13, v1, Lcom/mycompany/app/web/WebNestView;->v2:Z

    .line 20
    .line 21
    iput-object v12, v1, Lcom/mycompany/app/web/WebNestView;->w2:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->t()Lcom/mycompany/app/web/WebClean;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_46

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v14

    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    iget-boolean v7, v5, Lcom/mycompany/app/web/WebClean;->b:Z

    .line 36
    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    iget-boolean v7, v5, Lcom/mycompany/app/web/WebClean;->j:Z

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    iget-boolean v7, v5, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 44
    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    :cond_0
    move v4, v13

    .line 48
    goto/16 :goto_1f

    .line 49
    .line 50
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    goto/16 :goto_20

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v5, v13}, Lcom/mycompany/app/web/WebClean;->w0(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_3

    .line 66
    .line 67
    :goto_0
    move-object v0, v12

    .line 68
    move v11, v13

    .line 69
    goto/16 :goto_17

    .line 70
    .line 71
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v5, v3}, Lcom/mycompany/app/web/WebClean;->W(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_5

    .line 83
    .line 84
    move-object v0, v12

    .line 85
    :goto_1
    const/4 v11, 0x1

    .line 86
    goto/16 :goto_17

    .line 87
    .line 88
    :cond_5
    :try_start_0
    iput-object v12, v5, Lcom/mycompany/app/web/WebClean;->q:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v5, v7, v6}, Lcom/mycompany/app/web/WebClean;->F(ILjava/lang/String;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    iput-object v7, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 95
    .line 96
    iput-object v12, v5, Lcom/mycompany/app/web/WebClean;->q:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-boolean v8, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 99
    .line 100
    if-nez v8, :cond_7

    .line 101
    .line 102
    if-nez v7, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    iput-object v3, v5, Lcom/mycompany/app/web/WebClean;->k1:Ljava/lang/String;

    .line 106
    .line 107
    check-cast v7, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    move v9, v13

    .line 114
    :goto_2
    if-ge v9, v8, :cond_39

    .line 115
    .line 116
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    add-int/lit8 v16, v9, 0x1

    .line 121
    .line 122
    check-cast v10, Lcom/mycompany/app/web/WebClean$PosItem;

    .line 123
    .line 124
    iget-boolean v9, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 125
    .line 126
    if-nez v9, :cond_7

    .line 127
    .line 128
    iget-object v9, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 129
    .line 130
    if-nez v9, :cond_8

    .line 131
    .line 132
    :catch_0
    :cond_7
    :goto_3
    move-object v0, v12

    .line 133
    goto/16 :goto_9

    .line 134
    .line 135
    :cond_8
    if-nez v10, :cond_9

    .line 136
    .line 137
    move/from16 v9, v16

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_9
    move-object v9, v7

    .line 141
    iget v7, v10, Lcom/mycompany/app/web/WebClean$PosItem;->a:I

    .line 142
    .line 143
    iget v10, v10, Lcom/mycompany/app/web/WebClean$PosItem;->b:I

    .line 144
    .line 145
    iput-object v12, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 146
    .line 147
    const-string v11, "class=\""

    .line 148
    .line 149
    invoke-static {v6, v7, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v11
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/16 v15, 0x22

    .line 154
    .line 155
    if-le v11, v7, :cond_c

    .line 156
    .line 157
    add-int/lit8 v11, v11, 0x7

    .line 158
    .line 159
    if-lt v11, v10, :cond_a

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_a
    :try_start_1
    invoke-static {v6, v15, v11, v10}, Lcom/mycompany/app/main/MainUtil;->a5(Ljava/lang/String;CII)I

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-le v12, v11, :cond_c

    .line 167
    .line 168
    if-lt v12, v10, :cond_b

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_b
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    goto :goto_5

    .line 176
    :cond_c
    :goto_4
    const/4 v11, 0x0

    .line 177
    :goto_5
    iput-object v11, v5, Lcom/mycompany/app/web/WebClean;->m1:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v11
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    const-string v12, "no_ads"

    .line 184
    .line 185
    if-nez v11, :cond_19

    .line 186
    .line 187
    :try_start_2
    iget-object v11, v5, Lcom/mycompany/app/web/WebClean;->s:Ljava/util/ArrayList;

    .line 188
    .line 189
    if-nez v11, :cond_d

    .line 190
    .line 191
    new-instance v11, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v11, v5, Lcom/mycompany/app/web/WebClean;->s:Ljava/util/ArrayList;

    .line 197
    .line 198
    iget-object v13, v5, Lcom/mycompany/app/web/WebClean;->m1:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_d
    iget-object v13, v5, Lcom/mycompany/app/web/WebClean;->m1:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_e

    .line 211
    .line 212
    goto/16 :goto_c

    .line 213
    .line 214
    :cond_e
    iget-object v11, v5, Lcom/mycompany/app/web/WebClean;->s:Ljava/util/ArrayList;

    .line 215
    .line 216
    iget-object v13, v5, Lcom/mycompany/app/web/WebClean;->m1:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :goto_6
    iget-object v11, v5, Lcom/mycompany/app/web/WebClean;->e1:Ljava/util/ArrayList;

    .line 222
    .line 223
    if-eqz v11, :cond_13

    .line 224
    .line 225
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-nez v11, :cond_13

    .line 230
    .line 231
    iget-boolean v11, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 232
    .line 233
    if-nez v11, :cond_12

    .line 234
    .line 235
    iget-object v11, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 236
    .line 237
    if-nez v11, :cond_f

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_f
    invoke-static {v7, v10, v6}, Lcom/mycompany/app/web/WebClean;->H(IILjava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    iput-object v11, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebClean;->v()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    if-nez v13, :cond_11

    .line 255
    .line 256
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-nez v13, :cond_10

    .line 261
    .line 262
    invoke-virtual {v5, v3, v11, v4}, Lcom/mycompany/app/web/WebClean;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    :cond_10
    const/4 v11, 0x1

    .line 266
    :goto_7
    const/4 v13, 0x1

    .line 267
    goto :goto_a

    .line 268
    :cond_11
    const/4 v11, 0x0

    .line 269
    goto :goto_7

    .line 270
    :catch_1
    :cond_12
    :goto_8
    const/4 v0, 0x0

    .line 271
    :catch_2
    :goto_9
    const/4 v11, 0x0

    .line 272
    goto/16 :goto_17

    .line 273
    .line 274
    :cond_13
    const/4 v11, 0x0

    .line 275
    const/4 v13, 0x0

    .line 276
    :goto_a
    if-eqz v11, :cond_14

    .line 277
    .line 278
    :goto_b
    move-object v7, v9

    .line 279
    move/from16 v9, v16

    .line 280
    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v13, 0x0

    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :cond_14
    iget-object v15, v5, Lcom/mycompany/app/web/WebClean;->a1:Ljava/util/ArrayList;

    .line 286
    .line 287
    if-eqz v15, :cond_18

    .line 288
    .line 289
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    if-nez v15, :cond_18

    .line 294
    .line 295
    iget-boolean v15, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 296
    .line 297
    if-nez v15, :cond_12

    .line 298
    .line 299
    iget-object v15, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 300
    .line 301
    if-nez v15, :cond_15

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_15
    if-nez v13, :cond_16

    .line 305
    .line 306
    invoke-static {v7, v10, v6}, Lcom/mycompany/app/web/WebClean;->H(IILjava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    iput-object v13, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 311
    .line 312
    const/4 v13, 0x1

    .line 313
    :cond_16
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebClean;->q()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v15

    .line 317
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v18

    .line 321
    if-nez v18, :cond_18

    .line 322
    .line 323
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v11

    .line 327
    if-nez v11, :cond_17

    .line 328
    .line 329
    invoke-virtual {v5, v3, v15, v4}, Lcom/mycompany/app/web/WebClean;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    :cond_17
    const/4 v11, 0x1

    .line 333
    :cond_18
    if-eqz v11, :cond_1a

    .line 334
    .line 335
    goto :goto_b

    .line 336
    :cond_19
    :goto_c
    const/4 v11, 0x0

    .line 337
    const/4 v13, 0x0

    .line 338
    :cond_1a
    const-string v15, "id=\""

    .line 339
    .line 340
    invoke-static {v6, v7, v10, v15}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v15

    .line 344
    if-le v15, v7, :cond_1d

    .line 345
    .line 346
    add-int/lit8 v15, v15, 0x4

    .line 347
    .line 348
    if-lt v15, v10, :cond_1b

    .line 349
    .line 350
    goto :goto_d

    .line 351
    :cond_1b
    const/16 v0, 0x22

    .line 352
    .line 353
    invoke-static {v6, v0, v15, v10}, Lcom/mycompany/app/main/MainUtil;->a5(Ljava/lang/String;CII)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-le v0, v15, :cond_1d

    .line 358
    .line 359
    if-lt v0, v10, :cond_1c

    .line 360
    .line 361
    goto :goto_d

    .line 362
    :cond_1c
    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    goto :goto_e

    .line 367
    :cond_1d
    :goto_d
    const/4 v0, 0x0

    .line 368
    :goto_e
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->n1:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_29

    .line 375
    .line 376
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->t:Ljava/util/ArrayList;

    .line 377
    .line 378
    if-nez v0, :cond_1e

    .line 379
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->t:Ljava/util/ArrayList;

    .line 386
    .line 387
    iget-object v15, v5, Lcom/mycompany/app/web/WebClean;->n1:Ljava/lang/String;

    .line 388
    .line 389
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_1e
    iget-object v15, v5, Lcom/mycompany/app/web/WebClean;->n1:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_1f

    .line 400
    .line 401
    goto/16 :goto_11

    .line 402
    .line 403
    :cond_1f
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->t:Ljava/util/ArrayList;

    .line 404
    .line 405
    iget-object v15, v5, Lcom/mycompany/app/web/WebClean;->n1:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    :goto_f
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->g1:Ljava/util/ArrayList;

    .line 411
    .line 412
    if-eqz v0, :cond_23

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-nez v0, :cond_23

    .line 419
    .line 420
    iget-boolean v0, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 421
    .line 422
    if-nez v0, :cond_12

    .line 423
    .line 424
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 425
    .line 426
    if-nez v0, :cond_20

    .line 427
    .line 428
    goto/16 :goto_8

    .line 429
    .line 430
    :cond_20
    if-nez v13, :cond_21

    .line 431
    .line 432
    invoke-static {v7, v10, v6}, Lcom/mycompany/app/web/WebClean;->H(IILjava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 437
    .line 438
    const/4 v13, 0x1

    .line 439
    :cond_21
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebClean;->x()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 444
    .line 445
    .line 446
    move-result v15

    .line 447
    if-nez v15, :cond_23

    .line 448
    .line 449
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    if-nez v11, :cond_22

    .line 454
    .line 455
    invoke-virtual {v5, v3, v0, v4}, Lcom/mycompany/app/web/WebClean;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    .line 457
    .line 458
    :cond_22
    const/4 v11, 0x1

    .line 459
    :cond_23
    if-eqz v11, :cond_24

    .line 460
    .line 461
    :goto_10
    move-object/from16 v0, p0

    .line 462
    .line 463
    goto/16 :goto_b

    .line 464
    .line 465
    :cond_24
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->c1:Ljava/util/ArrayList;

    .line 466
    .line 467
    if-eqz v0, :cond_28

    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_28

    .line 474
    .line 475
    iget-boolean v0, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 476
    .line 477
    if-nez v0, :cond_12

    .line 478
    .line 479
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 480
    .line 481
    if-nez v0, :cond_25

    .line 482
    .line 483
    goto/16 :goto_8

    .line 484
    .line 485
    :cond_25
    if-nez v13, :cond_26

    .line 486
    .line 487
    invoke-static {v7, v10, v6}, Lcom/mycompany/app/web/WebClean;->H(IILjava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 492
    .line 493
    const/4 v13, 0x1

    .line 494
    :cond_26
    invoke-virtual {v5}, Lcom/mycompany/app/web/WebClean;->B()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v15

    .line 502
    if-nez v15, :cond_28

    .line 503
    .line 504
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v11

    .line 508
    if-nez v11, :cond_27

    .line 509
    .line 510
    invoke-virtual {v5, v3, v0, v4}, Lcom/mycompany/app/web/WebClean;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 511
    .line 512
    .line 513
    :cond_27
    const/4 v11, 0x1

    .line 514
    :cond_28
    if-eqz v11, :cond_29

    .line 515
    .line 516
    goto :goto_10

    .line 517
    :cond_29
    :goto_11
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->i1:Ljava/util/ArrayList;

    .line 518
    .line 519
    if-eqz v0, :cond_38

    .line 520
    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-nez v0, :cond_38

    .line 526
    .line 527
    iget-boolean v0, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 528
    .line 529
    if-nez v0, :cond_12

    .line 530
    .line 531
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 532
    .line 533
    if-nez v0, :cond_2a

    .line 534
    .line 535
    goto/16 :goto_8

    .line 536
    .line 537
    :cond_2a
    if-nez v13, :cond_2b

    .line 538
    .line 539
    invoke-static {v7, v10, v6}, Lcom/mycompany/app/web/WebClean;->H(IILjava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->l1:Ljava/lang/String;

    .line 544
    .line 545
    :cond_2b
    iget-object v0, v5, Lcom/mycompany/app/web/WebClean;->i1:Ljava/util/ArrayList;

    .line 546
    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v12

    .line 551
    const/4 v11, 0x0

    .line 552
    :goto_12
    if-ge v11, v12, :cond_37

    .line 553
    .line 554
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v13

    .line 558
    add-int/lit8 v15, v11, 0x1

    .line 559
    .line 560
    check-cast v13, Lcom/mycompany/app/web/WebClean$ExpItem;

    .line 561
    .line 562
    iget-boolean v11, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 563
    .line 564
    if-nez v11, :cond_12

    .line 565
    .line 566
    iget-object v11, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 567
    .line 568
    if-nez v11, :cond_2c

    .line 569
    .line 570
    goto/16 :goto_8

    .line 571
    .line 572
    :cond_2c
    if-nez v13, :cond_2d

    .line 573
    .line 574
    :goto_13
    move v11, v15

    .line 575
    goto :goto_12

    .line 576
    :cond_2d
    move-object v11, v9

    .line 577
    invoke-virtual {v5, v13}, Lcom/mycompany/app/web/WebClean;->y(Lcom/mycompany/app/web/WebClean$ExpItem;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v9

    .line 581
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 582
    .line 583
    .line 584
    move-result v17

    .line 585
    if-eqz v17, :cond_2e

    .line 586
    .line 587
    move-object v9, v11

    .line 588
    goto :goto_13

    .line 589
    :cond_2e
    move/from16 v17, v8

    .line 590
    .line 591
    move v8, v10

    .line 592
    iget-object v10, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->d:Ljava/lang/String;

    .line 593
    .line 594
    move-object/from16 v18, v11

    .line 595
    .line 596
    iget v11, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->e:I

    .line 597
    .line 598
    invoke-virtual/range {v5 .. v11}, Lcom/mycompany/app/web/WebClean;->z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    iget-boolean v10, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 603
    .line 604
    if-nez v10, :cond_12

    .line 605
    .line 606
    iget-object v10, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 607
    .line 608
    if-nez v10, :cond_2f

    .line 609
    .line 610
    goto/16 :goto_8

    .line 611
    .line 612
    :cond_2f
    if-nez v9, :cond_30

    .line 613
    .line 614
    move v10, v8

    .line 615
    move v11, v15

    .line 616
    move/from16 v8, v17

    .line 617
    .line 618
    move-object/from16 v9, v18

    .line 619
    .line 620
    goto :goto_12

    .line 621
    :cond_30
    iget-object v10, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->f:Ljava/lang/String;

    .line 622
    .line 623
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v10

    .line 627
    if-nez v10, :cond_33

    .line 628
    .line 629
    move-object v10, v9

    .line 630
    iget-object v9, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->f:Ljava/lang/String;

    .line 631
    .line 632
    move-object v11, v10

    .line 633
    iget-object v10, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->g:Ljava/lang/String;

    .line 634
    .line 635
    move-object/from16 v19, v11

    .line 636
    .line 637
    iget v11, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->h:I

    .line 638
    .line 639
    move-object/from16 v20, v0

    .line 640
    .line 641
    move-object/from16 v0, v19

    .line 642
    .line 643
    invoke-virtual/range {v5 .. v11}, Lcom/mycompany/app/web/WebClean;->z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    move-result-object v9

    .line 647
    iget-boolean v10, v5, Lcom/mycompany/app/web/WebClean;->p:Z

    .line 648
    .line 649
    if-nez v10, :cond_12

    .line 650
    .line 651
    iget-object v10, v5, Lcom/mycompany/app/web/WebClean;->r:Ljava/util/List;

    .line 652
    .line 653
    if-nez v10, :cond_31

    .line 654
    .line 655
    goto/16 :goto_8

    .line 656
    .line 657
    :cond_31
    if-nez v9, :cond_34

    .line 658
    .line 659
    :cond_32
    move v10, v8

    .line 660
    move v11, v15

    .line 661
    move/from16 v8, v17

    .line 662
    .line 663
    move-object/from16 v9, v18

    .line 664
    .line 665
    move-object/from16 v0, v20

    .line 666
    .line 667
    goto :goto_12

    .line 668
    :cond_33
    move-object/from16 v20, v0

    .line 669
    .line 670
    move-object v0, v9

    .line 671
    const/4 v9, 0x0

    .line 672
    :cond_34
    iget-object v10, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->b:Ljava/lang/String;

    .line 673
    .line 674
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v10

    .line 678
    if-nez v10, :cond_35

    .line 679
    .line 680
    iget-object v10, v13, Lcom/mycompany/app/web/WebClean$ExpItem;->b:Ljava/lang/String;

    .line 681
    .line 682
    const/4 v11, 0x0

    .line 683
    invoke-virtual {v0, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    :cond_35
    if-eqz v9, :cond_36

    .line 687
    .line 688
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 696
    .line 697
    .line 698
    move-result v9

    .line 699
    if-nez v9, :cond_32

    .line 700
    .line 701
    invoke-virtual {v5, v3, v0, v4}, Lcom/mycompany/app/web/WebClean;->c(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 702
    .line 703
    .line 704
    :goto_14
    const/4 v0, 0x0

    .line 705
    goto :goto_15

    .line 706
    :cond_37
    move/from16 v17, v8

    .line 707
    .line 708
    move-object/from16 v18, v9

    .line 709
    .line 710
    goto :goto_14

    .line 711
    :goto_15
    :try_start_3
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->u:Ljava/util/ArrayList;

    .line 712
    .line 713
    iput-object v0, v5, Lcom/mycompany/app/web/WebClean;->v:Ljava/util/ArrayList;

    .line 714
    .line 715
    goto :goto_16

    .line 716
    :cond_38
    move/from16 v17, v8

    .line 717
    .line 718
    move-object/from16 v18, v9

    .line 719
    .line 720
    const/4 v0, 0x0

    .line 721
    :goto_16
    move-object v12, v0

    .line 722
    move/from16 v9, v16

    .line 723
    .line 724
    move/from16 v8, v17

    .line 725
    .line 726
    move-object/from16 v7, v18

    .line 727
    .line 728
    const/4 v13, 0x0

    .line 729
    move-object/from16 v0, p0

    .line 730
    .line 731
    goto/16 :goto_2

    .line 732
    .line 733
    :cond_39
    move-object v0, v12

    .line 734
    invoke-virtual {v5, v3}, Lcom/mycompany/app/web/WebClean;->A0(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v5, v2, v3}, Lcom/mycompany/app/web/WebClean;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 738
    .line 739
    .line 740
    goto/16 :goto_1

    .line 741
    .line 742
    :goto_17
    if-eqz v11, :cond_3b

    .line 743
    .line 744
    if-nez v4, :cond_3b

    .line 745
    .line 746
    :try_start_4
    iget-object v4, v5, Lcom/mycompany/app/web/WebClean;->m:Ljava/lang/String;

    .line 747
    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    if-nez v4, :cond_3a

    .line 753
    .line 754
    iput-object v3, v5, Lcom/mycompany/app/web/WebClean;->m:Ljava/lang/String;

    .line 755
    .line 756
    :goto_18
    const/4 v15, 0x1

    .line 757
    goto :goto_19

    .line 758
    :cond_3a
    iget-object v4, v5, Lcom/mycompany/app/web/WebClean;->w:Ljava/util/ArrayList;

    .line 759
    .line 760
    if-eqz v4, :cond_3b

    .line 761
    .line 762
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 763
    .line 764
    .line 765
    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 766
    if-nez v4, :cond_3b

    .line 767
    .line 768
    goto :goto_18

    .line 769
    :goto_19
    const/4 v4, 0x0

    .line 770
    goto :goto_1a

    .line 771
    :catch_3
    :cond_3b
    const/4 v15, 0x0

    .line 772
    goto :goto_19

    .line 773
    :goto_1a
    invoke-virtual {v5, v4}, Lcom/mycompany/app/web/WebClean;->w0(Z)V

    .line 774
    .line 775
    .line 776
    if-eqz v15, :cond_45

    .line 777
    .line 778
    iget-object v6, v5, Lcom/mycompany/app/web/WebClean;->a:Lcom/mycompany/app/web/WebClean$WebCleanListener;

    .line 779
    .line 780
    if-nez v6, :cond_3d

    .line 781
    .line 782
    :cond_3c
    :goto_1b
    move-object v12, v0

    .line 783
    goto :goto_1e

    .line 784
    :cond_3d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 785
    .line 786
    .line 787
    move-result v6

    .line 788
    if-eqz v6, :cond_3e

    .line 789
    .line 790
    goto :goto_1b

    .line 791
    :cond_3e
    iget-boolean v6, v5, Lcom/mycompany/app/web/WebClean;->N:Z

    .line 792
    .line 793
    if-eqz v6, :cond_3f

    .line 794
    .line 795
    goto :goto_1b

    .line 796
    :cond_3f
    invoke-virtual {v5, v3}, Lcom/mycompany/app/web/WebClean;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    if-eqz v5, :cond_3c

    .line 801
    .line 802
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v6

    .line 806
    if-eqz v6, :cond_40

    .line 807
    .line 808
    goto :goto_1b

    .line 809
    :cond_40
    :try_start_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 810
    .line 811
    .line 812
    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 813
    move v13, v4

    .line 814
    move-object v4, v0

    .line 815
    :goto_1c
    if-ge v13, v6, :cond_43

    .line 816
    .line 817
    :try_start_6
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    add-int/lit8 v13, v13, 0x1

    .line 822
    .line 823
    check-cast v7, Ljava/lang/String;

    .line 824
    .line 825
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    if-eqz v8, :cond_41

    .line 830
    .line 831
    goto :goto_1c

    .line 832
    :cond_41
    if-nez v4, :cond_42

    .line 833
    .line 834
    new-instance v8, Ljava/lang/StringBuilder;

    .line 835
    .line 836
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .line 838
    .line 839
    move-object v4, v8

    .line 840
    goto :goto_1d

    .line 841
    :cond_42
    const-string v8, ","

    .line 842
    .line 843
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    :goto_1d
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 847
    .line 848
    .line 849
    goto :goto_1c

    .line 850
    :catch_4
    move-object v4, v0

    .line 851
    :catch_5
    :cond_43
    if-nez v4, :cond_44

    .line 852
    .line 853
    goto :goto_1b

    .line 854
    :cond_44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v12

    .line 858
    :goto_1e
    const-string v0, "_doc"

    .line 859
    .line 860
    invoke-static {v14, v3, v12, v0}, Lcom/mycompany/app/db/book/DbAdsCmd;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    :cond_45
    move v13, v11

    .line 864
    goto :goto_20

    .line 865
    :goto_1f
    move v13, v4

    .line 866
    :goto_20
    if-eqz v13, :cond_46

    .line 867
    .line 868
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setDocChecked(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :cond_46
    return-void
.end method
