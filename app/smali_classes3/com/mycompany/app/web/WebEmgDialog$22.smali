.class Lcom/mycompany/app/web/WebEmgDialog$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$22;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog$22;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 3
    .line 4
    iput v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 5
    .line 6
    iget-object v0, v1, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 7
    .line 8
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->z(ILjava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$22;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 11
    .line 12
    return-void
.end method

.method public final c(Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    iget-object v4, v3, Lcom/mycompany/app/web/WebEmgDialog$22;->a:Lcom/mycompany/app/web/WebEmgDialog;

    .line 10
    .line 11
    iget-object v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 17
    .line 18
    const/4 v6, 0x2

    .line 19
    if-ne v5, v6, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    const/4 v5, 0x0

    .line 23
    iput v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    :cond_2
    iput-boolean v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->x0:Z

    .line 42
    .line 43
    iget-object v7, v4, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 44
    .line 45
    invoke-virtual {v7}, Lcom/mycompany/app/web/WebEmgTask;->a()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/16 v8, 0x64

    .line 50
    .line 51
    if-ge v7, v8, :cond_3

    .line 52
    .line 53
    invoke-static {v4, v7}, Lcom/mycompany/app/web/WebEmgDialog;->s(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-boolean v8, v4, Lcom/mycompany/app/web/WebEmgDialog;->w0:Z

    .line 58
    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    iput-boolean v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->w0:Z

    .line 62
    .line 63
    invoke-static {v4, v7}, Lcom/mycompany/app/web/WebEmgDialog;->s(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iput v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_8

    .line 76
    .line 77
    :cond_5
    iget-boolean v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->x0:Z

    .line 78
    .line 79
    if-nez v6, :cond_6

    .line 80
    .line 81
    iput-boolean v5, v4, Lcom/mycompany/app/web/WebEmgDialog;->x0:Z

    .line 82
    .line 83
    :cond_6
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 84
    .line 85
    iget-boolean v6, v6, Lcom/mycompany/app/web/WebEmgTask;->f:Z

    .line 86
    .line 87
    if-eqz v6, :cond_7

    .line 88
    .line 89
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 90
    .line 91
    sget v7, Lnet/kaki87/soul2/testing/R$string;->server_error:I

    .line 92
    .line 93
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    iget-boolean v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->x0:Z

    .line 98
    .line 99
    if-eqz v6, :cond_8

    .line 100
    .line 101
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 102
    .line 103
    sget v7, Lnet/kaki87/soul2/testing/R$string;->check_network:I

    .line 104
    .line 105
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_1
    if-eqz v0, :cond_1a

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_1a

    .line 115
    .line 116
    if-eqz v2, :cond_1a

    .line 117
    .line 118
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_9

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_9
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v7, v4, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 129
    .line 130
    const/4 v8, 0x1

    .line 131
    if-eqz v7, :cond_a

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-nez v9, :cond_a

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    invoke-static {v6, v8}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->r1(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    :goto_2
    iput-object v7, v4, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    if-eqz v6, :cond_b

    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/mycompany/app/web/WebEmgTask;->d()V

    .line 164
    .line 165
    .line 166
    iput-object v7, v4, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 167
    .line 168
    :cond_b
    iget-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 169
    .line 170
    if-eqz v6, :cond_c

    .line 171
    .line 172
    invoke-static {v6, v8}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 173
    .line 174
    .line 175
    iput-object v7, v4, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 176
    .line 177
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v9, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    move v10, v5

    .line 188
    :goto_3
    if-ge v10, v2, :cond_e

    .line 189
    .line 190
    new-instance v11, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v12, ".jpg"

    .line 199
    .line 200
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    if-ne v10, v1, :cond_d

    .line 208
    .line 209
    move-object/from16 v12, p4

    .line 210
    .line 211
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_d
    move-object/from16 v12, p4

    .line 216
    .line 217
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    :goto_4
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    add-int/lit8 v10, v10, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    const/4 v11, -0x1

    .line 231
    move v13, v5

    .line 232
    move-object v15, v7

    .line 233
    move-object/from16 v19, v15

    .line 234
    .line 235
    move v7, v11

    .line 236
    move v12, v7

    .line 237
    :goto_5
    if-ge v13, v10, :cond_16

    .line 238
    .line 239
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    add-int/lit8 v13, v13, 0x1

    .line 244
    .line 245
    check-cast v14, Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v16

    .line 251
    if-eqz v16, :cond_10

    .line 252
    .line 253
    :cond_f
    move/from16 v16, v8

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_10
    const/16 v5, 0x2d

    .line 257
    .line 258
    invoke-virtual {v14, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eq v5, v11, :cond_f

    .line 263
    .line 264
    add-int/lit8 v5, v5, 0x1

    .line 265
    .line 266
    move/from16 v16, v8

    .line 267
    .line 268
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-lt v5, v8, :cond_11

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_11
    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    add-int/lit8 v5, v5, -0x1

    .line 284
    .line 285
    if-eq v5, v1, :cond_13

    .line 286
    .line 287
    if-ltz v5, :cond_13

    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    if-lt v5, v8, :cond_12

    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_12
    invoke-virtual {v9, v5, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    if-ne v7, v11, :cond_14

    .line 300
    .line 301
    move v7, v5

    .line 302
    move v12, v7

    .line 303
    move-object v15, v14

    .line 304
    move-object/from16 v19, v15

    .line 305
    .line 306
    :cond_13
    :goto_6
    move/from16 v8, v16

    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    goto :goto_5

    .line 310
    :cond_14
    if-ge v5, v7, :cond_15

    .line 311
    .line 312
    move v7, v5

    .line 313
    move-object v15, v14

    .line 314
    :cond_15
    if-le v5, v12, :cond_13

    .line 315
    .line 316
    move v12, v5

    .line 317
    move-object/from16 v19, v14

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_16
    move/from16 v16, v8

    .line 321
    .line 322
    new-instance v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 323
    .line 324
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 325
    .line 326
    .line 327
    iput v2, v0, Lcom/mycompany/app/data/DataUrl$ImgCntItem;->a:I

    .line 328
    .line 329
    iput-object v6, v4, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 330
    .line 331
    iput-object v0, v4, Lcom/mycompany/app/web/WebEmgDialog;->l0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 332
    .line 333
    iget-object v1, v4, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 334
    .line 335
    invoke-static {v1}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    iput-object v6, v1, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 340
    .line 341
    iput-object v9, v1, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 342
    .line 343
    iput-object v0, v1, Lcom/mycompany/app/data/DataUrl;->c:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 344
    .line 345
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    move/from16 v20, v12

    .line 350
    .line 351
    if-nez v0, :cond_17

    .line 352
    .line 353
    new-instance v12, Lcom/mycompany/app/web/WebEmgLoad;

    .line 354
    .line 355
    iget-object v13, v4, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 356
    .line 357
    iget-object v14, v4, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 358
    .line 359
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$28;

    .line 360
    .line 361
    invoke-direct {v0, v4}, Lcom/mycompany/app/web/WebEmgDialog$28;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 362
    .line 363
    .line 364
    const/16 v17, 0x1

    .line 365
    .line 366
    move-object/from16 v18, v0

    .line 367
    .line 368
    move/from16 v16, v7

    .line 369
    .line 370
    invoke-direct/range {v12 .. v18}, Lcom/mycompany/app/web/WebEmgLoad;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;)V

    .line 371
    .line 372
    .line 373
    iput-object v12, v4, Lcom/mycompany/app/web/WebEmgDialog;->z0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 374
    .line 375
    const/4 v8, 0x0

    .line 376
    goto :goto_7

    .line 377
    :cond_17
    move/from16 v8, v16

    .line 378
    .line 379
    :goto_7
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-nez v0, :cond_18

    .line 384
    .line 385
    new-instance v16, Lcom/mycompany/app/web/WebEmgLoad;

    .line 386
    .line 387
    iget-object v0, v4, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 388
    .line 389
    iget-object v1, v4, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 390
    .line 391
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$29;

    .line 392
    .line 393
    invoke-direct {v2, v4}, Lcom/mycompany/app/web/WebEmgDialog$29;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 394
    .line 395
    .line 396
    const/16 v21, 0x0

    .line 397
    .line 398
    move-object/from16 v17, v0

    .line 399
    .line 400
    move-object/from16 v18, v1

    .line 401
    .line 402
    move-object/from16 v22, v2

    .line 403
    .line 404
    invoke-direct/range {v16 .. v22}, Lcom/mycompany/app/web/WebEmgLoad;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Ljava/lang/String;IZLcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v0, v16

    .line 408
    .line 409
    iput-object v0, v4, Lcom/mycompany/app/web/WebEmgDialog;->A0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 410
    .line 411
    const/4 v5, 0x0

    .line 412
    goto :goto_8

    .line 413
    :cond_18
    move v5, v8

    .line 414
    :goto_8
    iget-object v0, v4, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    .line 416
    if-eqz v0, :cond_19

    .line 417
    .line 418
    const-string v1, "0 / 0"

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    .line 422
    .line 423
    :cond_19
    if-eqz v5, :cond_1a

    .line 424
    .line 425
    invoke-virtual {v4}, Lcom/mycompany/app/web/WebEmgDialog;->I()V

    .line 426
    .line 427
    .line 428
    :cond_1a
    :goto_9
    iget-object v0, v4, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 429
    .line 430
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 431
    .line 432
    invoke-virtual {v4, v1, v0}, Lcom/mycompany/app/web/WebEmgDialog;->z(ILjava/util/ArrayList;)V

    .line 433
    .line 434
    .line 435
    return-void
.end method
