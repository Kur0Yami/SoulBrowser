.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final c:Landroidx/work/impl/WorkContinuationImpl;

.field public final f:Landroidx/work/impl/OperationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "EnqueueRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/utils/EnqueueRunnable;->g:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->c:Landroidx/work/impl/WorkContinuationImpl;

    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/OperationImpl;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/work/impl/OperationImpl;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->f:Landroidx/work/impl/OperationImpl;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->a(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    iget-object v3, v0, Landroidx/work/impl/WorkContinuationImpl;->b:Ljava/util/List;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    iget-object v7, v2, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    array-length v9, v1

    .line 29
    if-lez v9, :cond_0

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v9, v4

    .line 34
    :goto_0
    sget-object v10, Landroidx/work/WorkInfo$State;->j:Landroidx/work/WorkInfo$State;

    .line 35
    .line 36
    sget-object v11, Landroidx/work/WorkInfo$State;->h:Landroidx/work/WorkInfo$State;

    .line 37
    .line 38
    if-eqz v9, :cond_5

    .line 39
    .line 40
    array-length v12, v1

    .line 41
    move v13, v4

    .line 42
    move v15, v13

    .line 43
    move/from16 v16, v15

    .line 44
    .line 45
    const/4 v14, 0x1

    .line 46
    :goto_1
    if-ge v13, v12, :cond_6

    .line 47
    .line 48
    aget-object v8, v1, v13

    .line 49
    .line 50
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4, v8}, Landroidx/work/impl/model/WorkSpecDao;->p(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    invoke-static {}, Landroidx/work/Logger;->c()Landroidx/work/Logger;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "Prerequisite "

    .line 65
    .line 66
    const-string v3, " doesn\'t exist; not enqueuing"

    .line 67
    .line 68
    invoke-static {v2, v8, v3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v8, 0x0

    .line 73
    new-array v3, v8, [Ljava/lang/Throwable;

    .line 74
    .line 75
    sget-object v4, Landroidx/work/impl/utils/EnqueueRunnable;->g:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v4, v2, v3}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    move v4, v8

    .line 81
    :goto_2
    const/4 v1, 0x1

    .line 82
    goto/16 :goto_11

    .line 83
    .line 84
    :cond_1
    const/4 v8, 0x0

    .line 85
    iget-object v4, v4, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 86
    .line 87
    sget-object v8, Landroidx/work/WorkInfo$State;->g:Landroidx/work/WorkInfo$State;

    .line 88
    .line 89
    if-ne v4, v8, :cond_2

    .line 90
    .line 91
    const/4 v8, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_2
    const/4 v8, 0x0

    .line 94
    :goto_3
    and-int/2addr v14, v8

    .line 95
    if-ne v4, v11, :cond_3

    .line 96
    .line 97
    const/16 v16, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    if-ne v4, v10, :cond_4

    .line 101
    .line 102
    const/4 v15, 0x1

    .line 103
    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 104
    .line 105
    const/4 v4, 0x0

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    const/4 v14, 0x1

    .line 108
    const/4 v15, 0x0

    .line 109
    const/16 v16, 0x0

    .line 110
    .line 111
    :cond_6
    const/4 v4, 0x0

    .line 112
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sget-object v8, Landroidx/work/WorkInfo$State;->c:Landroidx/work/WorkInfo$State;

    .line 117
    .line 118
    if-nez v4, :cond_b

    .line 119
    .line 120
    if-nez v9, :cond_b

    .line 121
    .line 122
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-interface {v12}, Landroidx/work/impl/model/WorkSpecDao;->h()Ljava/util/ArrayList;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-nez v13, :cond_b

    .line 135
    .line 136
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    move-object/from16 v17, v3

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    :goto_5
    if-ge v3, v13, :cond_9

    .line 144
    .line 145
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v18

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    move/from16 v19, v3

    .line 152
    .line 153
    move-object/from16 v3, v18

    .line 154
    .line 155
    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 156
    .line 157
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->b:Landroidx/work/WorkInfo$State;

    .line 158
    .line 159
    if-eq v3, v8, :cond_8

    .line 160
    .line 161
    move/from16 v18, v4

    .line 162
    .line 163
    sget-object v4, Landroidx/work/WorkInfo$State;->f:Landroidx/work/WorkInfo$State;

    .line 164
    .line 165
    if-ne v3, v4, :cond_7

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_7
    move/from16 v4, v18

    .line 169
    .line 170
    move/from16 v3, v19

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    :goto_6
    const/4 v1, 0x1

    .line 174
    const/4 v4, 0x0

    .line 175
    goto/16 :goto_11

    .line 176
    .line 177
    :cond_9
    move/from16 v18, v4

    .line 178
    .line 179
    new-instance v3, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    .line 180
    .line 181
    invoke-direct {v3, v2}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Landroidx/work/impl/utils/CancelWorkRunnable;->run()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    const/4 v4, 0x0

    .line 196
    :goto_7
    if-ge v4, v3, :cond_a

    .line 197
    .line 198
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 203
    .line 204
    check-cast v13, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 205
    .line 206
    iget-object v13, v13, Landroidx/work/impl/model/WorkSpec$IdAndState;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-interface {v2, v13}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    const/4 v2, 0x1

    .line 213
    goto :goto_8

    .line 214
    :cond_b
    move-object/from16 v17, v3

    .line 215
    .line 216
    move/from16 v18, v4

    .line 217
    .line 218
    const/4 v2, 0x0

    .line 219
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_17

    .line 228
    .line 229
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Landroidx/work/WorkRequest;

    .line 234
    .line 235
    iget-object v12, v4, Landroidx/work/WorkRequest;->b:Landroidx/work/impl/model/WorkSpec;

    .line 236
    .line 237
    iget-object v13, v4, Landroidx/work/WorkRequest;->a:Ljava/util/UUID;

    .line 238
    .line 239
    if-eqz v9, :cond_e

    .line 240
    .line 241
    if-nez v14, :cond_e

    .line 242
    .line 243
    if-eqz v16, :cond_c

    .line 244
    .line 245
    iput-object v11, v12, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 246
    .line 247
    :goto_a
    move/from16 v17, v2

    .line 248
    .line 249
    :goto_b
    move-object/from16 v19, v3

    .line 250
    .line 251
    goto :goto_c

    .line 252
    :cond_c
    if-eqz v15, :cond_d

    .line 253
    .line 254
    iput-object v10, v12, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_d
    move/from16 v17, v2

    .line 258
    .line 259
    sget-object v2, Landroidx/work/WorkInfo$State;->i:Landroidx/work/WorkInfo$State;

    .line 260
    .line 261
    iput-object v2, v12, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_e
    move/from16 v17, v2

    .line 265
    .line 266
    invoke-virtual {v12}, Landroidx/work/impl/model/WorkSpec;->c()Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_f

    .line 271
    .line 272
    iput-wide v5, v12, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_f
    move-object/from16 v19, v3

    .line 276
    .line 277
    const-wide/16 v2, 0x0

    .line 278
    .line 279
    iput-wide v2, v12, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 280
    .line 281
    :goto_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    const/16 v3, 0x19

    .line 284
    .line 285
    if-gt v2, v3, :cond_11

    .line 286
    .line 287
    iget-object v2, v12, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 288
    .line 289
    iget-object v3, v12, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 290
    .line 291
    const-class v20, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 292
    .line 293
    move-wide/from16 v21, v5

    .line 294
    .line 295
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-nez v5, :cond_12

    .line 304
    .line 305
    iget-boolean v5, v2, Landroidx/work/Constraints;->d:Z

    .line 306
    .line 307
    if-nez v5, :cond_10

    .line 308
    .line 309
    iget-boolean v2, v2, Landroidx/work/Constraints;->e:Z

    .line 310
    .line 311
    if-eqz v2, :cond_12

    .line 312
    .line 313
    :cond_10
    new-instance v2, Landroidx/work/Data$Builder;

    .line 314
    .line 315
    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 316
    .line 317
    .line 318
    iget-object v5, v12, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 319
    .line 320
    iget-object v5, v5, Landroidx/work/Data;->a:Ljava/util/HashMap;

    .line 321
    .line 322
    invoke-virtual {v2, v5}, Landroidx/work/Data$Builder;->b(Ljava/util/HashMap;)V

    .line 323
    .line 324
    .line 325
    const-string v5, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 326
    .line 327
    iget-object v6, v2, Landroidx/work/Data$Builder;->a:Ljava/util/HashMap;

    .line 328
    .line 329
    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    iput-object v3, v12, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iput-object v2, v12, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_11
    move-wide/from16 v21, v5

    .line 346
    .line 347
    :cond_12
    :goto_d
    iget-object v2, v12, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 348
    .line 349
    if-ne v2, v8, :cond_13

    .line 350
    .line 351
    const/4 v2, 0x1

    .line 352
    goto :goto_e

    .line 353
    :cond_13
    move/from16 v2, v17

    .line 354
    .line 355
    :goto_e
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkSpecDao;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-interface {v3, v12}, Landroidx/work/impl/model/WorkSpecDao;->i(Landroidx/work/impl/model/WorkSpec;)V

    .line 360
    .line 361
    .line 362
    if-eqz v9, :cond_14

    .line 363
    .line 364
    array-length v3, v1

    .line 365
    const/4 v5, 0x0

    .line 366
    :goto_f
    if-ge v5, v3, :cond_14

    .line 367
    .line 368
    aget-object v6, v1, v5

    .line 369
    .line 370
    new-instance v12, Landroidx/work/impl/model/Dependency;

    .line 371
    .line 372
    move-object/from16 v20, v1

    .line 373
    .line 374
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-direct {v12, v1, v6}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->i()Landroidx/work/impl/model/DependencyDao;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-interface {v1, v12}, Landroidx/work/impl/model/DependencyDao;->a(Landroidx/work/impl/model/Dependency;)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v5, v5, 0x1

    .line 389
    .line 390
    move-object/from16 v1, v20

    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_14
    move-object/from16 v20, v1

    .line 394
    .line 395
    iget-object v1, v4, Landroidx/work/WorkRequest;->c:Ljava/util/Set;

    .line 396
    .line 397
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_15

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    check-cast v3, Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/model/WorkTagDao;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    new-instance v5, Landroidx/work/impl/model/WorkTag;

    .line 418
    .line 419
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-direct {v5, v3, v6}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v4, v5}, Landroidx/work/impl/model/WorkTagDao;->a(Landroidx/work/impl/model/WorkTag;)V

    .line 427
    .line 428
    .line 429
    goto :goto_10

    .line 430
    :cond_15
    if-nez v18, :cond_16

    .line 431
    .line 432
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->l()Landroidx/work/impl/model/WorkNameDao;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    new-instance v3, Landroidx/work/impl/model/WorkName;

    .line 437
    .line 438
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-direct {v3, v4}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v1, v3}, Landroidx/work/impl/model/WorkNameDao;->a(Landroidx/work/impl/model/WorkName;)V

    .line 446
    .line 447
    .line 448
    :cond_16
    move-object/from16 v3, v19

    .line 449
    .line 450
    move-object/from16 v1, v20

    .line 451
    .line 452
    move-wide/from16 v5, v21

    .line 453
    .line 454
    goto/16 :goto_9

    .line 455
    .line 456
    :cond_17
    move/from16 v17, v2

    .line 457
    .line 458
    move/from16 v4, v17

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :goto_11
    iput-boolean v1, v0, Landroidx/work/impl/WorkContinuationImpl;->e:Z

    .line 463
    .line 464
    return v4
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->f:Landroidx/work/impl/OperationImpl;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->c:Landroidx/work/impl/WorkContinuationImpl;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Landroidx/work/impl/WorkContinuationImpl;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/work/impl/WorkContinuationImpl;->a(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    move v3, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v4, v1, Landroidx/work/impl/WorkContinuationImpl;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 50
    .line 51
    .line 52
    move v3, v7

    .line 53
    :goto_0
    if-nez v3, :cond_3

    .line 54
    .line 55
    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-static {v1}, Landroidx/work/impl/utils/EnqueueRunnable;->a(Landroidx/work/impl/WorkContinuationImpl;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->a:Landroid/content/Context;

    .line 73
    .line 74
    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 75
    .line 76
    invoke-static {v1, v3, v8}, Landroidx/work/impl/utils/PackageManagerHelper;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v2, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 80
    .line 81
    iget-object v3, v2, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 82
    .line 83
    iget-object v2, v2, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 84
    .line 85
    invoke-static {v1, v3, v2}, Landroidx/work/impl/Schedulers;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    sget-object v1, Landroidx/work/Operation;->a:Landroidx/work/Operation$State$SUCCESS;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->a(Landroidx/work/Operation$State;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_1
    move-exception v1

    .line 98
    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->f()V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v3, "WorkContinuation has cycles (%s)"

    .line 105
    .line 106
    new-array v4, v8, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v1, v4, v7

    .line 109
    .line 110
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :goto_2
    new-instance v2, Landroidx/work/Operation$State$FAILURE;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroidx/work/impl/OperationImpl;->a(Landroidx/work/Operation$State;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
