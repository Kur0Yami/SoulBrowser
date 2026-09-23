.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->a:I

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->a:I

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->h:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 6
    .line 7
    const-string v3, "PRAGMA page_size"

    .line 8
    .line 9
    const-string v4, "PRAGMA page_count"

    .line 10
    .line 11
    const-string v6, "bytes"

    .line 12
    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v8, 0x3

    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x1

    .line 19
    iget-object v14, v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->d:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v15, v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->c:Ljava/lang/Object;

    .line 22
    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    iget-object v5, v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/a;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v15, Ljava/util/ArrayList;

    .line 31
    .line 32
    check-cast v14, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    check-cast v0, Landroid/database/Cursor;

    .line 37
    .line 38
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 39
    .line 40
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const/4 v4, 0x7

    .line 51
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    move v4, v13

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move v4, v12

    .line 60
    :goto_1
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->a()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual {v11, v12}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->g(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 69
    .line 70
    .line 71
    move-object/from16 v18, v14

    .line 72
    .line 73
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    invoke-virtual {v11, v13, v14}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->f(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v13

    .line 84
    invoke-virtual {v11, v13, v14}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->h(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 85
    .line 86
    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 90
    .line 91
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    if-nez v13, :cond_1

    .line 96
    .line 97
    sget-object v13, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    new-instance v14, Lcom/google/android/datatransport/Encoding;

    .line 101
    .line 102
    invoke-direct {v14, v13}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v13, v14

    .line 106
    :goto_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    invoke-direct {v4, v13, v14}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 114
    .line 115
    .line 116
    :goto_3
    const/4 v1, 0x6

    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_2
    new-instance v4, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 120
    .line 121
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    if-nez v13, :cond_3

    .line 126
    .line 127
    sget-object v13, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    new-instance v14, Lcom/google/android/datatransport/Encoding;

    .line 131
    .line 132
    invoke-direct {v14, v13}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    move-object v13, v14

    .line 136
    :goto_4
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f()Landroid/database/sqlite/SQLiteDatabase;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    filled-new-array {v6}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v21

    .line 144
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    filled-new-array {v14}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v23

    .line 152
    const/16 v25, 0x0

    .line 153
    .line 154
    const-string v26, "sequence_num"

    .line 155
    .line 156
    const-string v20, "event_payloads"

    .line 157
    .line 158
    const-string v22, "event_id = ?"

    .line 159
    .line 160
    const/16 v24, 0x0

    .line 161
    .line 162
    invoke-virtual/range {v19 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    :try_start_0
    sget-object v19, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 167
    .line 168
    new-instance v12, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    const/4 v7, 0x0

    .line 174
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 175
    .line 176
    .line 177
    move-result v21

    .line 178
    if-eqz v21, :cond_4

    .line 179
    .line 180
    const/4 v10, 0x0

    .line 181
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    array-length v8, v8

    .line 189
    add-int/2addr v7, v8

    .line 190
    const/4 v8, 0x3

    .line 191
    const/4 v10, 0x4

    .line 192
    goto :goto_5

    .line 193
    :cond_4
    new-array v7, v7, [B

    .line 194
    .line 195
    const/4 v8, 0x0

    .line 196
    const/4 v10, 0x0

    .line 197
    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-ge v8, v9, :cond_5

    .line 202
    .line 203
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    check-cast v9, [B

    .line 208
    .line 209
    array-length v1, v9

    .line 210
    move/from16 v24, v8

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    invoke-static {v9, v8, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    .line 215
    .line 216
    array-length v1, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    add-int/2addr v10, v1

    .line 218
    add-int/lit8 v8, v24, 0x1

    .line 219
    .line 220
    move-object/from16 v1, p0

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 224
    .line 225
    .line 226
    invoke-direct {v4, v13, v7}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v11, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->e(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :goto_7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-nez v4, :cond_6

    .line 238
    .line 239
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v11, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->d(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 248
    .line 249
    .line 250
    :cond_6
    invoke-virtual {v11}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->b()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;

    .line 255
    .line 256
    move-object/from16 v7, v18

    .line 257
    .line 258
    invoke-direct {v4, v2, v3, v7, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-object/from16 v1, p0

    .line 265
    .line 266
    move-object v14, v7

    .line 267
    const/4 v7, 0x5

    .line 268
    const/4 v8, 0x3

    .line 269
    const/4 v9, 0x2

    .line 270
    const/4 v10, 0x4

    .line 271
    const/4 v12, 0x0

    .line 272
    const/4 v13, 0x1

    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :catchall_0
    move-exception v0

    .line 276
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_7
    return-object v16

    .line 281
    :pswitch_0
    check-cast v15, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 282
    .line 283
    check-cast v14, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 284
    .line 285
    move-object/from16 v0, p1

    .line 286
    .line 287
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 288
    .line 289
    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 290
    .line 291
    const/16 v17, 0x0

    .line 292
    .line 293
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f()Landroid/database/sqlite/SQLiteDatabase;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 306
    .line 307
    .line 308
    move-result-wide v7

    .line 309
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f()Landroid/database/sqlite/SQLiteDatabase;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 318
    .line 319
    .line 320
    move-result-wide v3

    .line 321
    mul-long/2addr v3, v7

    .line 322
    iget-object v7, v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->h:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 323
    .line 324
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->e()J

    .line 325
    .line 326
    .line 327
    move-result-wide v8

    .line 328
    cmp-long v3, v3, v8

    .line 329
    .line 330
    if-ltz v3, :cond_8

    .line 331
    .line 332
    const-wide/16 v0, 0x1

    .line 333
    .line 334
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->h()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->e(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-wide/16 v0, -0x1

    .line 342
    .line 343
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    goto/16 :goto_d

    .line 348
    .line 349
    :cond_8
    invoke-static {v0, v14}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->i(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    if-eqz v2, :cond_9

    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    goto :goto_8

    .line 360
    :cond_9
    new-instance v2, Landroid/content/ContentValues;

    .line 361
    .line 362
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string v3, "backend_name"

    .line 366
    .line 367
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->d()Lcom/google/android/datatransport/Priority;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->a(Lcom/google/android/datatransport/Priority;)I

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    const-string v4, "priority"

    .line 387
    .line 388
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    .line 390
    .line 391
    const-string v3, "next_request_ms"

    .line 392
    .line 393
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    if-eqz v3, :cond_a

    .line 401
    .line 402
    invoke-virtual {v14}, Lcom/google/android/datatransport/runtime/TransportContext;->c()[B

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    const/4 v8, 0x0

    .line 407
    invoke-static {v3, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    const-string v4, "extras"

    .line 412
    .line 413
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_a
    const-string v3, "transport_contexts"

    .line 417
    .line 418
    move-object/from16 v4, v16

    .line 419
    .line 420
    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 421
    .line 422
    .line 423
    move-result-wide v2

    .line 424
    :goto_8
    invoke-virtual {v7}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->d()I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->e()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    iget-object v5, v5, Lcom/google/android/datatransport/runtime/EncodedPayload;->b:[B

    .line 433
    .line 434
    array-length v7, v5

    .line 435
    if-gt v7, v4, :cond_b

    .line 436
    .line 437
    const/4 v7, 0x1

    .line 438
    goto :goto_9

    .line 439
    :cond_b
    const/4 v7, 0x0

    .line 440
    :goto_9
    new-instance v8, Landroid/content/ContentValues;

    .line 441
    .line 442
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v9, "context_id"

    .line 446
    .line 447
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    .line 453
    .line 454
    const-string v2, "transport_name"

    .line 455
    .line 456
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->h()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->f()J

    .line 464
    .line 465
    .line 466
    move-result-wide v2

    .line 467
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    const-string v3, "timestamp_ms"

    .line 472
    .line 473
    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->i()J

    .line 477
    .line 478
    .line 479
    move-result-wide v2

    .line 480
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    const-string v3, "uptime_ms"

    .line 485
    .line 486
    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->e()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    iget-object v2, v2, Lcom/google/android/datatransport/runtime/EncodedPayload;->a:Lcom/google/android/datatransport/Encoding;

    .line 494
    .line 495
    iget-object v2, v2, Lcom/google/android/datatransport/Encoding;->a:Ljava/lang/String;

    .line 496
    .line 497
    const-string v3, "payload_encoding"

    .line 498
    .line 499
    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    const-string v2, "code"

    .line 503
    .line 504
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->d()Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    .line 510
    .line 511
    const-string v2, "num_attempts"

    .line 512
    .line 513
    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    .line 515
    .line 516
    const-string v1, "inline"

    .line 517
    .line 518
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 523
    .line 524
    .line 525
    if-eqz v7, :cond_c

    .line 526
    .line 527
    move-object v1, v5

    .line 528
    goto :goto_a

    .line 529
    :cond_c
    const/4 v10, 0x0

    .line 530
    new-array v1, v10, [B

    .line 531
    .line 532
    :goto_a
    const-string v2, "payload"

    .line 533
    .line 534
    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 535
    .line 536
    .line 537
    const-string v1, "events"

    .line 538
    .line 539
    const/4 v2, 0x0

    .line 540
    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 541
    .line 542
    .line 543
    move-result-wide v8

    .line 544
    const-string v1, "event_id"

    .line 545
    .line 546
    if-nez v7, :cond_d

    .line 547
    .line 548
    array-length v2, v5

    .line 549
    int-to-double v2, v2

    .line 550
    int-to-double v10, v4

    .line 551
    div-double/2addr v2, v10

    .line 552
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 553
    .line 554
    .line 555
    move-result-wide v2

    .line 556
    double-to-int v2, v2

    .line 557
    const/4 v13, 0x1

    .line 558
    :goto_b
    if-gt v13, v2, :cond_d

    .line 559
    .line 560
    add-int/lit8 v3, v13, -0x1

    .line 561
    .line 562
    mul-int/2addr v3, v4

    .line 563
    mul-int v7, v13, v4

    .line 564
    .line 565
    array-length v10, v5

    .line 566
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    invoke-static {v5, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    new-instance v7, Landroid/content/ContentValues;

    .line 575
    .line 576
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .line 578
    .line 579
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 580
    .line 581
    .line 582
    move-result-object v10

    .line 583
    invoke-virtual {v7, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 584
    .line 585
    .line 586
    const-string v10, "sequence_num"

    .line 587
    .line 588
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v11

    .line 592
    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 596
    .line 597
    .line 598
    const-string v3, "event_payloads"

    .line 599
    .line 600
    const/4 v10, 0x0

    .line 601
    invoke-virtual {v0, v3, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 602
    .line 603
    .line 604
    add-int/lit8 v13, v13, 0x1

    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_d
    invoke-virtual {v15}, Lcom/google/android/datatransport/runtime/EventInternal;->c()Ljava/util/Map;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    if-eqz v3, :cond_e

    .line 628
    .line 629
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    check-cast v3, Ljava/util/Map$Entry;

    .line 634
    .line 635
    new-instance v4, Landroid/content/ContentValues;

    .line 636
    .line 637
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .line 639
    .line 640
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    .line 646
    .line 647
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    check-cast v5, Ljava/lang/String;

    .line 652
    .line 653
    const-string v6, "name"

    .line 654
    .line 655
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    check-cast v3, Ljava/lang/String;

    .line 663
    .line 664
    const-string v5, "value"

    .line 665
    .line 666
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    const-string v3, "event_metadata"

    .line 670
    .line 671
    const/4 v10, 0x0

    .line 672
    invoke-virtual {v0, v3, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 673
    .line 674
    .line 675
    goto :goto_c

    .line 676
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    :goto_d
    return-object v0

    .line 681
    :pswitch_1
    check-cast v15, Ljava/util/HashMap;

    .line 682
    .line 683
    check-cast v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    .line 684
    .line 685
    iget-object v0, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->b:Ljava/util/ArrayList;

    .line 686
    .line 687
    move-object/from16 v1, p1

    .line 688
    .line 689
    check-cast v1, Landroid/database/Cursor;

    .line 690
    .line 691
    sget-object v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j:Lcom/google/android/datatransport/Encoding;

    .line 692
    .line 693
    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    if-eqz v6, :cond_17

    .line 698
    .line 699
    const/4 v8, 0x0

    .line 700
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    const/4 v12, 0x1

    .line 705
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 706
    .line 707
    .line 708
    move-result v7

    .line 709
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->f:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 710
    .line 711
    if-nez v7, :cond_f

    .line 712
    .line 713
    :goto_f
    const/4 v10, 0x2

    .line 714
    :goto_10
    const/4 v11, 0x4

    .line 715
    :goto_11
    const/4 v13, 0x5

    .line 716
    goto :goto_13

    .line 717
    :cond_f
    if-ne v7, v12, :cond_10

    .line 718
    .line 719
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->g:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 720
    .line 721
    goto :goto_f

    .line 722
    :cond_10
    const/4 v10, 0x2

    .line 723
    if-ne v7, v10, :cond_11

    .line 724
    .line 725
    move-object v9, v2

    .line 726
    goto :goto_10

    .line 727
    :cond_11
    const/4 v10, 0x3

    .line 728
    if-ne v7, v10, :cond_12

    .line 729
    .line 730
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->i:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 731
    .line 732
    goto :goto_f

    .line 733
    :cond_12
    const/4 v11, 0x4

    .line 734
    if-ne v7, v11, :cond_13

    .line 735
    .line 736
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->j:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 737
    .line 738
    const/4 v10, 0x2

    .line 739
    goto :goto_11

    .line 740
    :cond_13
    const/4 v13, 0x5

    .line 741
    if-ne v7, v13, :cond_14

    .line 742
    .line 743
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->k:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 744
    .line 745
    :goto_12
    const/4 v10, 0x2

    .line 746
    goto :goto_13

    .line 747
    :cond_14
    const/4 v8, 0x6

    .line 748
    if-ne v7, v8, :cond_15

    .line 749
    .line 750
    sget-object v9, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->l:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 751
    .line 752
    goto :goto_12

    .line 753
    :cond_15
    const-string v8, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 754
    .line 755
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    const-string v10, "SQLiteEventStore"

    .line 760
    .line 761
    invoke-static {v7, v10, v8}, Lcom/google/android/datatransport/runtime/logging/Logging;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    goto :goto_12

    .line 765
    :goto_13
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 766
    .line 767
    .line 768
    move-result-wide v7

    .line 769
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v16

    .line 773
    if-nez v16, :cond_16

    .line 774
    .line 775
    new-instance v10, Ljava/util/ArrayList;

    .line 776
    .line 777
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v15, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    :cond_16
    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v6

    .line 787
    check-cast v6, Ljava/util/List;

    .line 788
    .line 789
    new-instance v10, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    .line 790
    .line 791
    invoke-direct {v10, v7, v8, v9}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;-><init>(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)V

    .line 792
    .line 793
    .line 794
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    goto :goto_e

    .line 798
    :cond_17
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-eqz v2, :cond_18

    .line 811
    .line 812
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    check-cast v2, Ljava/util/Map$Entry;

    .line 817
    .line 818
    sget v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->c:I

    .line 819
    .line 820
    new-instance v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    .line 821
    .line 822
    invoke-direct {v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    .line 823
    .line 824
    .line 825
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    check-cast v7, Ljava/lang/String;

    .line 830
    .line 831
    iput-object v7, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->a:Ljava/lang/String;

    .line 832
    .line 833
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    check-cast v2, Ljava/util/List;

    .line 838
    .line 839
    iput-object v2, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->b:Ljava/util/List;

    .line 840
    .line 841
    new-instance v2, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    .line 842
    .line 843
    iget-object v7, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->a:Ljava/lang/String;

    .line 844
    .line 845
    iget-object v6, v6, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->b:Ljava/util/List;

    .line 846
    .line 847
    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 848
    .line 849
    .line 850
    move-result-object v6

    .line 851
    invoke-direct {v2, v7, v6}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    .line 856
    .line 857
    goto :goto_14

    .line 858
    :cond_18
    iget-object v1, v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 859
    .line 860
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/Clock;->a()J

    .line 861
    .line 862
    .line 863
    move-result-wide v1

    .line 864
    new-instance v6, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;

    .line 865
    .line 866
    invoke-direct {v6, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/b;-><init>(J)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->j(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    check-cast v1, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 874
    .line 875
    iput-object v1, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->a:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 876
    .line 877
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f()Landroid/database/sqlite/SQLiteDatabase;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 886
    .line 887
    .line 888
    move-result-wide v1

    .line 889
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->f()Landroid/database/sqlite/SQLiteDatabase;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 898
    .line 899
    .line 900
    move-result-wide v3

    .line 901
    mul-long/2addr v3, v1

    .line 902
    sget-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    .line 903
    .line 904
    iget-wide v1, v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->b:J

    .line 905
    .line 906
    new-instance v6, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    .line 907
    .line 908
    invoke-direct {v6, v3, v4, v1, v2}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;-><init>(JJ)V

    .line 909
    .line 910
    .line 911
    new-instance v1, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 912
    .line 913
    invoke-direct {v1, v6}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;-><init>(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;)V

    .line 914
    .line 915
    .line 916
    iput-object v1, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->c:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 917
    .line 918
    iget-object v1, v5, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->i:Ljavax/inject/Provider;

    .line 919
    .line 920
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    check-cast v1, Ljava/lang/String;

    .line 925
    .line 926
    iput-object v1, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->d:Ljava/lang/String;

    .line 927
    .line 928
    new-instance v1, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    .line 929
    .line 930
    iget-object v2, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->a:Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 931
    .line 932
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    iget-object v3, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->c:Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    .line 937
    .line 938
    iget-object v4, v14, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->d:Ljava/lang/String;

    .line 939
    .line 940
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;-><init>(Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;Ljava/util/List;Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    return-object v1

    .line 944
    nop

    .line 945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
