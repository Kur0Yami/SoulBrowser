.class Lcom/mycompany/app/main/list/MainListCast$CastTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/list/MainListCast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CastTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public g:I

.field public h:[Lcom/google/android/gms/cast/MediaQueueItem;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListCast;Ljava/util/List;I)V
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
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/list/MainListCast;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput p3, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->i:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_18

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/main/list/MainListCast;

    .line 14
    .line 15
    if-eqz v1, :cond_23

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_18

    .line 22
    .line 23
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->f:Ljava/util/List;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_18

    .line 28
    .line 29
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto/16 :goto_18

    .line 36
    .line 37
    :cond_3
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Lcom/mycompany/app/cast/CastLocal;->b(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    goto/16 :goto_18

    .line 50
    .line 51
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v5, 0x0

    .line 61
    move v6, v5

    .line 62
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x1

    .line 67
    if-eqz v7, :cond_21

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 74
    .line 75
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 76
    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    goto/16 :goto_18

    .line 80
    .line 81
    :cond_5
    if-nez v7, :cond_6

    .line 82
    .line 83
    move-object/from16 v23, v2

    .line 84
    .line 85
    move/from16 v24, v3

    .line 86
    .line 87
    move/from16 v21, v5

    .line 88
    .line 89
    move/from16 v36, v6

    .line 90
    .line 91
    goto/16 :goto_14

    .line 92
    .line 93
    :cond_6
    iget v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 94
    .line 95
    const/4 v10, 0x6

    .line 96
    const/4 v11, 0x4

    .line 97
    if-ne v9, v11, :cond_7

    .line 98
    .line 99
    const-string v9, "Image"

    .line 100
    .line 101
    const-string v12, "image/*"

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    if-ne v9, v10, :cond_9

    .line 105
    .line 106
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-nez v9, :cond_8

    .line 113
    .line 114
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 115
    .line 116
    :goto_1
    move-object v12, v9

    .line 117
    goto :goto_2

    .line 118
    :cond_8
    const-string v9, "audio/*"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_2
    iput-boolean v5, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->i:Z

    .line 122
    .line 123
    const-string v9, "Music"

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-nez v9, :cond_a

    .line 133
    .line 134
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 135
    .line 136
    :goto_3
    move-object v12, v9

    .line 137
    goto :goto_4

    .line 138
    :cond_a
    const-string v9, "video/*"

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :goto_4
    iput-boolean v5, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->i:Z

    .line 142
    .line 143
    const-string v9, "Video"

    .line 144
    .line 145
    :goto_5
    if-le v3, v8, :cond_b

    .line 146
    .line 147
    const-string v13, " ("

    .line 148
    .line 149
    invoke-static {v9, v13}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    add-int/lit8 v13, v6, 0x1

    .line 154
    .line 155
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v13, " / "

    .line 159
    .line 160
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v13, ") "

    .line 167
    .line 168
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    :cond_b
    move-object/from16 v16, v9

    .line 176
    .line 177
    new-instance v9, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 178
    .line 179
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v9, v13}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    iget-object v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v13, v13, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 195
    .line 196
    if-nez v13, :cond_c

    .line 197
    .line 198
    const/4 v13, 0x0

    .line 199
    goto :goto_6

    .line 200
    :cond_c
    invoke-virtual {v13, v14, v12, v9}, Lcom/mycompany/app/cast/CastServer;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    :goto_6
    iget v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 205
    .line 206
    if-ne v14, v11, :cond_d

    .line 207
    .line 208
    move-object/from16 v23, v2

    .line 209
    .line 210
    move/from16 v24, v3

    .line 211
    .line 212
    move/from16 v21, v5

    .line 213
    .line 214
    move/from16 v36, v6

    .line 215
    .line 216
    move-object/from16 v19, v12

    .line 217
    .line 218
    move-object v14, v13

    .line 219
    :goto_7
    const/16 v20, 0x0

    .line 220
    .line 221
    goto/16 :goto_13

    .line 222
    .line 223
    :cond_d
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    iget-object v14, v14, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 228
    .line 229
    if-nez v14, :cond_e

    .line 230
    .line 231
    move/from16 v21, v5

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    goto :goto_8

    .line 235
    :cond_e
    move/from16 v21, v5

    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v14, v14, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 243
    .line 244
    const-string v15, "icon"

    .line 245
    .line 246
    invoke-static {v5, v14, v15}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    :goto_8
    iget v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 251
    .line 252
    const/4 v15, 0x5

    .line 253
    if-ne v14, v15, :cond_1d

    .line 254
    .line 255
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    iget-object v15, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->R:Ljava/util/List;

    .line 260
    .line 261
    iget-object v14, v14, Lcom/mycompany/app/cast/CastLocal;->a:Lcom/mycompany/app/cast/CastServer;

    .line 262
    .line 263
    const-string v11, "_"

    .line 264
    .line 265
    if-nez v14, :cond_10

    .line 266
    .line 267
    :cond_f
    :goto_9
    move-object/from16 v23, v2

    .line 268
    .line 269
    move/from16 v24, v3

    .line 270
    .line 271
    move-object/from16 v18, v5

    .line 272
    .line 273
    const/4 v8, 0x0

    .line 274
    goto :goto_d

    .line 275
    :cond_10
    if-eqz v15, :cond_f

    .line 276
    .line 277
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v18

    .line 281
    if-nez v18, :cond_f

    .line 282
    .line 283
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v18

    .line 287
    if-eqz v18, :cond_11

    .line 288
    .line 289
    :goto_a
    goto :goto_9

    .line 290
    :cond_11
    iget-object v8, v14, Lcom/mycompany/app/cast/CastServer;->m:Ljava/util/HashMap;

    .line 291
    .line 292
    if-nez v8, :cond_12

    .line 293
    .line 294
    goto :goto_a

    .line 295
    :cond_12
    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    new-instance v8, Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v18

    .line 311
    if-eqz v18, :cond_14

    .line 312
    .line 313
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v18

    .line 317
    check-cast v18, Ljava/lang/String;

    .line 318
    .line 319
    invoke-static/range {v18 .. v18}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 324
    .line 325
    .line 326
    move-result v18

    .line 327
    if-eqz v18, :cond_13

    .line 328
    .line 329
    :goto_c
    const/4 v10, 0x6

    .line 330
    goto :goto_b

    .line 331
    :cond_13
    move-object/from16 v23, v2

    .line 332
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    move/from16 v24, v3

    .line 339
    .line 340
    iget-object v3, v14, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 341
    .line 342
    move-object/from16 v18, v5

    .line 343
    .line 344
    const-string v5, "sbsub_"

    .line 345
    .line 346
    invoke-static {v2, v3, v5, v9, v11}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-object/from16 v5, v18

    .line 360
    .line 361
    move-object/from16 v2, v23

    .line 362
    .line 363
    move/from16 v3, v24

    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_14
    move-object/from16 v23, v2

    .line 367
    .line 368
    move/from16 v24, v3

    .line 369
    .line 370
    move-object/from16 v18, v5

    .line 371
    .line 372
    :goto_d
    if-eqz v8, :cond_15

    .line 373
    .line 374
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_16

    .line 379
    .line 380
    :cond_15
    move/from16 v36, v6

    .line 381
    .line 382
    goto/16 :goto_11

    .line 383
    .line 384
    :cond_16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    move/from16 v5, v21

    .line 389
    .line 390
    const/4 v3, 0x1

    .line 391
    const/4 v15, 0x0

    .line 392
    :goto_e
    if-ge v5, v2, :cond_1c

    .line 393
    .line 394
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v9

    .line 398
    add-int/lit8 v5, v5, 0x1

    .line 399
    .line 400
    check-cast v9, Ljava/lang/String;

    .line 401
    .line 402
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    .line 404
    .line 405
    move-result v10

    .line 406
    if-eqz v10, :cond_18

    .line 407
    .line 408
    :cond_17
    :goto_f
    move/from16 v20, v2

    .line 409
    .line 410
    move/from16 v17, v5

    .line 411
    .line 412
    move/from16 v36, v6

    .line 413
    .line 414
    goto :goto_10

    .line 415
    :cond_18
    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    const/4 v14, 0x6

    .line 420
    if-le v10, v14, :cond_17

    .line 421
    .line 422
    add-int/lit8 v10, v10, 0x1

    .line 423
    .line 424
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 425
    .line 426
    .line 427
    move-result v14

    .line 428
    if-lt v10, v14, :cond_19

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_19
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    if-eqz v14, :cond_1a

    .line 440
    .line 441
    goto :goto_f

    .line 442
    :cond_1a
    if-nez v15, :cond_1b

    .line 443
    .line 444
    new-instance v14, Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .line 448
    .line 449
    move-object v15, v14

    .line 450
    :cond_1b
    new-instance v14, Lcom/google/android/gms/cast/MediaTrack$Builder;

    .line 451
    .line 452
    move/from16 v17, v5

    .line 453
    .line 454
    move/from16 v36, v6

    .line 455
    .line 456
    int-to-long v5, v3

    .line 457
    invoke-direct {v14, v5, v6}, Lcom/google/android/gms/cast/MediaTrack$Builder;-><init>(J)V

    .line 458
    .line 459
    .line 460
    move/from16 v20, v2

    .line 461
    .line 462
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 463
    .line 464
    invoke-virtual {v10, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    iput-object v2, v14, Lcom/google/android/gms/cast/MediaTrack$Builder;->b:Ljava/lang/String;

    .line 469
    .line 470
    const/4 v2, 0x1

    .line 471
    invoke-virtual {v14, v2}, Lcom/google/android/gms/cast/MediaTrack$Builder;->a(I)V

    .line 472
    .line 473
    .line 474
    const-string v2, "text/vtt"

    .line 475
    .line 476
    iput-object v2, v14, Lcom/google/android/gms/cast/MediaTrack$Builder;->a:Ljava/lang/String;

    .line 477
    .line 478
    new-instance v25, Lcom/google/android/gms/cast/MediaTrack;

    .line 479
    .line 480
    iget-object v10, v14, Lcom/google/android/gms/cast/MediaTrack$Builder;->b:Ljava/lang/String;

    .line 481
    .line 482
    iget v14, v14, Lcom/google/android/gms/cast/MediaTrack$Builder;->c:I

    .line 483
    .line 484
    const/16 v34, 0x0

    .line 485
    .line 486
    const/16 v35, 0x0

    .line 487
    .line 488
    const/16 v28, 0x1

    .line 489
    .line 490
    const/16 v32, 0x0

    .line 491
    .line 492
    move-object/from16 v30, v2

    .line 493
    .line 494
    move-wide/from16 v26, v5

    .line 495
    .line 496
    move-object/from16 v29, v9

    .line 497
    .line 498
    move-object/from16 v31, v10

    .line 499
    .line 500
    move/from16 v33, v14

    .line 501
    .line 502
    invoke-direct/range {v25 .. v35}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    .line 503
    .line 504
    .line 505
    move-object/from16 v2, v25

    .line 506
    .line 507
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    add-int/lit8 v3, v3, 0x1

    .line 511
    .line 512
    :goto_10
    move/from16 v5, v17

    .line 513
    .line 514
    move/from16 v2, v20

    .line 515
    .line 516
    move/from16 v6, v36

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_1c
    move/from16 v36, v6

    .line 520
    .line 521
    goto :goto_12

    .line 522
    :goto_11
    const/4 v15, 0x0

    .line 523
    :goto_12
    move-object/from16 v19, v12

    .line 524
    .line 525
    move-object/from16 v20, v15

    .line 526
    .line 527
    move-object/from16 v14, v18

    .line 528
    .line 529
    goto :goto_13

    .line 530
    :cond_1d
    move-object/from16 v23, v2

    .line 531
    .line 532
    move/from16 v24, v3

    .line 533
    .line 534
    move-object/from16 v18, v5

    .line 535
    .line 536
    move/from16 v36, v6

    .line 537
    .line 538
    move-object/from16 v19, v12

    .line 539
    .line 540
    move-object/from16 v14, v18

    .line 541
    .line 542
    goto/16 :goto_7

    .line 543
    .line 544
    :goto_13
    iget-object v12, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 545
    .line 546
    iget-object v15, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 547
    .line 548
    const-wide/16 v17, 0x0

    .line 549
    .line 550
    invoke-static/range {v12 .. v20}, Lcom/mycompany/app/cast/CastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    if-nez v2, :cond_1e

    .line 555
    .line 556
    :goto_14
    move/from16 v5, v21

    .line 557
    .line 558
    move-object/from16 v2, v23

    .line 559
    .line 560
    move/from16 v3, v24

    .line 561
    .line 562
    move/from16 v6, v36

    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :cond_1e
    :try_start_0
    iget v3, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 567
    .line 568
    const/4 v5, 0x4

    .line 569
    if-ne v3, v5, :cond_1f

    .line 570
    .line 571
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 572
    .line 573
    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    goto :goto_15

    .line 581
    :cond_1f
    if-eqz v20, :cond_20

    .line 582
    .line 583
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 584
    .line 585
    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 586
    .line 587
    .line 588
    iget-object v2, v3, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 589
    .line 590
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaQueueItem;->n:Lcom/google/android/gms/cast/MediaQueueItem$Writer;

    .line 591
    .line 592
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaQueueItem$Writer;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 593
    .line 594
    const/4 v5, 0x1

    .line 595
    iput-boolean v5, v2, Lcom/google/android/gms/cast/MediaQueueItem;->g:Z

    .line 596
    .line 597
    new-array v5, v5, [J

    .line 598
    .line 599
    const-wide/16 v6, 0x1

    .line 600
    .line 601
    aput-wide v6, v5, v21

    .line 602
    .line 603
    iput-object v5, v2, Lcom/google/android/gms/cast/MediaQueueItem;->k:[J

    .line 604
    .line 605
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    goto :goto_15

    .line 610
    :cond_20
    new-instance v3, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 611
    .line 612
    invoke-direct {v3, v2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 613
    .line 614
    .line 615
    iget-object v2, v3, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 616
    .line 617
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaQueueItem;->n:Lcom/google/android/gms/cast/MediaQueueItem$Writer;

    .line 618
    .line 619
    iget-object v2, v2, Lcom/google/android/gms/cast/MediaQueueItem$Writer;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 620
    .line 621
    const/4 v5, 0x1

    .line 622
    iput-boolean v5, v2, Lcom/google/android/gms/cast/MediaQueueItem;->g:Z

    .line 623
    .line 624
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    :goto_15
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .line 630
    .line 631
    add-int/lit8 v6, v36, 0x1

    .line 632
    .line 633
    goto :goto_16

    .line 634
    :catch_0
    move/from16 v6, v36

    .line 635
    .line 636
    :goto_16
    move/from16 v5, v21

    .line 637
    .line 638
    move-object/from16 v2, v23

    .line 639
    .line 640
    move/from16 v3, v24

    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :cond_21
    move/from16 v21, v5

    .line 645
    .line 646
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-nez v1, :cond_22

    .line 651
    .line 652
    goto :goto_18

    .line 653
    :cond_22
    new-array v1, v1, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 654
    .line 655
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->h:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 656
    .line 657
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    move/from16 v2, v21

    .line 662
    .line 663
    move v5, v2

    .line 664
    :goto_17
    if-ge v2, v1, :cond_23

    .line 665
    .line 666
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    add-int/lit8 v2, v2, 0x1

    .line 671
    .line 672
    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 673
    .line 674
    iget-object v6, v0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->h:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 675
    .line 676
    aput-object v3, v6, v5

    .line 677
    .line 678
    const/16 v22, 0x1

    .line 679
    .line 680
    add-int/lit8 v5, v5, 0x1

    .line 681
    .line 682
    goto :goto_17

    .line 683
    :cond_23
    :goto_18
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/list/MainListCast;

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
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 17
    .line 18
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/main/list/MainListCast;

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
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->L1:Lcom/mycompany/app/main/list/MainListCast$CastTask;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->h:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 19
    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    :try_start_0
    array-length v1, v1

    .line 27
    iget v2, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-lt v2, v1, :cond_3

    .line 31
    .line 32
    sub-int/2addr v1, v3

    .line 33
    iput v1, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 34
    .line 35
    :cond_3
    iget v1, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-gez v1, :cond_4

    .line 39
    .line 40
    iput v2, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 41
    .line 42
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->i:Z

    .line 43
    .line 44
    if-nez v1, :cond_6

    .line 45
    .line 46
    sget-boolean v1, Lcom/mycompany/app/pref/PrefMain;->t:Z

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    move v7, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_6
    :goto_1
    move v7, v3

    .line 54
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v5, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->h:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 61
    .line 62
    iget v6, p0, Lcom/mycompany/app/main/list/MainListCast$CastTask;->g:I

    .line 63
    .line 64
    const-wide/16 v8, 0x0

    .line 65
    .line 66
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->r([Lcom/google/android/gms/cast/MediaQueueItem;IIJ)Lcom/google/android/gms/common/api/internal/BasePendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    iput-boolean v3, v0, Lcom/mycompany/app/main/list/MainListCast;->E1:Z

    .line 70
    .line 71
    new-instance v1, Landroid/content/Intent;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 74
    .line 75
    const-class v3, Lcom/mycompany/app/cast/ExpandedControlsActivity;

    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catch_0
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 89
    .line 90
    .line 91
    sget v1, Lnet/kaki87/soul2/testing/R$string;->play_error:I

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_7
    :goto_3
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 102
    .line 103
    .line 104
    return-void
.end method
