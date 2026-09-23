.class public final Lokio/internal/-FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okio"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-FileSystem"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n58#2,4:156\n58#2,22:160\n66#2,10:182\n62#2,3:192\n77#2,3:195\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,4\n66#1:160,22\n65#1:182,10\n65#1:192,3\n65#1:195,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZLkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 15
    .line 16
    iget v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lokio/internal/-FileSystem$collectRecursively$1;

    .line 29
    .line 30
    invoke-direct {v4, v3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->o:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v10, 0x0

    .line 45
    if-eqz v6, :cond_4

    .line 46
    .line 47
    if-eq v6, v9, :cond_3

    .line 48
    .line 49
    if-eq v6, v8, :cond_2

    .line 50
    .line 51
    if-ne v6, v7, :cond_1

    .line 52
    .line 53
    iget-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Ljava/util/List;

    .line 56
    .line 57
    iget-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lokio/Path;

    .line 60
    .line 61
    iget-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 64
    .line 65
    iget-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lokio/FileSystem;

    .line 68
    .line 69
    iget-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lkotlin/sequences/SequenceScope;

    .line 72
    .line 73
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_2
    iget v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->n:I

    .line 87
    .line 88
    iget-boolean v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->m:Z

    .line 89
    .line 90
    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->l:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Lokio/Path;

    .line 93
    .line 94
    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->k:Ljava/util/Iterator;

    .line 95
    .line 96
    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->j:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v6, Lokio/Path;

    .line 99
    .line 100
    iget-object v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->i:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v9, Ljava/util/List;

    .line 103
    .line 104
    iget-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v11, Lokio/Path;

    .line 107
    .line 108
    iget-object v12, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v12, Lkotlin/collections/ArrayDeque;

    .line 111
    .line 112
    iget-object v13, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v13, Lokio/FileSystem;

    .line 115
    .line 116
    iget-object v14, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v14, Lkotlin/sequences/SequenceScope;

    .line 119
    .line 120
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    move-object v15, v6

    .line 124
    move v6, v1

    .line 125
    move-object v1, v12

    .line 126
    move-object v12, v15

    .line 127
    move-object v15, v13

    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_3
    iget-boolean v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->m:Z

    .line 134
    .line 135
    iget-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v1, Lokio/Path;

    .line 138
    .line 139
    iget-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Lkotlin/collections/ArrayDeque;

    .line 142
    .line 143
    iget-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v6, Lokio/FileSystem;

    .line 146
    .line 147
    iget-object v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v9, Lkotlin/sequences/SequenceScope;

    .line 150
    .line 151
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    move-object v3, v6

    .line 155
    move v6, v0

    .line 156
    move-object v0, v9

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    if-nez v2, :cond_5

    .line 162
    .line 163
    iput-object v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 164
    .line 165
    move-object/from16 v3, p1

    .line 166
    .line 167
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 168
    .line 169
    move-object/from16 v6, p2

    .line 170
    .line 171
    iput-object v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 174
    .line 175
    iput-boolean v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->m:Z

    .line 176
    .line 177
    iput v9, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I

    .line 178
    .line 179
    invoke-virtual {v0, v1, v4}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    if-ne v9, v5, :cond_6

    .line 184
    .line 185
    goto/16 :goto_8

    .line 186
    .line 187
    :cond_5
    move-object/from16 v3, p1

    .line 188
    .line 189
    move-object/from16 v6, p2

    .line 190
    .line 191
    :cond_6
    move-object/from16 v20, v6

    .line 192
    .line 193
    move v6, v2

    .line 194
    move-object/from16 v2, v20

    .line 195
    .line 196
    :goto_1
    invoke-virtual {v3, v1}, Lokio/FileSystem;->a(Lokio/Path;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    if-nez v9, :cond_7

    .line 201
    .line 202
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    :cond_7
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-nez v11, :cond_d

    .line 211
    .line 212
    const/4 v11, 0x0

    .line 213
    move-object v12, v1

    .line 214
    move v13, v11

    .line 215
    :goto_2
    const-string v14, "<this>"

    .line 216
    .line 217
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v14, "path"

    .line 221
    .line 222
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    const-string v14, "path"

    .line 229
    .line 230
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v15, "<this>"

    .line 234
    .line 235
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v12}, Lokio/FileSystem;->b(Lokio/Path;)Lokio/FileMetadata;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    if-eqz v14, :cond_c

    .line 246
    .line 247
    iget-object v14, v14, Lokio/FileMetadata;->c:Lokio/Path;

    .line 248
    .line 249
    if-nez v14, :cond_8

    .line 250
    .line 251
    move-object v7, v10

    .line 252
    goto :goto_3

    .line 253
    :cond_8
    invoke-virtual {v12}, Lokio/Path;->b()Lokio/Path;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    const-string v7, "child"

    .line 264
    .line 265
    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v15, v14, v11}, Lokio/internal/-Path;->b(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    :goto_3
    if-nez v7, :cond_b

    .line 273
    .line 274
    if-nez v13, :cond_d

    .line 275
    .line 276
    invoke-virtual {v2, v12}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 283
    move-object v14, v0

    .line 284
    move-object v11, v1

    .line 285
    move-object v1, v2

    .line 286
    move-object v15, v3

    .line 287
    move-object v2, v7

    .line 288
    move v0, v13

    .line 289
    :goto_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_a

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    move-object/from16 v17, v3

    .line 300
    .line 301
    check-cast v17, Lokio/Path;

    .line 302
    .line 303
    iput-object v14, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 304
    .line 305
    iput-object v15, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v1, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object v11, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 310
    .line 311
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->i:Ljava/lang/Object;

    .line 316
    .line 317
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->j:Ljava/lang/Object;

    .line 322
    .line 323
    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->k:Ljava/util/Iterator;

    .line 324
    .line 325
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->l:Ljava/lang/Object;

    .line 330
    .line 331
    iput-boolean v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->m:Z

    .line 332
    .line 333
    iput v0, v4, Lokio/internal/-FileSystem$collectRecursively$1;->n:I

    .line 334
    .line 335
    iput v8, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 336
    .line 337
    move-object/from16 v16, v1

    .line 338
    .line 339
    move-object/from16 v19, v4

    .line 340
    .line 341
    move/from16 v18, v6

    .line 342
    .line 343
    :try_start_3
    invoke-static/range {v14 .. v19}, Lokio/internal/-FileSystem;->a(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZLkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    if-ne v1, v5, :cond_9

    .line 348
    .line 349
    goto/16 :goto_8

    .line 350
    .line 351
    :cond_9
    move-object/from16 v1, v16

    .line 352
    .line 353
    move/from16 v6, v18

    .line 354
    .line 355
    move-object/from16 v4, v19

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    :goto_5
    move-object/from16 v12, v16

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :catchall_2
    move-exception v0

    .line 363
    move-object/from16 v16, v1

    .line 364
    .line 365
    goto :goto_5

    .line 366
    :cond_a
    move-object/from16 v16, v1

    .line 367
    .line 368
    move-object/from16 v19, v4

    .line 369
    .line 370
    move/from16 v18, v6

    .line 371
    .line 372
    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-object v1, v11

    .line 376
    move-object v0, v14

    .line 377
    move-object v3, v15

    .line 378
    move-object/from16 v2, v16

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :catchall_3
    move-exception v0

    .line 382
    move-object v12, v2

    .line 383
    :goto_6
    invoke-virtual {v12}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 388
    .line 389
    move-object v12, v7

    .line 390
    const/4 v7, 0x3

    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :cond_c
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 394
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v2, "no such file: "

    .line 398
    .line 399
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v0

    .line 413
    :cond_d
    :goto_7
    if-eqz v6, :cond_f

    .line 414
    .line 415
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    iput-object v7, v4, Lokio/internal/-FileSystem$collectRecursively$1;->c:Ljava/lang/Object;

    .line 420
    .line 421
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    iput-object v3, v4, Lokio/internal/-FileSystem$collectRecursively$1;->f:Ljava/lang/Object;

    .line 426
    .line 427
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->g:Ljava/lang/Object;

    .line 432
    .line 433
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->h:Ljava/lang/Object;

    .line 438
    .line 439
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    iput-object v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->i:Ljava/lang/Object;

    .line 444
    .line 445
    iput-object v10, v4, Lokio/internal/-FileSystem$collectRecursively$1;->j:Ljava/lang/Object;

    .line 446
    .line 447
    iput-object v10, v4, Lokio/internal/-FileSystem$collectRecursively$1;->k:Ljava/util/Iterator;

    .line 448
    .line 449
    iput-object v10, v4, Lokio/internal/-FileSystem$collectRecursively$1;->l:Ljava/lang/Object;

    .line 450
    .line 451
    iput-boolean v6, v4, Lokio/internal/-FileSystem$collectRecursively$1;->m:Z

    .line 452
    .line 453
    const/4 v2, 0x3

    .line 454
    iput v2, v4, Lokio/internal/-FileSystem$collectRecursively$1;->p:I

    .line 455
    .line 456
    invoke-virtual {v0, v1, v4}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    if-ne v0, v5, :cond_e

    .line 461
    .line 462
    :goto_8
    return-object v5

    .line 463
    :cond_e
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 464
    .line 465
    return-object v0

    .line 466
    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 467
    .line 468
    return-object v0
.end method
