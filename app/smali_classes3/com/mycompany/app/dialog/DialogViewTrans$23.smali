.class Lcom/mycompany/app/dialog/DialogViewTrans$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$23;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans$23;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->i1:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->i1:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewTrans;->G()Z

    .line 11
    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_10

    .line 18
    .line 19
    :cond_0
    const/4 v4, 0x1

    .line 20
    iput v4, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 21
    .line 22
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v2, :cond_13

    .line 26
    .line 27
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput v5, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 35
    .line 36
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/16 v7, 0xa0

    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    move v8, v5

    .line 51
    :goto_0
    if-ge v8, v7, :cond_12

    .line 52
    .line 53
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    check-cast v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 58
    .line 59
    if-nez v9, :cond_1

    .line 60
    .line 61
    :goto_1
    move/from16 v16, v4

    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :cond_1
    iget-boolean v10, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 66
    .line 67
    if-eqz v10, :cond_2

    .line 68
    .line 69
    iget-object v10, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->h:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move v3, v5

    .line 73
    goto/16 :goto_e

    .line 74
    .line 75
    :cond_2
    iget-object v10, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 76
    .line 77
    :goto_2
    if-nez v10, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-nez v11, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const-string v12, ""

    .line 88
    .line 89
    const-string v13, "\n"

    .line 90
    .line 91
    if-le v11, v6, :cond_10

    .line 92
    .line 93
    move v14, v5

    .line 94
    :goto_3
    add-int v15, v14, v6

    .line 95
    .line 96
    :try_start_1
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    if-lt v14, v15, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    if-ge v15, v11, :cond_d

    .line 104
    .line 105
    move/from16 v16, v4

    .line 106
    .line 107
    add-int/lit8 v4, v15, -0x1

    .line 108
    .line 109
    sub-int v17, v15, v14

    .line 110
    .line 111
    div-int/lit8 v17, v17, 0x2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    add-int v3, v14, v17

    .line 114
    .line 115
    const/16 v5, 0xa

    .line 116
    .line 117
    :try_start_2
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-le v5, v3, :cond_6

    .line 122
    .line 123
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    if-ge v5, v15, :cond_6

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    const-string v5, ". "

    .line 129
    .line 130
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-le v5, v3, :cond_7

    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x2

    .line 137
    .line 138
    if-ge v5, v15, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    const-string v5, ", "

    .line 142
    .line 143
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-le v5, v3, :cond_8

    .line 148
    .line 149
    add-int/lit8 v5, v5, 0x2

    .line 150
    .line 151
    if-ge v5, v15, :cond_8

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    const/16 v5, 0x20

    .line 155
    .line 156
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-le v4, v3, :cond_9

    .line 161
    .line 162
    add-int/lit8 v5, v4, 0x1

    .line 163
    .line 164
    if-ge v5, v15, :cond_9

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    const/4 v5, -0x1

    .line 168
    :goto_4
    if-le v5, v14, :cond_e

    .line 169
    .line 170
    if-ge v5, v15, :cond_e

    .line 171
    .line 172
    move v3, v5

    .line 173
    :goto_5
    const-string v4, " "

    .line 174
    .line 175
    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_c

    .line 180
    .line 181
    invoke-virtual {v10, v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_a

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_a
    if-le v3, v14, :cond_b

    .line 189
    .line 190
    if-ge v3, v15, :cond_b

    .line 191
    .line 192
    move v15, v3

    .line 193
    goto :goto_7

    .line 194
    :cond_b
    move v15, v5

    .line 195
    goto :goto_7

    .line 196
    :catch_1
    const/4 v3, 0x0

    .line 197
    goto/16 :goto_e

    .line 198
    .line 199
    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_d
    move/from16 v16, v4

    .line 203
    .line 204
    :cond_e
    :goto_7
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-nez v4, :cond_f

    .line 213
    .line 214
    invoke-virtual {v3, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_f

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-nez v4, :cond_f

    .line 233
    .line 234
    new-instance v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 235
    .line 236
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    iget v5, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 240
    .line 241
    iput v5, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 242
    .line 243
    iget v5, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->g:I

    .line 244
    .line 245
    add-int/2addr v5, v14

    .line 246
    iput v5, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->b:I

    .line 247
    .line 248
    iput-object v3, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    :try_start_3
    iput v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 257
    .line 258
    :cond_f
    move v14, v15

    .line 259
    move/from16 v4, v16

    .line 260
    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v5, 0x0

    .line 263
    goto/16 :goto_3

    .line 264
    .line 265
    :cond_10
    move/from16 v16, v4

    .line 266
    .line 267
    :try_start_4
    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_11

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-nez v4, :cond_11

    .line 286
    .line 287
    new-instance v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 288
    .line 289
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 290
    .line 291
    .line 292
    iget v5, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 293
    .line 294
    iput v5, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 295
    .line 296
    iget v5, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->g:I

    .line 297
    .line 298
    iput v5, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->b:I

    .line 299
    .line 300
    iput-object v3, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 305
    .line 306
    .line 307
    const/4 v3, 0x0

    .line 308
    :try_start_5
    iput v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->g:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 309
    .line 310
    :cond_11
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 311
    .line 312
    move/from16 v4, v16

    .line 313
    .line 314
    const/4 v3, 0x0

    .line 315
    const/4 v5, 0x0

    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_12
    move/from16 v16, v4

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_13
    move/from16 v16, v4

    .line 322
    .line 323
    :try_start_6
    iget v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 324
    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 326
    .line 327
    iput v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 328
    .line 329
    :goto_9
    iget v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 330
    .line 331
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 332
    .line 333
    if-eqz v3, :cond_15

    .line 334
    .line 335
    if-ltz v2, :cond_15

    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-lt v2, v3, :cond_14

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_14
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    check-cast v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_15
    :goto_a
    const/4 v2, 0x0

    .line 354
    :goto_b
    if-nez v2, :cond_16

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    goto :goto_c

    .line 358
    :cond_16
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 359
    .line 360
    :goto_c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 361
    .line 362
    .line 363
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 364
    if-eqz v3, :cond_17

    .line 365
    .line 366
    const/4 v3, 0x0

    .line 367
    :try_start_7
    iput v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 368
    .line 369
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 373
    .line 374
    iput v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 375
    .line 376
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_17
    :try_start_8
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 381
    .line 382
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_18

    .line 387
    .line 388
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 389
    .line 390
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 391
    .line 392
    .line 393
    :cond_18
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogViewTrans;->L()V

    .line 394
    .line 395
    .line 396
    iget v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 397
    .line 398
    move/from16 v4, v16

    .line 399
    .line 400
    if-eq v3, v4, :cond_19

    .line 401
    .line 402
    goto :goto_10

    .line 403
    :cond_19
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 404
    .line 405
    const-string v5, "0"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 406
    .line 407
    const/4 v6, 0x0

    .line 408
    const/4 v7, 0x0

    .line 409
    :try_start_9
    invoke-virtual {v3, v2, v7, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_1a

    .line 414
    .line 415
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 416
    .line 417
    .line 418
    goto :goto_d

    .line 419
    :catch_2
    move v3, v7

    .line 420
    goto :goto_e

    .line 421
    :cond_1a
    iput v7, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 422
    .line 423
    iput-boolean v7, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 424
    .line 425
    :goto_d
    const/4 v3, 0x0

    .line 426
    goto :goto_f

    .line 427
    :catch_3
    :goto_e
    iput v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 428
    .line 429
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 430
    .line 431
    :goto_f
    iget v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 432
    .line 433
    if-nez v2, :cond_1b

    .line 434
    .line 435
    const/4 v2, 0x0

    .line 436
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 437
    .line 438
    iput v3, v1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 439
    .line 440
    invoke-virtual {v1, v3, v3}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 441
    .line 442
    .line 443
    :cond_1b
    :goto_10
    return-void
.end method
