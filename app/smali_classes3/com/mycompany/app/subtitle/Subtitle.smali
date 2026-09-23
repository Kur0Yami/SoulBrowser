.class public Lcom/mycompany/app/subtitle/Subtitle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v8, "ttml"

    .line 2
    .line 3
    const-string v9, "vtt"

    .line 4
    .line 5
    const-string v0, "ass"

    .line 6
    .line 7
    const-string v1, "psb"

    .line 8
    .line 9
    const-string v2, "scc"

    .line 10
    .line 11
    const-string v3, "smi"

    .line 12
    .line 13
    const-string v4, "srt"

    .line 14
    .line 15
    const-string v5, "ssa"

    .line 16
    .line 17
    const-string v6, "stl"

    .line 18
    .line 19
    const-string v7, "sub"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/mycompany/app/subtitle/Subtitle;->a:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v9, ".ttml"

    .line 28
    .line 29
    const-string v10, ".vtt"

    .line 30
    .line 31
    const-string v1, ".ass"

    .line 32
    .line 33
    const-string v2, ".psb"

    .line 34
    .line 35
    const-string v3, ".scc"

    .line 36
    .line 37
    const-string v4, ".smi"

    .line 38
    .line 39
    const-string v5, ".srt"

    .line 40
    .line 41
    const-string v6, ".ssa"

    .line 42
    .line 43
    const-string v7, ".stl"

    .line 44
    .line 45
    const-string v8, ".sub"

    .line 46
    .line 47
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/mycompany/app/subtitle/Subtitle;->b:[Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method

.method public static a(ILjava/io/InputStream;Ljava/lang/String;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)Ljava/util/ArrayList;
    .locals 30

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/16 v17, 0x0

    .line 12
    .line 13
    goto/16 :goto_3e

    .line 14
    .line 15
    :cond_1
    if-eqz v0, :cond_6b

    .line 16
    .line 17
    const/4 v5, 0x5

    .line 18
    if-ne v0, v5, :cond_2

    .line 19
    .line 20
    goto/16 :goto_3f

    .line 21
    .line 22
    :cond_2
    const-string v6, "\ufeff"

    .line 23
    .line 24
    const-string v7, ""

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    if-ne v0, v9, :cond_a

    .line 28
    .line 29
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 30
    .line 31
    new-instance v5, Ljava/io/InputStreamReader;

    .line 32
    .line 33
    invoke-direct {v5, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move v8, v9

    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v8, :cond_4

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .line 49
    .line 50
    :catch_1
    :cond_3
    const/4 v4, 0x0

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_1
    if-eqz v2, :cond_8

    .line 79
    .line 80
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 95
    if-nez v5, :cond_7

    .line 96
    .line 97
    :try_start_3
    invoke-static {v2}, Lcom/mycompany/app/subtitle/FormatPSB;->b(Ljava/lang/String;)Lcom/mycompany/app/subtitle/Caption;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    iget-object v5, v2, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 104
    .line 105
    iget v5, v5, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 106
    .line 107
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    iget-object v6, v2, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 121
    .line 122
    iput v5, v6, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 123
    .line 124
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v4}, Lcom/mycompany/app/subtitle/FormatPSB;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 132
    .line 133
    .line 134
    :catch_2
    :cond_7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    goto :goto_1

    .line 139
    :catch_3
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 140
    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 142
    .line 143
    .line 144
    :catch_4
    :cond_9
    :goto_4
    return-object v4

    .line 145
    :cond_a
    const/4 v10, 0x2

    .line 146
    const/16 v11, 0x10

    .line 147
    .line 148
    const-string v13, "<br />"

    .line 149
    .line 150
    move/from16 v16, v9

    .line 151
    .line 152
    const/16 v17, 0x0

    .line 153
    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    if-ne v0, v10, :cond_29

    .line 157
    .line 158
    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    .line 159
    .line 160
    new-instance v6, Ljava/io/InputStreamReader;

    .line 161
    .line 162
    invoke-direct {v6, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 166
    .line 167
    .line 168
    move/from16 v1, v18

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :catch_5
    move/from16 v1, v16

    .line 172
    .line 173
    move-object/from16 v0, v17

    .line 174
    .line 175
    :goto_5
    if-eqz v1, :cond_c

    .line 176
    .line 177
    if-eqz v0, :cond_b

    .line 178
    .line 179
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 180
    .line 181
    .line 182
    :catch_6
    :cond_b
    :goto_6
    move-object/from16 v4, v17

    .line 183
    .line 184
    goto/16 :goto_17

    .line 185
    .line 186
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance v2, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    const-string v10, "Scenarist_SCC V1.0"

    .line 213
    .line 214
    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_d

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :catch_7
    move-object/from16 p0, v0

    .line 225
    .line 226
    goto/16 :goto_16

    .line 227
    .line 228
    :cond_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    move-object v10, v6

    .line 233
    move-object/from16 v20, v7

    .line 234
    .line 235
    move/from16 v19, v16

    .line 236
    .line 237
    move-object/from16 v6, v17

    .line 238
    .line 239
    move/from16 v17, v18

    .line 240
    .line 241
    :goto_7
    if-eqz v10, :cond_e

    .line 242
    .line 243
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 244
    .line 245
    .line 246
    move-result v21

    .line 247
    if-eqz v21, :cond_f

    .line 248
    .line 249
    :cond_e
    move-object/from16 p0, v0

    .line 250
    .line 251
    goto/16 :goto_14

    .line 252
    .line 253
    :cond_f
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v21

    .line 261
    if-nez v21, :cond_24

    .line 262
    .line 263
    const/16 v21, 0x8

    .line 264
    .line 265
    const-string v8, "\t"

    .line 266
    .line 267
    invoke-virtual {v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    new-instance v10, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    aget-object v12, v8, v18

    .line 277
    .line 278
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v12, "/29.97"

    .line 282
    .line 283
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    new-instance v12, Lcom/mycompany/app/subtitle/Time;

    .line 287
    .line 288
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    invoke-direct {v12, v5, v10}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    aget-object v8, v8, v16

    .line 296
    .line 297
    const-string v10, " "

    .line 298
    .line 299
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    move/from16 v10, v18

    .line 304
    .line 305
    move-object/from16 v14, v20

    .line 306
    .line 307
    :goto_8
    array-length v15, v8

    .line 308
    if-ge v10, v15, :cond_23

    .line 309
    .line 310
    aget-object v15, v8, v10

    .line 311
    .line 312
    invoke-static {v15, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 313
    .line 314
    .line 315
    move-result v15

    .line 316
    and-int/lit16 v11, v15, 0x7f7f

    .line 317
    .line 318
    and-int/lit16 v5, v15, 0x6000

    .line 319
    .line 320
    if-eqz v5, :cond_12

    .line 321
    .line 322
    if-eqz v17, :cond_11

    .line 323
    .line 324
    and-int/lit16 v5, v15, 0x7f00

    .line 325
    .line 326
    ushr-int/lit8 v5, v5, 0x8

    .line 327
    .line 328
    int-to-byte v5, v5

    .line 329
    and-int/lit8 v11, v15, 0x7f

    .line 330
    .line 331
    int-to-byte v11, v11

    .line 332
    if-eqz v19, :cond_10

    .line 333
    .line 334
    new-instance v15, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-static {v5}, Lcom/mycompany/app/subtitle/FormatSCC;->b(B)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    new-instance v14, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-static {v11}, Lcom/mycompany/app/subtitle/FormatSCC;->b(B)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v14

    .line 372
    goto :goto_9

    .line 373
    :cond_10
    if-eqz v6, :cond_11

    .line 374
    .line 375
    new-instance v15, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v9, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-static {v5}, Lcom/mycompany/app/subtitle/FormatSCC;->b(B)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    iput-object v5, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 397
    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    iget-object v9, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-static {v11}, Lcom/mycompany/app/subtitle/FormatSCC;->b(B)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    iput-object v5, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 420
    .line 421
    :cond_11
    :goto_9
    move-object/from16 p0, v0

    .line 422
    .line 423
    goto/16 :goto_11

    .line 424
    .line 425
    :cond_12
    if-nez v11, :cond_13

    .line 426
    .line 427
    iget v5, v12, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 428
    .line 429
    int-to-double v4, v5

    .line 430
    const-wide v27, 0x4040aef006d56045L    # 33.366700033366705

    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    add-double v4, v4, v27

    .line 436
    .line 437
    double-to-int v4, v4

    .line 438
    iput v4, v12, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_13
    add-int/lit8 v4, v10, 0x1

    .line 442
    .line 443
    array-length v5, v8

    .line 444
    if-ge v4, v5, :cond_14

    .line 445
    .line 446
    aget-object v5, v8, v10

    .line 447
    .line 448
    aget-object v11, v8, v4

    .line 449
    .line 450
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-eqz v5, :cond_14

    .line 455
    .line 456
    move v10, v4

    .line 457
    :cond_14
    and-int/lit16 v4, v15, 0x800

    .line 458
    .line 459
    if-nez v4, :cond_1e

    .line 460
    .line 461
    and-int/lit16 v4, v15, 0x1670

    .line 462
    .line 463
    const/16 v5, 0x1420

    .line 464
    .line 465
    if-ne v4, v5, :cond_1f

    .line 466
    .line 467
    and-int/lit16 v4, v15, 0x100

    .line 468
    .line 469
    if-nez v4, :cond_1e

    .line 470
    .line 471
    and-int/lit8 v4, v15, 0xf

    .line 472
    .line 473
    if-eqz v4, :cond_1d

    .line 474
    .line 475
    const/16 v9, 0x9

    .line 476
    .line 477
    if-eq v4, v9, :cond_1c

    .line 478
    .line 479
    const/16 v5, 0xc

    .line 480
    .line 481
    if-eq v4, v5, :cond_19

    .line 482
    .line 483
    const/4 v5, 0x5

    .line 484
    if-eq v4, v5, :cond_17

    .line 485
    .line 486
    const/4 v5, 0x6

    .line 487
    if-eq v4, v5, :cond_17

    .line 488
    .line 489
    const/4 v5, 0x7

    .line 490
    if-eq v4, v5, :cond_17

    .line 491
    .line 492
    const/16 v5, 0xe

    .line 493
    .line 494
    if-eq v4, v5, :cond_16

    .line 495
    .line 496
    const/16 v5, 0xf

    .line 497
    .line 498
    if-eq v4, v5, :cond_15

    .line 499
    .line 500
    goto/16 :goto_e

    .line 501
    .line 502
    :cond_15
    new-instance v4, Lcom/mycompany/app/subtitle/Caption;

    .line 503
    .line 504
    invoke-direct {v4}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 505
    .line 506
    .line 507
    iput-object v12, v4, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 508
    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    iget-object v6, v4, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    iput-object v5, v4, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 527
    .line 528
    :goto_a
    move-object/from16 p0, v0

    .line 529
    .line 530
    move-object v6, v4

    .line 531
    :goto_b
    move/from16 v17, v16

    .line 532
    .line 533
    goto/16 :goto_11

    .line 534
    .line 535
    :cond_16
    move-object/from16 p0, v0

    .line 536
    .line 537
    move-object v14, v7

    .line 538
    goto :goto_b

    .line 539
    :cond_17
    if-eqz v6, :cond_18

    .line 540
    .line 541
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 542
    .line 543
    iget-object v4, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 544
    .line 545
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 546
    .line 547
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    invoke-static {v6, v1}, Lcom/mycompany/app/subtitle/FormatSCC;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V

    .line 555
    .line 556
    .line 557
    :cond_18
    new-instance v4, Lcom/mycompany/app/subtitle/Caption;

    .line 558
    .line 559
    invoke-direct {v4}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 560
    .line 561
    .line 562
    iput-object v12, v4, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 563
    .line 564
    move-object/from16 p0, v0

    .line 565
    .line 566
    move-object v6, v4

    .line 567
    move-object v14, v7

    .line 568
    :goto_c
    move/from16 v17, v16

    .line 569
    .line 570
    move/from16 v19, v18

    .line 571
    .line 572
    goto/16 :goto_11

    .line 573
    .line 574
    :cond_19
    if-eqz v6, :cond_1b

    .line 575
    .line 576
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 577
    .line 578
    iget-object v4, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 579
    .line 580
    if-eqz v4, :cond_1b

    .line 581
    .line 582
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 583
    .line 584
    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 585
    .line 586
    .line 587
    move-result-object v5

    .line 588
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    if-eqz v5, :cond_1a

    .line 593
    .line 594
    add-int/lit8 v4, v4, 0x1

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_1a
    iget-object v5, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 598
    .line 599
    iput v4, v5, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 600
    .line 601
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    invoke-static {v6, v1}, Lcom/mycompany/app/subtitle/FormatSCC;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V

    .line 609
    .line 610
    .line 611
    new-instance v4, Lcom/mycompany/app/subtitle/Caption;

    .line 612
    .line 613
    invoke-direct {v4}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 614
    .line 615
    .line 616
    goto :goto_a

    .line 617
    :cond_1b
    :goto_e
    move-object/from16 p0, v0

    .line 618
    .line 619
    goto :goto_b

    .line 620
    :cond_1c
    new-instance v4, Lcom/mycompany/app/subtitle/Caption;

    .line 621
    .line 622
    invoke-direct {v4}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 623
    .line 624
    .line 625
    iput-object v12, v4, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 626
    .line 627
    move-object/from16 p0, v0

    .line 628
    .line 629
    move-object v6, v4

    .line 630
    goto :goto_c

    .line 631
    :cond_1d
    move-object/from16 p0, v0

    .line 632
    .line 633
    move-object v14, v7

    .line 634
    move/from16 v17, v16

    .line 635
    .line 636
    move/from16 v19, v17

    .line 637
    .line 638
    goto/16 :goto_11

    .line 639
    .line 640
    :cond_1e
    move-object/from16 p0, v0

    .line 641
    .line 642
    move/from16 v17, v18

    .line 643
    .line 644
    goto/16 :goto_11

    .line 645
    .line 646
    :cond_1f
    if-eqz v17, :cond_11

    .line 647
    .line 648
    and-int/lit16 v4, v15, 0x1040

    .line 649
    .line 650
    const/16 v5, 0x1040

    .line 651
    .line 652
    if-ne v4, v5, :cond_21

    .line 653
    .line 654
    if-eqz v19, :cond_20

    .line 655
    .line 656
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-nez v4, :cond_20

    .line 661
    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v14

    .line 677
    :cond_20
    if-nez v19, :cond_11

    .line 678
    .line 679
    if-eqz v6, :cond_11

    .line 680
    .line 681
    iget-object v4, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 682
    .line 683
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    if-nez v4, :cond_11

    .line 688
    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    .line 690
    .line 691
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .line 693
    .line 694
    iget-object v5, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 695
    .line 696
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    iput-object v4, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 707
    .line 708
    goto/16 :goto_9

    .line 709
    .line 710
    :cond_21
    and-int/lit16 v4, v15, 0x1770

    .line 711
    .line 712
    const/16 v5, 0x1130

    .line 713
    .line 714
    if-ne v4, v5, :cond_11

    .line 715
    .line 716
    and-int/lit8 v4, v15, 0xf

    .line 717
    .line 718
    const-string v5, "\u266a"

    .line 719
    .line 720
    const-string v11, "\u00a0"

    .line 721
    .line 722
    const-string v15, "\ufffd"

    .line 723
    .line 724
    if-eqz v19, :cond_22

    .line 725
    .line 726
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    packed-switch v4, :pswitch_data_0

    .line 735
    .line 736
    .line 737
    move-object v5, v7

    .line 738
    goto :goto_f

    .line 739
    :pswitch_0
    move-object v5, v11

    .line 740
    goto :goto_f

    .line 741
    :pswitch_1
    move-object v5, v15

    .line 742
    :goto_f
    :pswitch_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    move-object/from16 p0, v0

    .line 750
    .line 751
    move-object v14, v4

    .line 752
    goto :goto_11

    .line 753
    :cond_22
    if-eqz v6, :cond_11

    .line 754
    .line 755
    new-instance v9, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 758
    .line 759
    .line 760
    move-object/from16 p0, v0

    .line 761
    .line 762
    :try_start_a
    iget-object v0, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 763
    .line 764
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    packed-switch v4, :pswitch_data_1

    .line 768
    .line 769
    .line 770
    move-object v5, v7

    .line 771
    goto :goto_10

    .line 772
    :pswitch_3
    move-object v5, v11

    .line 773
    goto :goto_10

    .line 774
    :pswitch_4
    move-object v5, v15

    .line 775
    :goto_10
    :pswitch_5
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    iput-object v0, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 783
    .line 784
    :goto_11
    add-int/lit8 v10, v10, 0x1

    .line 785
    .line 786
    const/4 v5, 0x5

    .line 787
    const/16 v11, 0x10

    .line 788
    .line 789
    move-object/from16 v0, p0

    .line 790
    .line 791
    goto/16 :goto_8

    .line 792
    .line 793
    :cond_23
    move-object/from16 v20, v14

    .line 794
    .line 795
    :goto_12
    move-object/from16 p0, v0

    .line 796
    .line 797
    goto :goto_13

    .line 798
    :cond_24
    const/16 v21, 0x8

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :goto_13
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v10

    .line 805
    const/4 v5, 0x5

    .line 806
    const/16 v11, 0x10

    .line 807
    .line 808
    move-object/from16 v0, p0

    .line 809
    .line 810
    goto/16 :goto_7

    .line 811
    .line 812
    :goto_14
    if-eqz v6, :cond_25

    .line 813
    .line 814
    new-instance v0, Lcom/mycompany/app/subtitle/Time;

    .line 815
    .line 816
    const-string v3, "99:59:59:29/29.97"

    .line 817
    .line 818
    const/4 v5, 0x5

    .line 819
    invoke-direct {v0, v5, v3}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 820
    .line 821
    .line 822
    iput-object v0, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 823
    .line 824
    :cond_25
    iget-object v0, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 825
    .line 826
    if-eqz v0, :cond_27

    .line 827
    .line 828
    iget v0, v0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 829
    .line 830
    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    if-eqz v3, :cond_26

    .line 839
    .line 840
    add-int/lit8 v0, v0, 0x1

    .line 841
    .line 842
    goto :goto_15

    .line 843
    :cond_26
    iget-object v3, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 844
    .line 845
    iput v0, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 846
    .line 847
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    invoke-static {v6, v1}, Lcom/mycompany/app/subtitle/FormatSCC;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 855
    .line 856
    .line 857
    :catch_8
    :cond_27
    :goto_16
    if-eqz p0, :cond_28

    .line 858
    .line 859
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 860
    .line 861
    .line 862
    :catch_9
    :cond_28
    move-object v4, v1

    .line 863
    :goto_17
    return-object v4

    .line 864
    :cond_29
    const/16 v21, 0x8

    .line 865
    .line 866
    const/4 v4, 0x3

    .line 867
    if-ne v0, v4, :cond_3f

    .line 868
    .line 869
    :try_start_c
    new-instance v0, Ljava/io/BufferedReader;

    .line 870
    .line 871
    new-instance v4, Ljava/io/InputStreamReader;

    .line 872
    .line 873
    invoke-direct {v4, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 877
    .line 878
    .line 879
    move/from16 v1, v18

    .line 880
    .line 881
    goto :goto_18

    .line 882
    :catch_a
    move/from16 v1, v16

    .line 883
    .line 884
    move-object/from16 v0, v17

    .line 885
    .line 886
    :goto_18
    if-eqz v1, :cond_2b

    .line 887
    .line 888
    if-eqz v0, :cond_2a

    .line 889
    .line 890
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 891
    .line 892
    .line 893
    :catch_b
    :cond_2a
    move-object/from16 v4, v17

    .line 894
    .line 895
    goto/16 :goto_21

    .line 896
    .line 897
    :cond_2b
    new-instance v4, Ljava/util/ArrayList;

    .line 898
    .line 899
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .line 901
    .line 902
    new-instance v1, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    new-instance v1, Ljava/util/ArrayList;

    .line 911
    .line 912
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .line 914
    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .line 919
    .line 920
    const-wide/16 v5, -0x1

    .line 921
    .line 922
    move-wide v9, v5

    .line 923
    move/from16 v8, v18

    .line 924
    .line 925
    :goto_19
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 929
    const-string v12, "&nbsp;"

    .line 930
    .line 931
    if-eqz v11, :cond_2c

    .line 932
    .line 933
    :try_start_f
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 934
    .line 935
    .line 936
    move-result v13

    .line 937
    if-eqz v13, :cond_2d

    .line 938
    .line 939
    :cond_2c
    move-wide/from16 p0, v5

    .line 940
    .line 941
    move-object/from16 v19, v7

    .line 942
    .line 943
    goto/16 :goto_1e

    .line 944
    .line 945
    :cond_2d
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 946
    .line 947
    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v13

    .line 951
    const-string v14, "<sync"

    .line 952
    .line 953
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 954
    .line 955
    .line 956
    move-result v14

    .line 957
    if-eqz v14, :cond_36

    .line 958
    .line 959
    cmp-long v14, v9, v5

    .line 960
    .line 961
    if-eqz v14, :cond_34

    .line 962
    .line 963
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v14

    .line 967
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 968
    .line 969
    .line 970
    move-result v12

    .line 971
    if-eqz v12, :cond_2e

    .line 972
    .line 973
    move-object v12, v7

    .line 974
    goto :goto_1a

    .line 975
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v12

    .line 979
    :goto_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 980
    .line 981
    .line 982
    move-result v14

    .line 983
    if-gt v14, v8, :cond_2f

    .line 984
    .line 985
    new-instance v14, Ljava/util/ArrayList;

    .line 986
    .line 987
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .line 989
    .line 990
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    goto :goto_1a

    .line 994
    :cond_2f
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v14

    .line 998
    check-cast v14, Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 999
    .line 1000
    if-nez v14, :cond_30

    .line 1001
    .line 1002
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_21

    .line 1006
    .line 1007
    :cond_30
    :try_start_11
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1008
    .line 1009
    .line 1010
    move-result v15

    .line 1011
    add-int/lit8 v15, v15, -0x1

    .line 1012
    .line 1013
    if-ltz v15, :cond_33

    .line 1014
    .line 1015
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v17

    .line 1019
    move-wide/from16 p0, v5

    .line 1020
    .line 1021
    move-object/from16 v5, v17

    .line 1022
    .line 1023
    check-cast v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1024
    .line 1025
    if-nez v5, :cond_31

    .line 1026
    .line 1027
    new-instance v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1028
    .line 1029
    invoke-static {v12}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v6

    .line 1033
    invoke-direct {v5, v9, v10, v6}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {v14, v15, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    goto :goto_1b

    .line 1040
    :cond_31
    move-object/from16 v19, v7

    .line 1041
    .line 1042
    iget-wide v6, v5, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 1043
    .line 1044
    cmp-long v6, v9, v6

    .line 1045
    .line 1046
    if-gez v6, :cond_32

    .line 1047
    .line 1048
    new-instance v6, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1049
    .line 1050
    invoke-static {v12}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v7

    .line 1054
    invoke-direct {v6, v9, v10, v7}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-interface {v14, v15, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    .line 1062
    .line 1063
    goto :goto_1c

    .line 1064
    :cond_32
    new-instance v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1065
    .line 1066
    invoke-static {v12}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v6

    .line 1070
    invoke-direct {v5, v9, v10, v6}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    goto :goto_1c

    .line 1077
    :cond_33
    move-wide/from16 p0, v5

    .line 1078
    .line 1079
    move-object/from16 v19, v7

    .line 1080
    .line 1081
    new-instance v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1082
    .line 1083
    invoke-static {v12}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v6

    .line 1087
    invoke-direct {v5, v9, v10, v6}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    goto :goto_1c

    .line 1094
    :cond_34
    move-wide/from16 p0, v5

    .line 1095
    .line 1096
    :goto_1b
    move-object/from16 v19, v7

    .line 1097
    .line 1098
    :goto_1c
    invoke-static {v11, v13}, Lcom/mycompany/app/subtitle/FormatSMI;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/subtitle/FormatSMI$TimeItem;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    if-eqz v5, :cond_35

    .line 1103
    .line 1104
    iget-wide v6, v5, Lcom/mycompany/app/subtitle/FormatSMI$TimeItem;->a:J

    .line 1105
    .line 1106
    iget-object v8, v5, Lcom/mycompany/app/subtitle/FormatSMI$TimeItem;->b:Ljava/lang/String;

    .line 1107
    .line 1108
    iget-object v5, v5, Lcom/mycompany/app/subtitle/FormatSMI$TimeItem;->c:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-static {v8, v5, v1}, Lcom/mycompany/app/subtitle/FormatSMI;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/mycompany/app/subtitle/FormatSMI$LangItem;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    iget v8, v5, Lcom/mycompany/app/subtitle/FormatSMI$LangItem;->a:I

    .line 1115
    .line 1116
    iget-object v5, v5, Lcom/mycompany/app/subtitle/FormatSMI$LangItem;->b:Ljava/lang/String;

    .line 1117
    .line 1118
    move/from16 v9, v18

    .line 1119
    .line 1120
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    move-wide v9, v6

    .line 1127
    :cond_35
    :goto_1d
    move-wide/from16 v5, p0

    .line 1128
    .line 1129
    move-object/from16 v7, v19

    .line 1130
    .line 1131
    const/16 v18, 0x0

    .line 1132
    .line 1133
    goto/16 :goto_19

    .line 1134
    .line 1135
    :cond_36
    move-wide/from16 p0, v5

    .line 1136
    .line 1137
    move-object/from16 v19, v7

    .line 1138
    .line 1139
    cmp-long v5, v9, p0

    .line 1140
    .line 1141
    if-eqz v5, :cond_35

    .line 1142
    .line 1143
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    goto :goto_1d

    .line 1147
    :goto_1e
    cmp-long v1, v9, p0

    .line 1148
    .line 1149
    if-eqz v1, :cond_3d

    .line 1150
    .line 1151
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v1

    .line 1155
    if-eqz v1, :cond_37

    .line 1156
    .line 1157
    move-object/from16 v7, v19

    .line 1158
    .line 1159
    goto :goto_1f

    .line 1160
    :cond_37
    move-object v7, v11

    .line 1161
    :goto_1f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1162
    .line 1163
    .line 1164
    move-result v1

    .line 1165
    if-gt v1, v8, :cond_38

    .line 1166
    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    .line 1168
    .line 1169
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    .line 1174
    .line 1175
    goto :goto_1f

    .line 1176
    :cond_38
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    check-cast v1, Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 1181
    .line 1182
    if-nez v1, :cond_39

    .line 1183
    .line 1184
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 1185
    .line 1186
    .line 1187
    goto :goto_21

    .line 1188
    :cond_39
    :try_start_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    add-int/lit8 v2, v2, -0x1

    .line 1193
    .line 1194
    if-ltz v2, :cond_3c

    .line 1195
    .line 1196
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v3

    .line 1200
    check-cast v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1201
    .line 1202
    if-nez v3, :cond_3a

    .line 1203
    .line 1204
    new-instance v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1205
    .line 1206
    invoke-static {v7}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v5

    .line 1210
    invoke-direct {v3, v9, v10, v5}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    goto :goto_20

    .line 1217
    :cond_3a
    iget-wide v5, v3, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 1218
    .line 1219
    cmp-long v5, v9, v5

    .line 1220
    .line 1221
    if-gez v5, :cond_3b

    .line 1222
    .line 1223
    new-instance v5, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1224
    .line 1225
    invoke-static {v7}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v6

    .line 1229
    invoke-direct {v5, v9, v10, v6}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-interface {v1, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    .line 1237
    .line 1238
    goto :goto_20

    .line 1239
    :cond_3b
    new-instance v2, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1240
    .line 1241
    invoke-static {v7}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v3

    .line 1245
    invoke-direct {v2, v9, v10, v3}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    .line 1250
    .line 1251
    goto :goto_20

    .line 1252
    :cond_3c
    new-instance v2, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 1253
    .line 1254
    invoke-static {v7}, Lcom/mycompany/app/subtitle/FormatSMI;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v3

    .line 1258
    invoke-direct {v2, v9, v10, v3}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 1262
    .line 1263
    .line 1264
    :catch_c
    :cond_3d
    :goto_20
    if-eqz v0, :cond_3e

    .line 1265
    .line 1266
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 1267
    .line 1268
    .line 1269
    :catch_d
    :cond_3e
    :goto_21
    return-object v4

    .line 1270
    :cond_3f
    move-object/from16 v19, v7

    .line 1271
    .line 1272
    const/4 v5, 0x4

    .line 1273
    if-ne v0, v5, :cond_4c

    .line 1274
    .line 1275
    :try_start_15
    new-instance v0, Ljava/io/BufferedReader;

    .line 1276
    .line 1277
    new-instance v5, Ljava/io/InputStreamReader;

    .line 1278
    .line 1279
    invoke-direct {v5, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 1283
    .line 1284
    .line 1285
    const/4 v1, 0x0

    .line 1286
    goto :goto_22

    .line 1287
    :catch_e
    move/from16 v1, v16

    .line 1288
    .line 1289
    move-object/from16 v0, v17

    .line 1290
    .line 1291
    :goto_22
    if-eqz v1, :cond_41

    .line 1292
    .line 1293
    if-eqz v0, :cond_40

    .line 1294
    .line 1295
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    .line 1296
    .line 1297
    .line 1298
    :catch_f
    :cond_40
    move-object/from16 v4, v17

    .line 1299
    .line 1300
    goto/16 :goto_2a

    .line 1301
    .line 1302
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    .line 1303
    .line 1304
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .line 1306
    .line 1307
    new-instance v2, Ljava/util/ArrayList;

    .line 1308
    .line 1309
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    .line 1314
    .line 1315
    new-instance v2, Ljava/util/ArrayList;

    .line 1316
    .line 1317
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .line 1319
    .line 1320
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v5

    .line 1324
    move-object/from16 v7, v19

    .line 1325
    .line 1326
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v5

    .line 1330
    move/from16 v6, v16

    .line 1331
    .line 1332
    :goto_23
    if-eqz v5, :cond_4a

    .line 1333
    .line 1334
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v8

    .line 1338
    if-eqz v8, :cond_42

    .line 1339
    .line 1340
    goto/16 :goto_29

    .line 1341
    .line 1342
    :cond_42
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v5

    .line 1346
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    .line 1350
    if-nez v8, :cond_49

    .line 1351
    .line 1352
    :try_start_18
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1353
    .line 1354
    .line 1355
    move-result v8

    .line 1356
    if-ne v8, v6, :cond_43

    .line 1357
    .line 1358
    add-int/lit8 v6, v6, 0x1

    .line 1359
    .line 1360
    move/from16 v8, v16

    .line 1361
    .line 1362
    goto :goto_24

    .line 1363
    :cond_43
    new-instance v8, Ljava/lang/Exception;

    .line 1364
    .line 1365
    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    .line 1366
    .line 1367
    .line 1368
    throw v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    .line 1369
    :catch_10
    const/4 v8, 0x0

    .line 1370
    :goto_24
    if-eqz v8, :cond_44

    .line 1371
    .line 1372
    :try_start_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v8

    .line 1376
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v5

    .line 1380
    const/16 v8, 0xc

    .line 1381
    .line 1382
    const/4 v9, 0x0

    .line 1383
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v10

    .line 1387
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1388
    .line 1389
    .line 1390
    move-result v9

    .line 1391
    sub-int/2addr v9, v8

    .line 1392
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 1393
    .line 1394
    .line 1395
    move-result v8

    .line 1396
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v8

    .line 1400
    new-instance v9, Lcom/mycompany/app/subtitle/Caption;

    .line 1401
    .line 1402
    invoke-direct {v9}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 1403
    .line 1404
    .line 1405
    new-instance v11, Lcom/mycompany/app/subtitle/Time;

    .line 1406
    .line 1407
    invoke-direct {v11, v4, v10}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    iput-object v11, v9, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 1411
    .line 1412
    new-instance v10, Lcom/mycompany/app/subtitle/Time;

    .line 1413
    .line 1414
    invoke-direct {v10, v4, v8}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    iput-object v10, v9, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11

    .line 1418
    .line 1419
    goto :goto_25

    .line 1420
    :catch_11
    :cond_44
    move-object/from16 v9, v17

    .line 1421
    .line 1422
    :goto_25
    if-eqz v9, :cond_48

    .line 1423
    .line 1424
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v5

    .line 1428
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v5

    .line 1432
    move-object v8, v7

    .line 1433
    :goto_26
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1434
    .line 1435
    .line 1436
    move-result v10

    .line 1437
    if-nez v10, :cond_46

    .line 1438
    .line 1439
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1440
    .line 1441
    .line 1442
    move-result v10

    .line 1443
    if-nez v10, :cond_45

    .line 1444
    .line 1445
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1446
    .line 1447
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v8

    .line 1460
    :cond_45
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v8

    .line 1475
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v5

    .line 1479
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v5

    .line 1483
    goto :goto_26

    .line 1484
    :cond_46
    iput-object v8, v9, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 1485
    .line 1486
    iget-object v8, v9, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 1487
    .line 1488
    iget v8, v8, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 1489
    .line 1490
    :goto_27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v10

    .line 1494
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v10

    .line 1498
    if-eqz v10, :cond_47

    .line 1499
    .line 1500
    add-int/lit8 v8, v8, 0x1

    .line 1501
    .line 1502
    goto :goto_27

    .line 1503
    :cond_47
    iget-object v10, v9, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 1504
    .line 1505
    iput v8, v10, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 1506
    .line 1507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v8

    .line 1511
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    .line 1513
    .line 1514
    invoke-static {v9, v1}, Lcom/mycompany/app/subtitle/FormatSRT;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V

    .line 1515
    .line 1516
    .line 1517
    :cond_48
    :goto_28
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1518
    .line 1519
    .line 1520
    move-result v5

    .line 1521
    if-nez v5, :cond_49

    .line 1522
    .line 1523
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v5

    .line 1527
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v5

    .line 1531
    goto :goto_28

    .line 1532
    :cond_49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    .line 1536
    goto/16 :goto_23

    .line 1537
    .line 1538
    :catch_12
    :cond_4a
    :goto_29
    if-eqz v0, :cond_4b

    .line 1539
    .line 1540
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13

    .line 1541
    .line 1542
    .line 1543
    :catch_13
    :cond_4b
    move-object v4, v1

    .line 1544
    :goto_2a
    return-object v4

    .line 1545
    :cond_4c
    move-object/from16 v7, v19

    .line 1546
    .line 1547
    const/4 v8, 0x6

    .line 1548
    if-ne v0, v8, :cond_55

    .line 1549
    .line 1550
    const-string v0, "/"

    .line 1551
    .line 1552
    const-string v2, ":"

    .line 1553
    .line 1554
    new-instance v6, Ljava/util/ArrayList;

    .line 1555
    .line 1556
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    .line 1558
    .line 1559
    new-instance v8, Ljava/util/ArrayList;

    .line 1560
    .line 1561
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    .line 1566
    .line 1567
    new-instance v8, Ljava/util/ArrayList;

    .line 1568
    .line 1569
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1570
    .line 1571
    .line 1572
    const/16 v9, 0x400

    .line 1573
    .line 1574
    new-array v11, v9, [B

    .line 1575
    .line 1576
    const/16 v12, 0x80

    .line 1577
    .line 1578
    new-array v13, v12, [B

    .line 1579
    .line 1580
    :try_start_1c
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    .line 1581
    .line 1582
    .line 1583
    move-result v14

    .line 1584
    if-ge v14, v9, :cond_4d

    .line 1585
    .line 1586
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1587
    .line 1588
    .line 1589
    return-object v17

    .line 1590
    :cond_4d
    const/16 v24, 0x6

    .line 1591
    .line 1592
    aget-byte v9, v11, v24

    .line 1593
    .line 1594
    const/16 v23, 0x7

    .line 1595
    .line 1596
    aget-byte v14, v11, v23

    .line 1597
    .line 1598
    new-array v15, v10, [B

    .line 1599
    .line 1600
    const/16 v18, 0x0

    .line 1601
    .line 1602
    aput-byte v9, v15, v18

    .line 1603
    .line 1604
    aput-byte v14, v15, v16

    .line 1605
    .line 1606
    new-instance v9, Ljava/lang/String;

    .line 1607
    .line 1608
    invoke-direct {v9, v15}, Ljava/lang/String;-><init>([B)V

    .line 1609
    .line 1610
    .line 1611
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1612
    .line 1613
    .line 1614
    move-result v14

    .line 1615
    const/16 v9, 0xee

    .line 1616
    .line 1617
    aget-byte v9, v11, v9

    .line 1618
    .line 1619
    const/16 v15, 0xef

    .line 1620
    .line 1621
    aget-byte v15, v11, v15

    .line 1622
    .line 1623
    const/16 v19, 0xf0

    .line 1624
    .line 1625
    aget-byte v19, v11, v19

    .line 1626
    .line 1627
    const/16 v20, 0xf1

    .line 1628
    .line 1629
    aget-byte v20, v11, v20

    .line 1630
    .line 1631
    const/16 v28, 0xf2

    .line 1632
    .line 1633
    aget-byte v11, v11, v28

    .line 1634
    .line 1635
    move/from16 v28, v4

    .line 1636
    .line 1637
    move/from16 v29, v5

    .line 1638
    .line 1639
    const/4 v4, 0x5

    .line 1640
    new-array v5, v4, [B

    .line 1641
    .line 1642
    const/16 v18, 0x0

    .line 1643
    .line 1644
    aput-byte v9, v5, v18

    .line 1645
    .line 1646
    aput-byte v15, v5, v16

    .line 1647
    .line 1648
    aput-byte v19, v5, v10

    .line 1649
    .line 1650
    aput-byte v20, v5, v28

    .line 1651
    .line 1652
    aput-byte v11, v5, v29

    .line 1653
    .line 1654
    new-instance v4, Ljava/lang/String;

    .line 1655
    .line 1656
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 1657
    .line 1658
    .line 1659
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1660
    .line 1661
    .line 1662
    move-result v4

    .line 1663
    const/4 v5, 0x0

    .line 1664
    const/4 v9, 0x0

    .line 1665
    :goto_2b
    if-ge v5, v4, :cond_54

    .line 1666
    .line 1667
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 1668
    .line 1669
    .line 1670
    move-result v10

    .line 1671
    if-eqz v10, :cond_4e

    .line 1672
    .line 1673
    goto/16 :goto_30

    .line 1674
    .line 1675
    :cond_4e
    invoke-virtual {v1, v13}, Ljava/io/InputStream;->read([B)I

    .line 1676
    .line 1677
    .line 1678
    move-result v10

    .line 1679
    if-ge v10, v12, :cond_4f

    .line 1680
    .line 1681
    goto/16 :goto_30

    .line 1682
    .line 1683
    :cond_4f
    if-nez v9, :cond_50

    .line 1684
    .line 1685
    new-instance v9, Lcom/mycompany/app/subtitle/Caption;

    .line 1686
    .line 1687
    invoke-direct {v9}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 1688
    .line 1689
    .line 1690
    move-object v10, v9

    .line 1691
    goto :goto_2c

    .line 1692
    :cond_50
    move-object/from16 v10, v17

    .line 1693
    .line 1694
    :goto_2c
    aget-byte v9, v13, v28

    .line 1695
    .line 1696
    const/4 v11, -0x1

    .line 1697
    if-eq v9, v11, :cond_51

    .line 1698
    .line 1699
    move/from16 v11, v16

    .line 1700
    .line 1701
    goto :goto_2d

    .line 1702
    :cond_51
    const/4 v11, 0x0

    .line 1703
    :goto_2d
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1704
    .line 1705
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1706
    .line 1707
    .line 1708
    const/16 v25, 0x5

    .line 1709
    .line 1710
    aget-byte v15, v13, v25

    .line 1711
    .line 1712
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    .line 1718
    const/16 v24, 0x6

    .line 1719
    .line 1720
    aget-byte v15, v13, v24

    .line 1721
    .line 1722
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    .line 1727
    .line 1728
    const/16 v23, 0x7

    .line 1729
    .line 1730
    aget-byte v15, v13, v23

    .line 1731
    .line 1732
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    .line 1738
    aget-byte v15, v13, v21

    .line 1739
    .line 1740
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v15

    .line 1747
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1748
    .line 1749
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    .line 1755
    const/16 v27, 0x9

    .line 1756
    .line 1757
    aget-byte v12, v13, v27

    .line 1758
    .line 1759
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    .line 1764
    .line 1765
    const/16 v12, 0xa

    .line 1766
    .line 1767
    aget-byte v12, v13, v12

    .line 1768
    .line 1769
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    .line 1774
    .line 1775
    const/16 v12, 0xb

    .line 1776
    .line 1777
    aget-byte v12, v13, v12

    .line 1778
    .line 1779
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    .line 1784
    .line 1785
    const/16 v26, 0xc

    .line 1786
    .line 1787
    aget-byte v12, v13, v26

    .line 1788
    .line 1789
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v9

    .line 1796
    const/16 v22, 0xf

    .line 1797
    .line 1798
    aget-byte v12, v13, v22

    .line 1799
    .line 1800
    if-nez v12, :cond_53

    .line 1801
    .line 1802
    const/16 v12, 0x70

    .line 1803
    .line 1804
    move-object/from16 p2, v2

    .line 1805
    .line 1806
    new-array v2, v12, [B

    .line 1807
    .line 1808
    move/from16 v20, v4

    .line 1809
    .line 1810
    move/from16 v17, v5

    .line 1811
    .line 1812
    const/16 v4, 0x10

    .line 1813
    .line 1814
    const/4 v5, 0x0

    .line 1815
    invoke-static {v13, v4, v2, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    .line 1817
    .line 1818
    if-eqz v11, :cond_52

    .line 1819
    .line 1820
    invoke-static {v10, v2, v8, v6, v3}, Lcom/mycompany/app/subtitle/FormatSTL;->a(Lcom/mycompany/app/subtitle/Caption;[BLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)V

    .line 1821
    .line 1822
    .line 1823
    :goto_2e
    const/4 v15, 0x5

    .line 1824
    goto :goto_2f

    .line 1825
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1826
    .line 1827
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    .line 1832
    .line 1833
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1837
    .line 1838
    .line 1839
    new-instance v12, Lcom/mycompany/app/subtitle/Time;

    .line 1840
    .line 1841
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v5

    .line 1845
    const/4 v15, 0x5

    .line 1846
    invoke-direct {v12, v15, v5}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 1847
    .line 1848
    .line 1849
    iput-object v12, v10, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 1850
    .line 1851
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1863
    .line 1864
    .line 1865
    new-instance v9, Lcom/mycompany/app/subtitle/Time;

    .line 1866
    .line 1867
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v5

    .line 1871
    const/4 v15, 0x5

    .line 1872
    invoke-direct {v9, v15, v5}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 1873
    .line 1874
    .line 1875
    iput-object v9, v10, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 1876
    .line 1877
    invoke-static {v10, v2, v8, v6, v3}, Lcom/mycompany/app/subtitle/FormatSTL;->a(Lcom/mycompany/app/subtitle/Caption;[BLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_14

    .line 1878
    .line 1879
    .line 1880
    goto :goto_2f

    .line 1881
    :cond_53
    move-object/from16 p2, v2

    .line 1882
    .line 1883
    move/from16 v20, v4

    .line 1884
    .line 1885
    move/from16 v17, v5

    .line 1886
    .line 1887
    const/16 v4, 0x10

    .line 1888
    .line 1889
    goto :goto_2e

    .line 1890
    :goto_2f
    add-int/lit8 v5, v17, 0x1

    .line 1891
    .line 1892
    move-object/from16 v2, p2

    .line 1893
    .line 1894
    move-object/from16 v17, v10

    .line 1895
    .line 1896
    move v9, v11

    .line 1897
    move/from16 v4, v20

    .line 1898
    .line 1899
    const/16 v12, 0x80

    .line 1900
    .line 1901
    goto/16 :goto_2b

    .line 1902
    .line 1903
    :catch_14
    :cond_54
    :goto_30
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_15

    .line 1904
    .line 1905
    .line 1906
    :catch_15
    return-object v6

    .line 1907
    :cond_55
    const/4 v5, 0x7

    .line 1908
    if-ne v0, v5, :cond_5d

    .line 1909
    .line 1910
    :try_start_1e
    new-instance v0, Ljava/io/BufferedReader;

    .line 1911
    .line 1912
    new-instance v4, Ljava/io/InputStreamReader;

    .line 1913
    .line 1914
    invoke-direct {v4, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1915
    .line 1916
    .line 1917
    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1918
    .line 1919
    .line 1920
    const/4 v8, 0x0

    .line 1921
    goto :goto_31

    .line 1922
    :catch_16
    move/from16 v8, v16

    .line 1923
    .line 1924
    move-object/from16 v0, v17

    .line 1925
    .line 1926
    :goto_31
    if-eqz v8, :cond_57

    .line 1927
    .line 1928
    if-eqz v0, :cond_56

    .line 1929
    .line 1930
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    .line 1931
    .line 1932
    .line 1933
    :catch_17
    :cond_56
    move-object/from16 v4, v17

    .line 1934
    .line 1935
    goto :goto_35

    .line 1936
    :cond_57
    new-instance v4, Ljava/util/ArrayList;

    .line 1937
    .line 1938
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .line 1940
    .line 1941
    new-instance v1, Ljava/util/ArrayList;

    .line 1942
    .line 1943
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1947
    .line 1948
    .line 1949
    new-instance v1, Ljava/util/ArrayList;

    .line 1950
    .line 1951
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1952
    .line 1953
    .line 1954
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v2

    .line 1958
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v2

    .line 1962
    :goto_32
    if-eqz v2, :cond_5b

    .line 1963
    .line 1964
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 1965
    .line 1966
    .line 1967
    move-result v5

    .line 1968
    if-eqz v5, :cond_58

    .line 1969
    .line 1970
    goto :goto_34

    .line 1971
    :cond_58
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1972
    .line 1973
    .line 1974
    move-result-object v2

    .line 1975
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1976
    .line 1977
    .line 1978
    move-result v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_19

    .line 1979
    if-nez v5, :cond_5a

    .line 1980
    .line 1981
    :try_start_21
    invoke-static {v2}, Lcom/mycompany/app/subtitle/FormatSUB;->b(Ljava/lang/String;)Lcom/mycompany/app/subtitle/Caption;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v2

    .line 1985
    if-eqz v2, :cond_5a

    .line 1986
    .line 1987
    iget-object v5, v2, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 1988
    .line 1989
    iget v5, v5, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 1990
    .line 1991
    :goto_33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v6

    .line 1995
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1996
    .line 1997
    .line 1998
    move-result v6

    .line 1999
    if-eqz v6, :cond_59

    .line 2000
    .line 2001
    add-int/lit8 v5, v5, 0x1

    .line 2002
    .line 2003
    goto :goto_33

    .line 2004
    :cond_59
    iget-object v6, v2, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2005
    .line 2006
    iput v5, v6, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2007
    .line 2008
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v5

    .line 2012
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2013
    .line 2014
    .line 2015
    invoke-static {v2, v4}, Lcom/mycompany/app/subtitle/FormatSUB;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_18

    .line 2016
    .line 2017
    .line 2018
    :catch_18
    :cond_5a
    :try_start_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19

    .line 2022
    goto :goto_32

    .line 2023
    :catch_19
    :cond_5b
    :goto_34
    if-eqz v0, :cond_5c

    .line 2024
    .line 2025
    :try_start_23
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    .line 2026
    .line 2027
    .line 2028
    :catch_1a
    :cond_5c
    :goto_35
    return-object v4

    .line 2029
    :cond_5d
    move/from16 v4, v21

    .line 2030
    .line 2031
    if-ne v0, v4, :cond_6a

    .line 2032
    .line 2033
    if-nez v1, :cond_5e

    .line 2034
    .line 2035
    move-object/from16 v4, v17

    .line 2036
    .line 2037
    goto/16 :goto_3d

    .line 2038
    .line 2039
    :cond_5e
    new-instance v0, Ljava/util/ArrayList;

    .line 2040
    .line 2041
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .line 2043
    .line 2044
    new-instance v2, Ljava/util/ArrayList;

    .line 2045
    .line 2046
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    .line 2048
    .line 2049
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    .line 2051
    .line 2052
    new-instance v2, Ljava/util/ArrayList;

    .line 2053
    .line 2054
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .line 2056
    .line 2057
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v4

    .line 2061
    :try_start_24
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v4

    .line 2065
    invoke-virtual {v4, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v4

    .line 2069
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v5

    .line 2073
    invoke-interface {v5}, Lorg/w3c/dom/Node;->normalize()V

    .line 2074
    .line 2075
    .line 2076
    const-string v5, "p"

    .line 2077
    .line 2078
    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v5

    .line 2082
    const/4 v9, 0x0

    .line 2083
    :goto_36
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 2084
    .line 2085
    .line 2086
    move-result v6

    .line 2087
    if-ge v9, v6, :cond_69

    .line 2088
    .line 2089
    invoke-interface {v3}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 2090
    .line 2091
    .line 2092
    move-result v6

    .line 2093
    if-eqz v6, :cond_5f

    .line 2094
    .line 2095
    goto/16 :goto_3c

    .line 2096
    .line 2097
    :cond_5f
    new-instance v6, Lcom/mycompany/app/subtitle/Caption;

    .line 2098
    .line 2099
    invoke-direct {v6}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 2100
    .line 2101
    .line 2102
    iput-object v7, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2103
    .line 2104
    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v8

    .line 2108
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v10

    .line 2112
    const-string v11, "begin"

    .line 2113
    .line 2114
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 2115
    .line 2116
    .line 2117
    move-result-object v11

    .line 2118
    new-instance v12, Lcom/mycompany/app/subtitle/Time;

    .line 2119
    .line 2120
    move-object/from16 v15, v17

    .line 2121
    .line 2122
    const/4 v14, 0x0

    .line 2123
    invoke-direct {v12, v14, v15}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 2124
    .line 2125
    .line 2126
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2127
    .line 2128
    new-instance v12, Lcom/mycompany/app/subtitle/Time;

    .line 2129
    .line 2130
    invoke-direct {v12, v14, v15}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 2131
    .line 2132
    .line 2133
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 2134
    .line 2135
    if-eqz v11, :cond_60

    .line 2136
    .line 2137
    iget-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2138
    .line 2139
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v11

    .line 2143
    invoke-static {v11, v4}, Lcom/mycompany/app/subtitle/FormatTTML;->b(Ljava/lang/String;Lorg/w3c/dom/Document;)I

    .line 2144
    .line 2145
    .line 2146
    move-result v11

    .line 2147
    iput v11, v12, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2148
    .line 2149
    :cond_60
    const-string v11, "end"

    .line 2150
    .line 2151
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v11

    .line 2155
    if-eqz v11, :cond_61

    .line 2156
    .line 2157
    iget-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 2158
    .line 2159
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 2160
    .line 2161
    .line 2162
    move-result-object v11

    .line 2163
    invoke-static {v11, v4}, Lcom/mycompany/app/subtitle/FormatTTML;->b(Ljava/lang/String;Lorg/w3c/dom/Document;)I

    .line 2164
    .line 2165
    .line 2166
    move-result v11

    .line 2167
    iput v11, v12, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2168
    .line 2169
    goto :goto_37

    .line 2170
    :cond_61
    const-string v11, "dur"

    .line 2171
    .line 2172
    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v11

    .line 2176
    if-eqz v11, :cond_62

    .line 2177
    .line 2178
    iget-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 2179
    .line 2180
    iget-object v15, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2181
    .line 2182
    iget v15, v15, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2183
    .line 2184
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v11

    .line 2188
    invoke-static {v11, v4}, Lcom/mycompany/app/subtitle/FormatTTML;->b(Ljava/lang/String;Lorg/w3c/dom/Document;)I

    .line 2189
    .line 2190
    .line 2191
    move-result v11

    .line 2192
    add-int/2addr v15, v11

    .line 2193
    iput v15, v12, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2194
    .line 2195
    :goto_37
    move/from16 v11, v16

    .line 2196
    .line 2197
    goto :goto_38

    .line 2198
    :cond_62
    move v11, v14

    .line 2199
    :goto_38
    const-string v12, "style"

    .line 2200
    .line 2201
    invoke-interface {v10, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 2202
    .line 2203
    .line 2204
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2205
    .line 2206
    .line 2207
    move-result-object v8

    .line 2208
    move v10, v14

    .line 2209
    :goto_39
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 2210
    .line 2211
    .line 2212
    move-result v12

    .line 2213
    if-ge v10, v12, :cond_65

    .line 2214
    .line 2215
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v12

    .line 2219
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v12

    .line 2223
    const-string v15, "#text"

    .line 2224
    .line 2225
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2226
    .line 2227
    .line 2228
    move-result v12

    .line 2229
    if-eqz v12, :cond_63

    .line 2230
    .line 2231
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2232
    .line 2233
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2234
    .line 2235
    .line 2236
    iget-object v15, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2237
    .line 2238
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    .line 2240
    .line 2241
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v15

    .line 2245
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v15

    .line 2249
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v15

    .line 2253
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    .line 2255
    .line 2256
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2257
    .line 2258
    .line 2259
    move-result-object v12

    .line 2260
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2261
    .line 2262
    goto :goto_3a

    .line 2263
    :cond_63
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v12

    .line 2267
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v12

    .line 2271
    const-string v15, "br"

    .line 2272
    .line 2273
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v12

    .line 2277
    if-eqz v12, :cond_64

    .line 2278
    .line 2279
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2280
    .line 2281
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2282
    .line 2283
    .line 2284
    iget-object v15, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2285
    .line 2286
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    .line 2288
    .line 2289
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    .line 2291
    .line 2292
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2293
    .line 2294
    .line 2295
    move-result-object v12

    .line 2296
    iput-object v12, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2297
    .line 2298
    :cond_64
    :goto_3a
    add-int/lit8 v10, v10, 0x1

    .line 2299
    .line 2300
    goto :goto_39

    .line 2301
    :cond_65
    iget-object v8, v6, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 2302
    .line 2303
    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v8

    .line 2307
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v8

    .line 2311
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 2312
    .line 2313
    .line 2314
    move-result v8

    .line 2315
    if-eqz v8, :cond_66

    .line 2316
    .line 2317
    move v11, v14

    .line 2318
    :cond_66
    if-eqz v11, :cond_68

    .line 2319
    .line 2320
    iget-object v8, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2321
    .line 2322
    iget v8, v8, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2323
    .line 2324
    :goto_3b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v10

    .line 2328
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v10

    .line 2332
    if-eqz v10, :cond_67

    .line 2333
    .line 2334
    add-int/lit8 v8, v8, 0x1

    .line 2335
    .line 2336
    goto :goto_3b

    .line 2337
    :cond_67
    iget-object v10, v6, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 2338
    .line 2339
    iput v8, v10, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 2340
    .line 2341
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v8

    .line 2345
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2346
    .line 2347
    .line 2348
    invoke-static {v6, v0}, Lcom/mycompany/app/subtitle/FormatTTML;->a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1b

    .line 2349
    .line 2350
    .line 2351
    :cond_68
    add-int/lit8 v9, v9, 0x1

    .line 2352
    .line 2353
    const/16 v17, 0x0

    .line 2354
    .line 2355
    goto/16 :goto_36

    .line 2356
    .line 2357
    :catch_1b
    :cond_69
    :goto_3c
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1c

    .line 2358
    .line 2359
    .line 2360
    :catch_1c
    move-object v4, v0

    .line 2361
    :goto_3d
    return-object v4

    .line 2362
    :cond_6a
    const/16 v9, 0x9

    .line 2363
    .line 2364
    if-ne v0, v9, :cond_0

    .line 2365
    .line 2366
    invoke-static/range {p1 .. p3}, Lcom/mycompany/app/subtitle/FormatVTT;->b(Ljava/io/InputStream;Ljava/lang/String;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)Ljava/util/ArrayList;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v0

    .line 2370
    return-object v0

    .line 2371
    :goto_3e
    return-object v17

    .line 2372
    :cond_6b
    :goto_3f
    invoke-static/range {p1 .. p3}, Lcom/mycompany/app/subtitle/FormatASS;->c(Ljava/io/InputStream;Ljava/lang/String;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)Ljava/util/ArrayList;

    .line 2373
    .line 2374
    .line 2375
    move-result-object v0

    .line 2376
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
