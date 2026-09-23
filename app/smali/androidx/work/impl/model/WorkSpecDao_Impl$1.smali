.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->a:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v1, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->t(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->b:Landroidx/work/WorkInfo$State;

    .line 20
    .line 21
    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->f(Landroidx/work/WorkInfo$State;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-long v4, v2

    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-interface {v1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->c:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v5, 0x3

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-interface {v1, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v1, v5, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->t(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->d:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v1, v6}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v1, v6, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->t(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    .line 55
    .line 56
    invoke-static {v4}, Landroidx/work/Data;->c(Landroidx/work/Data;)[B

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v7, 0x5

    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    invoke-interface {v1, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-interface {v1, v4, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->R([BI)V

    .line 68
    .line 69
    .line 70
    :goto_3
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->f:Landroidx/work/Data;

    .line 71
    .line 72
    invoke-static {v4}, Landroidx/work/Data;->c(Landroidx/work/Data;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v8, 0x6

    .line 77
    if-nez v4, :cond_4

    .line 78
    .line 79
    invoke-interface {v1, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    invoke-interface {v1, v4, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->R([BI)V

    .line 84
    .line 85
    .line 86
    :goto_4
    const/4 v4, 0x7

    .line 87
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->g:J

    .line 88
    .line 89
    invoke-interface {v1, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 90
    .line 91
    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->h:J

    .line 95
    .line 96
    invoke-interface {v1, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 97
    .line 98
    .line 99
    const/16 v4, 0x9

    .line 100
    .line 101
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->i:J

    .line 102
    .line 103
    invoke-interface {v1, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 104
    .line 105
    .line 106
    iget v4, v0, Landroidx/work/impl/model/WorkSpec;->k:I

    .line 107
    .line 108
    int-to-long v8, v4

    .line 109
    const/16 v4, 0xa

    .line 110
    .line 111
    invoke-interface {v1, v4, v8, v9}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 112
    .line 113
    .line 114
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->l:Landroidx/work/BackoffPolicy;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    const-string v10, " to int"

    .line 121
    .line 122
    const-string v11, "Could not convert "

    .line 123
    .line 124
    if-eqz v8, :cond_6

    .line 125
    .line 126
    if-ne v8, v3, :cond_5

    .line 127
    .line 128
    move v4, v3

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_6
    const/4 v4, 0x0

    .line 152
    :goto_5
    const/16 v8, 0xb

    .line 153
    .line 154
    int-to-long v12, v4

    .line 155
    invoke-interface {v1, v8, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 156
    .line 157
    .line 158
    const/16 v4, 0xc

    .line 159
    .line 160
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->m:J

    .line 161
    .line 162
    invoke-interface {v1, v4, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 163
    .line 164
    .line 165
    const/16 v4, 0xd

    .line 166
    .line 167
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->n:J

    .line 168
    .line 169
    invoke-interface {v1, v4, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 170
    .line 171
    .line 172
    const/16 v4, 0xe

    .line 173
    .line 174
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->o:J

    .line 175
    .line 176
    invoke-interface {v1, v4, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 177
    .line 178
    .line 179
    const/16 v4, 0xf

    .line 180
    .line 181
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->p:J

    .line 182
    .line 183
    invoke-interface {v1, v4, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 184
    .line 185
    .line 186
    iget-boolean v4, v0, Landroidx/work/impl/model/WorkSpec;->q:Z

    .line 187
    .line 188
    const/16 v8, 0x10

    .line 189
    .line 190
    int-to-long v12, v4

    .line 191
    invoke-interface {v1, v8, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 192
    .line 193
    .line 194
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-eqz v8, :cond_8

    .line 201
    .line 202
    if-ne v8, v3, :cond_7

    .line 203
    .line 204
    move v4, v3

    .line 205
    goto :goto_6

    .line 206
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_8
    const/4 v4, 0x0

    .line 228
    :goto_6
    const/16 v8, 0x11

    .line 229
    .line 230
    int-to-long v12, v4

    .line 231
    invoke-interface {v1, v8, v12, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 232
    .line 233
    .line 234
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 235
    .line 236
    const/16 v8, 0x17

    .line 237
    .line 238
    const/16 v12, 0x16

    .line 239
    .line 240
    const/16 v13, 0x15

    .line 241
    .line 242
    const/16 v14, 0x14

    .line 243
    .line 244
    const/16 v15, 0x13

    .line 245
    .line 246
    const/16 v7, 0x12

    .line 247
    .line 248
    if-eqz v0, :cond_14

    .line 249
    .line 250
    iget-object v9, v0, Landroidx/work/Constraints;->a:Landroidx/work/NetworkType;

    .line 251
    .line 252
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_d

    .line 257
    .line 258
    if-eq v4, v3, :cond_e

    .line 259
    .line 260
    if-eq v4, v2, :cond_c

    .line 261
    .line 262
    if-eq v4, v5, :cond_b

    .line 263
    .line 264
    if-eq v4, v6, :cond_a

    .line 265
    .line 266
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 267
    .line 268
    const/16 v3, 0x1e

    .line 269
    .line 270
    if-lt v2, v3, :cond_9

    .line 271
    .line 272
    sget-object v2, Landroidx/work/NetworkType;->j:Landroidx/work/NetworkType;

    .line 273
    .line 274
    if-ne v9, v2, :cond_9

    .line 275
    .line 276
    const/4 v3, 0x5

    .line 277
    goto :goto_7

    .line 278
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 279
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v0

    .line 299
    :cond_a
    move v3, v6

    .line 300
    goto :goto_7

    .line 301
    :cond_b
    move v3, v5

    .line 302
    goto :goto_7

    .line 303
    :cond_c
    move v3, v2

    .line 304
    goto :goto_7

    .line 305
    :cond_d
    const/4 v3, 0x0

    .line 306
    :cond_e
    :goto_7
    int-to-long v2, v3

    .line 307
    invoke-interface {v1, v7, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 308
    .line 309
    .line 310
    iget-boolean v2, v0, Landroidx/work/Constraints;->b:Z

    .line 311
    .line 312
    int-to-long v2, v2

    .line 313
    invoke-interface {v1, v15, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 314
    .line 315
    .line 316
    iget-boolean v2, v0, Landroidx/work/Constraints;->c:Z

    .line 317
    .line 318
    int-to-long v2, v2

    .line 319
    invoke-interface {v1, v14, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 320
    .line 321
    .line 322
    iget-boolean v2, v0, Landroidx/work/Constraints;->d:Z

    .line 323
    .line 324
    int-to-long v2, v2

    .line 325
    invoke-interface {v1, v13, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 326
    .line 327
    .line 328
    iget-boolean v2, v0, Landroidx/work/Constraints;->e:Z

    .line 329
    .line 330
    int-to-long v2, v2

    .line 331
    invoke-interface {v1, v12, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 332
    .line 333
    .line 334
    iget-wide v2, v0, Landroidx/work/Constraints;->f:J

    .line 335
    .line 336
    invoke-interface {v1, v8, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 337
    .line 338
    .line 339
    iget-wide v2, v0, Landroidx/work/Constraints;->g:J

    .line 340
    .line 341
    const/16 v4, 0x18

    .line 342
    .line 343
    invoke-interface {v1, v4, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->I(IJ)V

    .line 344
    .line 345
    .line 346
    iget-object v0, v0, Landroidx/work/Constraints;->h:Landroidx/work/ContentUriTriggers;

    .line 347
    .line 348
    iget-object v2, v0, Landroidx/work/ContentUriTriggers;->a:Ljava/util/HashSet;

    .line 349
    .line 350
    iget-object v0, v0, Landroidx/work/ContentUriTriggers;->a:Ljava/util/HashSet;

    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    const/4 v3, 0x0

    .line 357
    if-nez v2, :cond_f

    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 361
    .line 362
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    .line 364
    .line 365
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 366
    .line 367
    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 368
    .line 369
    .line 370
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_10

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    check-cast v3, Landroidx/work/ContentUriTriggers$Trigger;

    .line 392
    .line 393
    iget-object v5, v3, Landroidx/work/ContentUriTriggers$Trigger;->a:Landroid/net/Uri;

    .line 394
    .line 395
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-boolean v3, v3, Landroidx/work/ContentUriTriggers$Trigger;->b:Z

    .line 403
    .line 404
    invoke-virtual {v4, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .line 406
    .line 407
    goto :goto_8

    .line 408
    :catchall_0
    move-exception v0

    .line 409
    move-object v1, v0

    .line 410
    move-object v3, v4

    .line 411
    goto :goto_e

    .line 412
    :catch_0
    move-exception v0

    .line 413
    move-object v3, v4

    .line 414
    goto :goto_a

    .line 415
    :cond_10
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 416
    .line 417
    .line 418
    goto :goto_9

    .line 419
    :catch_1
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 421
    .line 422
    .line 423
    :cond_11
    :goto_9
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 424
    .line 425
    .line 426
    goto :goto_b

    .line 427
    :catch_2
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    .line 430
    .line 431
    goto :goto_b

    .line 432
    :catchall_1
    move-exception v0

    .line 433
    move-object v1, v0

    .line 434
    goto :goto_e

    .line 435
    :catch_3
    move-exception v0

    .line 436
    :goto_a
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 437
    .line 438
    .line 439
    if-eqz v3, :cond_11

    .line 440
    .line 441
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 442
    .line 443
    .line 444
    goto :goto_9

    .line 445
    :goto_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    :goto_c
    if-nez v3, :cond_12

    .line 450
    .line 451
    const/16 v2, 0x19

    .line 452
    .line 453
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_d

    .line 457
    :cond_12
    const/16 v2, 0x19

    .line 458
    .line 459
    invoke-interface {v1, v3, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->R([BI)V

    .line 460
    .line 461
    .line 462
    :goto_d
    return-void

    .line 463
    :goto_e
    if-eqz v3, :cond_13

    .line 464
    .line 465
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 466
    .line 467
    .line 468
    goto :goto_f

    .line 469
    :catch_4
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 471
    .line 472
    .line 473
    :cond_13
    :goto_f
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 474
    .line 475
    .line 476
    goto :goto_10

    .line 477
    :catch_5
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    :goto_10
    throw v1

    .line 482
    :cond_14
    invoke-interface {v1, v7}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 483
    .line 484
    .line 485
    invoke-interface {v1, v15}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v1, v14}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 489
    .line 490
    .line 491
    invoke-interface {v1, v13}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 492
    .line 493
    .line 494
    invoke-interface {v1, v12}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 495
    .line 496
    .line 497
    invoke-interface {v1, v8}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 498
    .line 499
    .line 500
    const/16 v4, 0x18

    .line 501
    .line 502
    invoke-interface {v1, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 503
    .line 504
    .line 505
    const/16 v2, 0x19

    .line 506
    .line 507
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->g0(I)V

    .line 508
    .line 509
    .line 510
    return-void
.end method
