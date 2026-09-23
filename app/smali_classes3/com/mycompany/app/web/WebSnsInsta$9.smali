.class Lcom/mycompany/app/web/WebSnsInsta$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsInsta;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsInsta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsInsta$9;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSnsInsta$9;->c:Lcom/mycompany/app/web/WebSnsInsta;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->u:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebSnsInsta;->u:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_10

    .line 16
    .line 17
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->q:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_a

    .line 24
    .line 25
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->n:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    :goto_0
    move-object v3, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    if-nez v3, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object v3, Lcom/mycompany/app/main/MainNative;->u:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getInstaMid1()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sput-object v3, Lcom/mycompany/app/main/MainNative;->u:Ljava/lang/String;

    .line 55
    .line 56
    :cond_3
    sget-object v3, Lcom/mycompany/app/main/MainNative;->u:Ljava/lang/String;

    .line 57
    .line 58
    :goto_1
    iput-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->n:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    :goto_2
    move-object v3, v2

    .line 67
    goto :goto_5

    .line 68
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->n:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v3}, Lcom/mycompany/app/web/WebSnsInsta;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->o:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_9

    .line 88
    .line 89
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 90
    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    :goto_3
    move-object v3, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    if-nez v3, :cond_7

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_7
    sget-object v3, Lcom/mycompany/app/main/MainNative;->v:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getInstaMid2()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    sput-object v3, Lcom/mycompany/app/main/MainNative;->v:Ljava/lang/String;

    .line 111
    .line 112
    :cond_8
    sget-object v3, Lcom/mycompany/app/main/MainNative;->v:Ljava/lang/String;

    .line 113
    .line 114
    :goto_4
    iput-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->o:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_9

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_9
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->o:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v1, v3}, Lcom/mycompany/app/web/WebSnsInsta;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    :goto_5
    iput-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->q:Ljava/lang/String;

    .line 130
    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_a

    .line 136
    .line 137
    goto/16 :goto_10

    .line 138
    .line 139
    :cond_a
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->p:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_b

    .line 146
    .line 147
    goto/16 :goto_b

    .line 148
    .line 149
    :cond_b
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->a:Lcom/mycompany/app/main/MainActivity;

    .line 150
    .line 151
    invoke-static {v3}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-nez v3, :cond_c

    .line 156
    .line 157
    move-object v3, v2

    .line 158
    goto :goto_6

    .line 159
    :cond_c
    iget-object v3, v3, Lcom/mycompany/app/main/MainApp;->j:Ljava/lang/String;

    .line 160
    .line 161
    :goto_6
    iput-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->p:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_d

    .line 168
    .line 169
    goto/16 :goto_b

    .line 170
    .line 171
    :cond_d
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->m:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_11

    .line 178
    .line 179
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 180
    .line 181
    if-nez v3, :cond_e

    .line 182
    .line 183
    :goto_7
    move-object v3, v2

    .line 184
    goto :goto_8

    .line 185
    :cond_e
    if-nez v3, :cond_f

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_f
    sget-object v3, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_10

    .line 195
    .line 196
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->getInstaAid()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    sput-object v3, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 201
    .line 202
    :cond_10
    sget-object v3, Lcom/mycompany/app/main/MainNative;->t:Ljava/lang/String;

    .line 203
    .line 204
    :goto_8
    iput-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->m:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_11

    .line 211
    .line 212
    :goto_9
    move-object v1, v2

    .line 213
    goto :goto_a

    .line 214
    :cond_11
    if-nez v1, :cond_12

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v5, v0, Lcom/mycompany/app/web/WebSnsInsta;->m:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v5, "\":\""

    .line 228
    .line 229
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    const/4 v5, -0x1

    .line 241
    if-ne v3, v5, :cond_13

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_13
    add-int/lit8 v3, v3, 0xe

    .line 245
    .line 246
    const/16 v5, 0x22

    .line 247
    .line 248
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-gt v5, v3, :cond_14

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_14
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :goto_a
    iput-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->p:Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_21

    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->a:Lcom/mycompany/app/main/MainActivity;

    .line 268
    .line 269
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->p:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-nez v1, :cond_15

    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_15
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->j:Ljava/lang/String;

    .line 279
    .line 280
    :goto_b
    const/4 v1, 0x1

    .line 281
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->l:Z

    .line 282
    .line 283
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->j:Z

    .line 284
    .line 285
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->k:Z

    .line 286
    .line 287
    iget-object v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 288
    .line 289
    iget-object v5, v0, Lcom/mycompany/app/web/WebSnsInsta;->p:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsInsta;->q:Ljava/lang/String;

    .line 292
    .line 293
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 294
    .line 295
    if-nez v6, :cond_16

    .line 296
    .line 297
    goto/16 :goto_11

    .line 298
    .line 299
    :cond_16
    const/4 v7, 0x5

    .line 300
    if-nez v6, :cond_17

    .line 301
    .line 302
    goto :goto_d

    .line 303
    :cond_17
    sget-object v6, Lcom/mycompany/app/main/MainNative;->s:Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-static {v7, v6}, Lcom/mycompany/app/main/MainNative;->a(ILjava/util/List;)Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_18

    .line 310
    .line 311
    sget-object v2, Lcom/mycompany/app/main/MainNative;->s:Ljava/util/ArrayList;

    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_18
    new-instance v6, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .line 318
    .line 319
    move v8, v4

    .line 320
    :goto_c
    if-ge v8, v7, :cond_1a

    .line 321
    .line 322
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->getInstaData(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v10

    .line 330
    if-eqz v10, :cond_19

    .line 331
    .line 332
    goto :goto_d

    .line 333
    :cond_19
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    add-int/lit8 v8, v8, 0x1

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_1a
    sput-object v6, Lcom/mycompany/app/main/MainNative;->s:Ljava/util/ArrayList;

    .line 340
    .line 341
    move-object v2, v6

    .line 342
    :goto_d
    if-eqz v2, :cond_23

    .line 343
    .line 344
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eq v6, v7, :cond_1b

    .line 349
    .line 350
    goto/16 :goto_11

    .line 351
    .line 352
    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    check-cast v4, Ljava/lang/String;

    .line 362
    .line 363
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v8

    .line 367
    if-eqz v8, :cond_1c

    .line 368
    .line 369
    goto :goto_11

    .line 370
    :cond_1c
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    move v4, v1

    .line 377
    :goto_e
    const/4 v5, 0x3

    .line 378
    if-ge v4, v5, :cond_1e

    .line 379
    .line 380
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    check-cast v5, Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-eqz v8, :cond_1d

    .line 391
    .line 392
    goto :goto_11

    .line 393
    :cond_1d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    add-int/lit8 v4, v4, 0x1

    .line 397
    .line 398
    goto :goto_e

    .line 399
    :cond_1e
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    :goto_f
    if-ge v5, v7, :cond_20

    .line 403
    .line 404
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    check-cast v0, Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_1f

    .line 415
    .line 416
    goto :goto_11

    .line 417
    :cond_1f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    add-int/lit8 v5, v5, 0x1

    .line 421
    .line 422
    goto :goto_f

    .line 423
    :cond_20
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v3, v0, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 428
    .line 429
    .line 430
    return-void

    .line 431
    :cond_21
    :goto_10
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->l:Z

    .line 432
    .line 433
    if-nez v1, :cond_25

    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 436
    .line 437
    if-nez v1, :cond_22

    .line 438
    .line 439
    goto :goto_12

    .line 440
    :cond_22
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->j:Z

    .line 441
    .line 442
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebSnsInsta;->k:Z

    .line 443
    .line 444
    if-nez v3, :cond_24

    .line 445
    .line 446
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSnsInsta;->i:Z

    .line 447
    .line 448
    if-eqz v1, :cond_23

    .line 449
    .line 450
    iget-object v0, v0, Lcom/mycompany/app/web/WebSnsInsta;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 451
    .line 452
    if-eqz v0, :cond_23

    .line 453
    .line 454
    check-cast v0, Lcom/mycompany/app/web/WebSnsLoad$10;

    .line 455
    .line 456
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebSnsLoad$10;->a(Ljava/util/List;)V

    .line 457
    .line 458
    .line 459
    :cond_23
    :goto_11
    return-void

    .line 460
    :cond_24
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->k:Z

    .line 461
    .line 462
    new-instance v0, Lcom/mycompany/app/web/WebSnsInsta$9$1;

    .line 463
    .line 464
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSnsInsta$9$1;-><init>(Lcom/mycompany/app/web/WebSnsInsta$9;)V

    .line 465
    .line 466
    .line 467
    const-wide/16 v2, 0x190

    .line 468
    .line 469
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :cond_25
    :goto_12
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->j:Z

    .line 474
    .line 475
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebSnsInsta;->k:Z

    .line 476
    .line 477
    return-void
.end method
