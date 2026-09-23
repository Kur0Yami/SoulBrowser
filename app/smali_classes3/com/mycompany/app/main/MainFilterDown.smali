.class public Lcom/mycompany/app/main/MainFilterDown;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Lcom/mycompany/app/main/MainUtil$LoopCancelListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterDown;->b:Lcom/mycompany/app/main/MainUtil$LoopCancelListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterDown;->b:Lcom/mycompany/app/main/MainUtil$LoopCancelListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/main/MainUtil$LoopCancelListener;->isCancelled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_3

    .line 34
    .line 35
    :goto_0
    return v4

    .line 36
    :cond_3
    const/4 v6, -0x1

    .line 37
    const/16 v7, 0x400

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    :try_start_0
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    invoke-static {v5, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 54
    .line 55
    .line 56
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :try_start_2
    new-array v12, v7, [B

    .line 58
    .line 59
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    if-nez v13, :cond_5

    .line 64
    .line 65
    invoke-virtual {v10, v12, v4, v7}, Ljava/io/InputStream;->read([BII)I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    if-eq v13, v6, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-eqz v14, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {v11, v12, v4, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    :goto_2
    move v12, v8

    .line 83
    goto :goto_5

    .line 84
    :catch_0
    :goto_3
    const/4 v11, 0x0

    .line 85
    goto :goto_4

    .line 86
    :catch_1
    const/4 v10, 0x0

    .line 87
    goto :goto_3

    .line 88
    :catch_2
    :goto_4
    move v12, v4

    .line 89
    :goto_5
    if-eqz v11, :cond_6

    .line 90
    .line 91
    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    .line 93
    .line 94
    :catch_3
    :cond_6
    if-eqz v10, :cond_7

    .line 95
    .line 96
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 97
    .line 98
    .line 99
    :catch_4
    :cond_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 100
    .line 101
    .line 102
    if-eqz v12, :cond_34

    .line 103
    .line 104
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogSetFilter;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    if-nez v11, :cond_33

    .line 117
    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_8

    .line 123
    .line 124
    move v2, v4

    .line 125
    goto :goto_6

    .line 126
    :cond_8
    const-string v11, "https://cdn.jsdelivr.net/gh/"

    .line 127
    .line 128
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    :goto_6
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-eqz v11, :cond_9

    .line 137
    .line 138
    goto/16 :goto_24

    .line 139
    .line 140
    :cond_9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    const-string v12, "!#include "

    .line 145
    .line 146
    if-eqz v11, :cond_a

    .line 147
    .line 148
    :goto_7
    const/4 v14, 0x0

    .line 149
    goto/16 :goto_d

    .line 150
    .line 151
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_b

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_b
    :try_start_5
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 159
    .line 160
    .line 161
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 162
    :try_start_6
    new-instance v13, Ljava/io/BufferedReader;

    .line 163
    .line 164
    new-instance v14, Ljava/io/InputStreamReader;

    .line 165
    .line 166
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 167
    .line 168
    invoke-direct {v14, v11, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 172
    .line 173
    .line 174
    move v15, v4

    .line 175
    move/from16 v16, v15

    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    :goto_8
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v17

    .line 182
    if-eqz v17, :cond_13

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 185
    .line 186
    .line 187
    move-result v18

    .line 188
    if-eqz v18, :cond_c

    .line 189
    .line 190
    goto :goto_c

    .line 191
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v17

    .line 199
    if-eqz v17, :cond_d

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_d
    const-string v6, "!#if"

    .line 203
    .line 204
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_e

    .line 209
    .line 210
    const-string v6, "android"

    .line 211
    .line 212
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    xor-int/lit8 v16, v6, 0x1

    .line 217
    .line 218
    :goto_9
    const/4 v6, -0x1

    .line 219
    goto :goto_8

    .line 220
    :cond_e
    const-string v6, "!#endif"

    .line 221
    .line 222
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_f

    .line 227
    .line 228
    move/from16 v16, v4

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_f
    if-eqz v16, :cond_10

    .line 232
    .line 233
    :goto_a
    goto :goto_9

    .line 234
    :cond_10
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_11

    .line 239
    .line 240
    move v15, v8

    .line 241
    :cond_11
    if-nez v14, :cond_12

    .line 242
    .line 243
    new-instance v6, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    move-object v14, v6

    .line 249
    :cond_12
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 250
    .line 251
    .line 252
    goto :goto_9

    .line 253
    :catch_5
    move v15, v4

    .line 254
    :goto_b
    const/4 v13, 0x0

    .line 255
    const/4 v14, 0x0

    .line 256
    goto :goto_c

    .line 257
    :catch_6
    move v15, v4

    .line 258
    const/4 v11, 0x0

    .line 259
    goto :goto_b

    .line 260
    :catch_7
    :cond_13
    :goto_c
    if-eqz v13, :cond_14

    .line 261
    .line 262
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 263
    .line 264
    .line 265
    :catch_8
    :cond_14
    if-eqz v11, :cond_15

    .line 266
    .line 267
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 268
    .line 269
    .line 270
    :catch_9
    :cond_15
    if-nez v15, :cond_16

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_16
    :goto_d
    if-eqz v14, :cond_32

    .line 274
    .line 275
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_17

    .line 280
    .line 281
    goto/16 :goto_23

    .line 282
    .line 283
    :cond_17
    const-string v6, "kr1"

    .line 284
    .line 285
    invoke-static {v5, v6}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v11, "kr2"

    .line 298
    .line 299
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-eqz v11, :cond_18

    .line 317
    .line 318
    :goto_e
    move v15, v4

    .line 319
    goto :goto_14

    .line 320
    :cond_18
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v11

    .line 324
    if-eqz v11, :cond_19

    .line 325
    .line 326
    goto :goto_e

    .line 327
    :cond_19
    :try_start_a
    invoke-static {v6, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 328
    .line 329
    .line 330
    move-result-object v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 331
    :try_start_b
    new-instance v13, Ljava/io/BufferedWriter;

    .line 332
    .line 333
    new-instance v15, Ljava/io/OutputStreamWriter;

    .line 334
    .line 335
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 336
    .line 337
    invoke-direct {v15, v11, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 338
    .line 339
    .line 340
    invoke-direct {v13, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 341
    .line 342
    .line 343
    :try_start_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 347
    move v15, v4

    .line 348
    :goto_f
    if-ge v4, v7, :cond_1d

    .line 349
    .line 350
    :try_start_d
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v19

    .line 354
    add-int/lit8 v4, v4, 0x1

    .line 355
    .line 356
    move-object/from16 v8, v19

    .line 357
    .line 358
    check-cast v8, Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 361
    .line 362
    .line 363
    move-result v19

    .line 364
    if-eqz v19, :cond_1a

    .line 365
    .line 366
    goto :goto_13

    .line 367
    :cond_1a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v19

    .line 371
    if-eqz v19, :cond_1b

    .line 372
    .line 373
    goto :goto_10

    .line 374
    :cond_1b
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v19

    .line 378
    if-eqz v19, :cond_1c

    .line 379
    .line 380
    :goto_10
    const/4 v8, 0x1

    .line 381
    goto :goto_f

    .line 382
    :cond_1c
    invoke-virtual {v13, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    const-string v8, "\n"

    .line 386
    .line 387
    invoke-virtual {v13, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 388
    .line 389
    .line 390
    const/4 v8, 0x1

    .line 391
    const/4 v15, 0x1

    .line 392
    goto :goto_f

    .line 393
    :catch_a
    :goto_11
    const/4 v15, 0x0

    .line 394
    goto :goto_13

    .line 395
    :catch_b
    :goto_12
    const/4 v13, 0x0

    .line 396
    goto :goto_11

    .line 397
    :catch_c
    const/4 v11, 0x0

    .line 398
    goto :goto_12

    .line 399
    :catch_d
    :cond_1d
    :goto_13
    if-eqz v13, :cond_1e

    .line 400
    .line 401
    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 402
    .line 403
    .line 404
    :catch_e
    :cond_1e
    if-eqz v11, :cond_1f

    .line 405
    .line 406
    :try_start_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 407
    .line 408
    .line 409
    :catch_f
    :cond_1f
    :goto_14
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    const/4 v7, 0x0

    .line 414
    const/4 v8, 0x0

    .line 415
    :goto_15
    if-ge v7, v4, :cond_2d

    .line 416
    .line 417
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    add-int/lit8 v7, v7, 0x1

    .line 422
    .line 423
    check-cast v11, Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 426
    .line 427
    .line 428
    move-result v13

    .line 429
    if-eqz v13, :cond_20

    .line 430
    .line 431
    :goto_16
    move/from16 p3, v2

    .line 432
    .line 433
    :goto_17
    move/from16 v16, v4

    .line 434
    .line 435
    move/from16 v18, v7

    .line 436
    .line 437
    const/4 v4, 0x0

    .line 438
    const/4 v11, 0x0

    .line 439
    goto/16 :goto_20

    .line 440
    .line 441
    :cond_20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    if-eqz v13, :cond_21

    .line 446
    .line 447
    goto :goto_16

    .line 448
    :cond_21
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 449
    .line 450
    .line 451
    move-result v13

    .line 452
    if-nez v13, :cond_22

    .line 453
    .line 454
    goto :goto_16

    .line 455
    :cond_22
    const/16 v13, 0xa

    .line 456
    .line 457
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    if-eqz v13, :cond_23

    .line 466
    .line 467
    goto :goto_16

    .line 468
    :cond_23
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v13

    .line 476
    if-eqz v13, :cond_24

    .line 477
    .line 478
    goto :goto_16

    .line 479
    :cond_24
    new-instance v13, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    if-eqz v2, :cond_25

    .line 485
    .line 486
    move/from16 p3, v2

    .line 487
    .line 488
    const-string v2, "https://cdn.jsdelivr.net/gh/List-KR/List-KR@"

    .line 489
    .line 490
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    goto :goto_18

    .line 494
    :cond_25
    move/from16 p3, v2

    .line 495
    .line 496
    const-string v2, "https://raw.githubusercontent.com/List-KR/List-KR/"

    .line 497
    .line 498
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    :goto_18
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->m1(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    if-nez v2, :cond_26

    .line 516
    .line 517
    goto :goto_17

    .line 518
    :cond_26
    const/4 v11, 0x1

    .line 519
    :try_start_10
    invoke-virtual {v2, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 526
    .line 527
    .line 528
    move-result-object v13
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    .line 529
    :try_start_11
    iget-object v11, v0, Lcom/mycompany/app/main/MainFilterDown;->a:Ljava/io/OutputStream;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    .line 530
    .line 531
    if-nez v11, :cond_27

    .line 532
    .line 533
    move-object/from16 v19, v2

    .line 534
    .line 535
    const/4 v11, 0x0

    .line 536
    :try_start_12
    invoke-static {v9, v11}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 537
    .line 538
    .line 539
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    .line 540
    :try_start_13
    iput-object v2, v0, Lcom/mycompany/app/main/MainFilterDown;->a:Ljava/io/OutputStream;

    .line 541
    .line 542
    :goto_19
    const/16 v2, 0x400

    .line 543
    .line 544
    goto :goto_1b

    .line 545
    :catch_10
    :goto_1a
    move/from16 v16, v4

    .line 546
    .line 547
    move/from16 v18, v7

    .line 548
    .line 549
    const/4 v4, 0x0

    .line 550
    goto :goto_1e

    .line 551
    :catch_11
    move/from16 v16, v4

    .line 552
    .line 553
    move/from16 v18, v7

    .line 554
    .line 555
    move v4, v11

    .line 556
    goto :goto_1e

    .line 557
    :cond_27
    move-object/from16 v19, v2

    .line 558
    .line 559
    goto :goto_19

    .line 560
    :goto_1b
    new-array v11, v2, [B

    .line 561
    .line 562
    :goto_1c
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 563
    .line 564
    .line 565
    move-result v16
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 566
    if-nez v16, :cond_29

    .line 567
    .line 568
    move/from16 v16, v4

    .line 569
    .line 570
    move/from16 v18, v7

    .line 571
    .line 572
    const/4 v4, 0x0

    .line 573
    :try_start_14
    invoke-virtual {v13, v11, v4, v2}, Ljava/io/InputStream;->read([BII)I

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    const/4 v2, -0x1

    .line 578
    if-eq v7, v2, :cond_2a

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainFilterDown;->a()Z

    .line 581
    .line 582
    .line 583
    move-result v17

    .line 584
    if-eqz v17, :cond_28

    .line 585
    .line 586
    goto :goto_1d

    .line 587
    :cond_28
    iget-object v2, v0, Lcom/mycompany/app/main/MainFilterDown;->a:Ljava/io/OutputStream;

    .line 588
    .line 589
    invoke-virtual {v2, v11, v4, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 590
    .line 591
    .line 592
    move/from16 v4, v16

    .line 593
    .line 594
    move/from16 v7, v18

    .line 595
    .line 596
    const/16 v2, 0x400

    .line 597
    .line 598
    goto :goto_1c

    .line 599
    :cond_29
    move/from16 v16, v4

    .line 600
    .line 601
    move/from16 v18, v7

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    :cond_2a
    :goto_1d
    const/4 v11, 0x1

    .line 605
    goto :goto_1f

    .line 606
    :catch_12
    move-object/from16 v19, v2

    .line 607
    .line 608
    goto :goto_1a

    .line 609
    :catch_13
    move-object/from16 v19, v2

    .line 610
    .line 611
    move/from16 v16, v4

    .line 612
    .line 613
    move/from16 v18, v7

    .line 614
    .line 615
    const/4 v4, 0x0

    .line 616
    const/4 v13, 0x0

    .line 617
    :catch_14
    :goto_1e
    move v11, v4

    .line 618
    :goto_1f
    if-eqz v13, :cond_2b

    .line 619
    .line 620
    :try_start_15
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 621
    .line 622
    .line 623
    :catch_15
    :cond_2b
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 624
    .line 625
    .line 626
    :goto_20
    if-eqz v11, :cond_2c

    .line 627
    .line 628
    const/4 v8, 0x1

    .line 629
    :cond_2c
    move/from16 v2, p3

    .line 630
    .line 631
    move/from16 v4, v16

    .line 632
    .line 633
    move/from16 v7, v18

    .line 634
    .line 635
    goto/16 :goto_15

    .line 636
    .line 637
    :cond_2d
    iget-object v2, v0, Lcom/mycompany/app/main/MainFilterDown;->a:Ljava/io/OutputStream;

    .line 638
    .line 639
    if-eqz v2, :cond_2e

    .line 640
    .line 641
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 642
    .line 643
    .line 644
    :catch_16
    const/4 v2, 0x0

    .line 645
    iput-object v2, v0, Lcom/mycompany/app/main/MainFilterDown;->a:Ljava/io/OutputStream;

    .line 646
    .line 647
    :cond_2e
    if-eqz v8, :cond_31

    .line 648
    .line 649
    if-eqz v15, :cond_2f

    .line 650
    .line 651
    invoke-static {v1, v6, v9}, Lcom/mycompany/app/main/MainUtil;->v6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 652
    .line 653
    .line 654
    move-result v15

    .line 655
    :cond_2f
    if-eqz v15, :cond_30

    .line 656
    .line 657
    invoke-static {v1, v6, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    :goto_21
    move v4, v2

    .line 662
    goto :goto_22

    .line 663
    :cond_30
    invoke-static {v1, v9, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    goto :goto_21

    .line 668
    :cond_31
    invoke-static {v1, v5, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    goto :goto_21

    .line 673
    :goto_22
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 674
    .line 675
    .line 676
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 677
    .line 678
    .line 679
    goto :goto_24

    .line 680
    :cond_32
    :goto_23
    invoke-static {v1, v5, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    .line 682
    .line 683
    move-result v4

    .line 684
    :goto_24
    move v12, v4

    .line 685
    goto :goto_25

    .line 686
    :cond_33
    invoke-static {v1, v5, v3}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v12

    .line 690
    :cond_34
    :goto_25
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 691
    .line 692
    .line 693
    return v12
.end method
