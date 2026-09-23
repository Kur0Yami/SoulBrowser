.class Lcom/mycompany/app/main/MainTxtView$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$30;->c:Lcom/mycompany/app/main/MainTxtView;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView$30;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->R2:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->R2:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTxtView;->L0()Z

    .line 11
    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_d

    .line 18
    .line 19
    :cond_0
    const/4 v4, 0x1

    .line 20
    iput v4, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 21
    .line 22
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v2, :cond_11

    .line 26
    .line 27
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v7, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 35
    .line 36
    new-instance v7, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v7, v1, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/16 v8, 0xa0

    .line 48
    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    move v9, v6

    .line 58
    :goto_0
    if-ge v9, v8, :cond_10

    .line 59
    .line 60
    iget-object v10, v1, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 61
    .line 62
    iget-object v11, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    check-cast v10, Ljava/lang/String;

    .line 80
    .line 81
    if-nez v10, :cond_1

    .line 82
    .line 83
    :goto_1
    move/from16 v16, v4

    .line 84
    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    if-nez v11, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string v12, ""

    .line 95
    .line 96
    const-string v13, "\n"

    .line 97
    .line 98
    if-le v11, v7, :cond_e

    .line 99
    .line 100
    move v14, v6

    .line 101
    :goto_2
    add-int v15, v14, v7

    .line 102
    .line 103
    :try_start_1
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    if-lt v14, v15, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-ge v15, v11, :cond_b

    .line 111
    .line 112
    move/from16 v16, v4

    .line 113
    .line 114
    add-int/lit8 v4, v15, -0x1

    .line 115
    .line 116
    sub-int v17, v15, v14

    .line 117
    .line 118
    div-int/lit8 v17, v17, 0x2

    .line 119
    .line 120
    add-int v3, v14, v17

    .line 121
    .line 122
    const/16 v5, 0xa

    .line 123
    .line 124
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-le v5, v3, :cond_4

    .line 129
    .line 130
    add-int/lit8 v5, v5, 0x1

    .line 131
    .line 132
    if-ge v5, v15, :cond_4

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    const-string v5, ". "

    .line 136
    .line 137
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-le v5, v3, :cond_5

    .line 142
    .line 143
    add-int/lit8 v5, v5, 0x2

    .line 144
    .line 145
    if-ge v5, v15, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    const-string v5, ", "

    .line 149
    .line 150
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-le v5, v3, :cond_6

    .line 155
    .line 156
    add-int/lit8 v5, v5, 0x2

    .line 157
    .line 158
    if-ge v5, v15, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    const/16 v5, 0x20

    .line 162
    .line 163
    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-le v4, v3, :cond_7

    .line 168
    .line 169
    add-int/lit8 v3, v4, 0x1

    .line 170
    .line 171
    if-ge v3, v15, :cond_7

    .line 172
    .line 173
    move v5, v3

    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/4 v5, -0x1

    .line 176
    :goto_3
    if-le v5, v14, :cond_c

    .line 177
    .line 178
    if-ge v5, v15, :cond_c

    .line 179
    .line 180
    move v3, v5

    .line 181
    :goto_4
    const-string v4, " "

    .line 182
    .line 183
    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_a

    .line 188
    .line 189
    invoke-virtual {v10, v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_8

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_8
    if-le v3, v14, :cond_9

    .line 197
    .line 198
    if-ge v3, v15, :cond_9

    .line 199
    .line 200
    move v15, v3

    .line 201
    goto :goto_6

    .line 202
    :cond_9
    move v15, v5

    .line 203
    goto :goto_6

    .line 204
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_b
    move/from16 v16, v4

    .line 208
    .line 209
    :cond_c
    :goto_6
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_d

    .line 218
    .line 219
    invoke-virtual {v3, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-nez v4, :cond_d

    .line 228
    .line 229
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-nez v4, :cond_d

    .line 238
    .line 239
    new-instance v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 240
    .line 241
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    iput v9, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 245
    .line 246
    iput v14, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->b:I

    .line 247
    .line 248
    iput-object v3, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    :cond_d
    move v14, v15

    .line 256
    move/from16 v4, v16

    .line 257
    .line 258
    const/4 v3, 0x0

    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_e
    move/from16 v16, v4

    .line 262
    .line 263
    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_f

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-nez v4, :cond_f

    .line 282
    .line 283
    new-instance v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 284
    .line 285
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 286
    .line 287
    .line 288
    iput v9, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->a:I

    .line 289
    .line 290
    iput v6, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->b:I

    .line 291
    .line 292
    iput-object v3, v4, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :cond_f
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 300
    .line 301
    move/from16 v4, v16

    .line 302
    .line 303
    const/4 v3, 0x0

    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_10
    move/from16 v16, v4

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_11
    move/from16 v16, v4

    .line 310
    .line 311
    iget v2, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 312
    .line 313
    add-int/lit8 v2, v2, 0x1

    .line 314
    .line 315
    iput v2, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 316
    .line 317
    :goto_8
    iget v2, v1, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 318
    .line 319
    const/4 v3, -0x1

    .line 320
    if-eq v2, v3, :cond_12

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainTxtView;->I0(I)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    iput v2, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 327
    .line 328
    iput v3, v1, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 329
    .line 330
    :cond_12
    iget v2, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 331
    .line 332
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 333
    .line 334
    if-eqz v3, :cond_14

    .line 335
    .line 336
    if-ltz v2, :cond_14

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-lt v2, v3, :cond_13

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_13
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 352
    .line 353
    goto :goto_a

    .line 354
    :cond_14
    :goto_9
    const/4 v2, 0x0

    .line 355
    :goto_a
    if-nez v2, :cond_15

    .line 356
    .line 357
    const/4 v2, 0x0

    .line 358
    goto :goto_b

    .line 359
    :cond_15
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 360
    .line 361
    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_16

    .line 366
    .line 367
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 368
    .line 369
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 373
    .line 374
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 375
    .line 376
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 377
    .line 378
    const/4 v3, -0x1

    .line 379
    iput v3, v1, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 380
    .line 381
    invoke-virtual {v1, v6, v6}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :cond_16
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 386
    .line 387
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-eqz v3, :cond_17

    .line 392
    .line 393
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 394
    .line 395
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 396
    .line 397
    .line 398
    :cond_17
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTxtView;->V0()V

    .line 399
    .line 400
    .line 401
    iget v3, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 402
    .line 403
    move/from16 v4, v16

    .line 404
    .line 405
    if-eq v3, v4, :cond_18

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_18
    iget-object v3, v1, Lcom/mycompany/app/main/MainTxtView;->n2:Landroid/speech/tts/TextToSpeech;

    .line 409
    .line 410
    const-string v5, "0"

    .line 411
    .line 412
    const/4 v7, 0x0

    .line 413
    invoke-virtual {v3, v2, v6, v7, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_19

    .line 418
    .line 419
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 420
    .line 421
    .line 422
    goto :goto_c

    .line 423
    :cond_19
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 424
    .line 425
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainTxtView;->x2:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :catch_0
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 429
    .line 430
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainTxtView;->x2:Z

    .line 431
    .line 432
    :goto_c
    iget v2, v1, Lcom/mycompany/app/main/MainTxtView;->w2:I

    .line 433
    .line 434
    if-nez v2, :cond_1a

    .line 435
    .line 436
    const/4 v2, 0x0

    .line 437
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->s2:Ljava/util/ArrayList;

    .line 438
    .line 439
    iput v6, v1, Lcom/mycompany/app/main/MainTxtView;->t2:I

    .line 440
    .line 441
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtView;->u2:Ljava/util/ArrayList;

    .line 442
    .line 443
    const/4 v3, -0x1

    .line 444
    iput v3, v1, Lcom/mycompany/app/main/MainTxtView;->v2:I

    .line 445
    .line 446
    invoke-virtual {v1, v6, v6}, Lcom/mycompany/app/main/MainTxtView;->Z0(IZ)V

    .line 447
    .line 448
    .line 449
    :cond_1a
    :goto_d
    return-void
.end method
