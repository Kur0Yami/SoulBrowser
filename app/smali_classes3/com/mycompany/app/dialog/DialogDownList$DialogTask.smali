.class Lcom/mycompany/app/dialog/DialogDownList$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogDownList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownList;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogDownList;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->h:Ljava/util/List;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownList;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p1, p3, p3, p2, p3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_e

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogDownList;

    .line 14
    .line 15
    if-eqz v1, :cond_1e

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_e

    .line 22
    .line 23
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->h:Ljava/util/List;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_e

    .line 28
    .line 29
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->f:Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v4, :cond_5

    .line 40
    .line 41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v4, v3, v5}, Lcom/mycompany/app/main/MainUriDoc;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v4, 0x0

    .line 55
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    move-object v3, v4

    .line 63
    :goto_1
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    const/4 v5, 0x0

    .line 78
    :goto_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->g:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_7

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->y0(I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->x0(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    const/4 v8, 0x0

    .line 100
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/4 v9, 0x1

    .line 105
    move v11, v9

    .line 106
    const/4 v10, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    if-eqz v13, :cond_1d

    .line 113
    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Ljava/lang/String;

    .line 119
    .line 120
    iget-boolean v14, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 121
    .line 122
    if-eqz v14, :cond_8

    .line 123
    .line 124
    goto/16 :goto_e

    .line 125
    .line 126
    :cond_8
    if-nez v7, :cond_b

    .line 127
    .line 128
    const/16 v16, 0x0

    .line 129
    .line 130
    const-string v14, "_"

    .line 131
    .line 132
    invoke-static {v4, v14}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v17

    .line 140
    if-nez v17, :cond_9

    .line 141
    .line 142
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 143
    .line 144
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v18

    .line 148
    new-array v6, v9, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object v18, v6, v16

    .line 151
    .line 152
    invoke-static {v15, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_9
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :goto_5
    invoke-static {v13, v9}, Lcom/mycompany/app/main/MainUtil;->W3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v15

    .line 171
    if-nez v15, :cond_a

    .line 172
    .line 173
    const-string v15, "."

    .line 174
    .line 175
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :cond_a
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    add-int/lit8 v11, v11, 0x1

    .line 186
    .line 187
    move/from16 v19, v9

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_b
    const/16 v16, 0x0

    .line 192
    .line 193
    sget v6, Lcom/mycompany/app/dialog/DialogDownList;->Q0:I

    .line 194
    .line 195
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_c

    .line 200
    .line 201
    :goto_6
    move/from16 v19, v9

    .line 202
    .line 203
    const/4 v15, 0x0

    .line 204
    goto :goto_8

    .line 205
    :cond_c
    const-string v6, "image/*"

    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    invoke-static {v13, v14, v6}, Landroidx/webkit/URLUtilCompat;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v1, v6}, Lcom/mycompany/app/dialog/DialogDownList;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v15

    .line 220
    if-eqz v15, :cond_d

    .line 221
    .line 222
    invoke-static {v14, v14}, Lcom/mycompany/app/main/MainUtil;->F3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-eqz v15, :cond_d

    .line 231
    .line 232
    move/from16 v19, v9

    .line 233
    .line 234
    move-object v15, v14

    .line 235
    goto :goto_8

    .line 236
    :cond_d
    const/16 v15, 0x2e

    .line 237
    .line 238
    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-lez v14, :cond_e

    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    if-ge v14, v15, :cond_e

    .line 249
    .line 250
    move/from16 v15, v16

    .line 251
    .line 252
    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v18

    .line 256
    move-object/from16 v15, v18

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_e
    move-object v15, v6

    .line 260
    :goto_7
    invoke-virtual {v1, v15}, Lcom/mycompany/app/dialog/DialogDownList;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v18

    .line 268
    if-eqz v18, :cond_f

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_f
    if-lez v14, :cond_10

    .line 272
    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result v18

    .line 277
    move/from16 v19, v9

    .line 278
    .line 279
    add-int/lit8 v9, v18, -0x1

    .line 280
    .line 281
    if-ge v14, v9, :cond_11

    .line 282
    .line 283
    invoke-static {v15}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    goto :goto_8

    .line 299
    :cond_10
    move/from16 v19, v9

    .line 300
    .line 301
    :cond_11
    :goto_8
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-nez v6, :cond_12

    .line 306
    .line 307
    move-object v6, v15

    .line 308
    goto :goto_9

    .line 309
    :cond_12
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownList;->F0:Ljava/lang/String;

    .line 310
    .line 311
    if-nez v6, :cond_13

    .line 312
    .line 313
    const-string v6, "yyyyMMdd"

    .line 314
    .line 315
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownList;->F0:Ljava/lang/String;

    .line 320
    .line 321
    :cond_13
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownList;->G0:Ljava/lang/String;

    .line 322
    .line 323
    if-nez v6, :cond_14

    .line 324
    .line 325
    const-string v6, "kkmmss"

    .line 326
    .line 327
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogDownList;->G0:Ljava/lang/String;

    .line 332
    .line 333
    :cond_14
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownList;->F0:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogDownList;->G0:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v6, v9}, Lcom/mycompany/app/main/MainUtil;->F3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    :goto_9
    new-instance v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;

    .line 342
    .line 343
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 344
    .line 345
    .line 346
    iput-object v13, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->a:Ljava/lang/String;

    .line 347
    .line 348
    iget-object v13, v1, Lcom/mycompany/app/dialog/DialogDownList;->d0:Ljava/lang/String;

    .line 349
    .line 350
    iput-object v13, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->b:Ljava/lang/String;

    .line 351
    .line 352
    iput-object v3, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->c:Ljava/lang/String;

    .line 353
    .line 354
    iput-object v5, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->d:Ljava/lang/String;

    .line 355
    .line 356
    move/from16 v13, v19

    .line 357
    .line 358
    invoke-static {v6, v13, v13}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-nez v14, :cond_17

    .line 363
    .line 364
    iput-boolean v13, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->f:Z

    .line 365
    .line 366
    const/16 v15, 0x2e

    .line 367
    .line 368
    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    .line 369
    .line 370
    .line 371
    move-result v14

    .line 372
    const-string v15, ".jpg"

    .line 373
    .line 374
    if-lez v14, :cond_16

    .line 375
    .line 376
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 377
    .line 378
    .line 379
    move-result v13

    .line 380
    if-lt v14, v13, :cond_15

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_15
    new-instance v13, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    invoke-virtual {v6, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v6

    .line 403
    goto :goto_b

    .line 404
    :cond_16
    :goto_a
    invoke-virtual {v6, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    :cond_17
    :goto_b
    if-eqz v7, :cond_1b

    .line 409
    .line 410
    const/16 v15, 0x2e

    .line 411
    .line 412
    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    const/4 v13, -0x1

    .line 417
    if-eq v0, v13, :cond_18

    .line 418
    .line 419
    const/4 v15, 0x0

    .line 420
    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    move-object v6, v13

    .line 429
    goto :goto_c

    .line 430
    :cond_18
    const/4 v0, 0x0

    .line 431
    :goto_c
    invoke-static {v12, v6}, Lcom/mycompany/app/main/MainUtil;->S2(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    move-result v13

    .line 439
    if-nez v13, :cond_19

    .line 440
    .line 441
    invoke-static {v6, v0}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    goto :goto_d

    .line 446
    :cond_19
    move-object v0, v6

    .line 447
    :goto_d
    if-nez v12, :cond_1a

    .line 448
    .line 449
    new-instance v12, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    :cond_1a
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-object v6, v0

    .line 458
    :cond_1b
    iput-object v6, v9, Lcom/mycompany/app/main/MainDownSvc$ImageItem;->e:Ljava/lang/String;

    .line 459
    .line 460
    if-nez v10, :cond_1c

    .line 461
    .line 462
    new-instance v10, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    :cond_1c
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-object/from16 v0, p0

    .line 471
    .line 472
    const/4 v9, 0x1

    .line 473
    goto/16 :goto_4

    .line 474
    .line 475
    :cond_1d
    if-eqz v10, :cond_1e

    .line 476
    .line 477
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-nez v0, :cond_1e

    .line 482
    .line 483
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownList;->b0:Landroid/content/Context;

    .line 484
    .line 485
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    if-eqz v0, :cond_1e

    .line 490
    .line 491
    invoke-virtual {v0, v10}, Lcom/mycompany/app/main/MainApp;->Q(Ljava/util/ArrayList;)V

    .line 492
    .line 493
    .line 494
    :cond_1e
    :goto_e
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDownList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownList;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownList$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/dialog/DialogDownList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownList;->y0:Lcom/mycompany/app/dialog/DialogDownList$DialogTask;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownList;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
