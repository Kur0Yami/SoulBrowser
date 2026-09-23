.class Lcom/mycompany/app/web/WebEmgLoad$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebEmgTask$EmgTaskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebEmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgLoad$7;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    iget-object v3, p0, Lcom/mycompany/app/web/WebEmgLoad$7;->a:Lcom/mycompany/app/web/WebEmgLoad;

    .line 7
    .line 8
    iget-object v4, v3, Lcom/mycompany/app/web/WebEmgLoad;->k:Lcom/mycompany/app/web/WebEmgTask;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    goto/16 :goto_a

    .line 13
    .line 14
    :cond_0
    iget-object v4, v3, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-eqz v0, :cond_1f

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_1f

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_2
    iget v4, v3, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 39
    .line 40
    if-gez v4, :cond_3

    .line 41
    .line 42
    iput v1, v3, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 43
    .line 44
    :cond_3
    iget v4, v3, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 45
    .line 46
    iget-object v7, v3, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v7}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget-object v7, v7, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v7, :cond_1e

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_4
    iget-object v8, v3, Lcom/mycompany/app/web/WebEmgLoad;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v8}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iget-object v8, v8, Lcom/mycompany/app/data/DataUrl;->b:Ljava/util/List;

    .line 71
    .line 72
    if-eqz v8, :cond_1d

    .line 73
    .line 74
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_5

    .line 79
    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eq v9, v10, :cond_6

    .line 91
    .line 92
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 93
    .line 94
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 95
    .line 96
    if-eqz v0, :cond_20

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    if-ltz v1, :cond_8

    .line 103
    .line 104
    if-ge v1, v9, :cond_8

    .line 105
    .line 106
    iput v1, v3, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 107
    .line 108
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->n5(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    invoke-interface {v7, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v4, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 118
    .line 119
    if-eqz v4, :cond_7

    .line 120
    .line 121
    invoke-interface {v4, v1, v2}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->b(ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    move v4, v1

    .line 125
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move v10, v5

    .line 130
    :cond_9
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_a

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->n5(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_9

    .line 147
    .line 148
    add-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    if-ne v10, v9, :cond_b

    .line 152
    .line 153
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 154
    .line 155
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 156
    .line 157
    if-eqz v0, :cond_20

    .line 158
    .line 159
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->c()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    const/4 v10, -0x1

    .line 168
    if-nez v2, :cond_10

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    move v11, v5

    .line 175
    :cond_c
    :goto_1
    if-ge v11, v2, :cond_10

    .line 176
    .line 177
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    add-int/lit8 v11, v11, 0x1

    .line 182
    .line 183
    check-cast v12, Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_d

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_d
    const/16 v13, 0x2d

    .line 193
    .line 194
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-eq v13, v10, :cond_c

    .line 199
    .line 200
    add-int/lit8 v13, v13, 0x1

    .line 201
    .line 202
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-lt v13, v6, :cond_e

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_e
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    add-int/lit8 v6, v6, -0x1

    .line 218
    .line 219
    if-eq v6, v1, :cond_c

    .line 220
    .line 221
    if-ltz v6, :cond_c

    .line 222
    .line 223
    if-lt v6, v9, :cond_f

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_f
    invoke-interface {v8, v6, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eq v0, v1, :cond_12

    .line 239
    .line 240
    :cond_11
    :goto_2
    move v2, v10

    .line 241
    goto :goto_5

    .line 242
    :cond_12
    if-ltz v4, :cond_13

    .line 243
    .line 244
    if-lt v4, v0, :cond_14

    .line 245
    .line 246
    :cond_13
    move v4, v5

    .line 247
    :cond_14
    move v2, v4

    .line 248
    move v1, v5

    .line 249
    :cond_15
    :goto_3
    if-ge v1, v0, :cond_11

    .line 250
    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 252
    .line 253
    iget-boolean v6, v3, Lcom/mycompany/app/web/WebEmgLoad;->g:Z

    .line 254
    .line 255
    if-eqz v6, :cond_16

    .line 256
    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 258
    .line 259
    rem-int/2addr v2, v0

    .line 260
    goto :goto_4

    .line 261
    :cond_16
    add-int/lit8 v2, v2, -0x1

    .line 262
    .line 263
    add-int/2addr v2, v0

    .line 264
    rem-int/2addr v2, v0

    .line 265
    :goto_4
    if-eq v2, v4, :cond_11

    .line 266
    .line 267
    if-ltz v2, :cond_11

    .line 268
    .line 269
    if-lt v2, v0, :cond_17

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_17
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-nez v6, :cond_18

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_18
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    check-cast v6, Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->n5(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-nez v6, :cond_15

    .line 296
    .line 297
    :goto_5
    if-ne v2, v10, :cond_19

    .line 298
    .line 299
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 300
    .line 301
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 302
    .line 303
    if-eqz v0, :cond_20

    .line 304
    .line 305
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_19
    if-ltz v2, :cond_1a

    .line 310
    .line 311
    if-ge v2, v9, :cond_1a

    .line 312
    .line 313
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/String;

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_1a
    const/4 v0, 0x0

    .line 321
    :goto_6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->o5(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_1b

    .line 326
    .line 327
    iput-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->e:Ljava/lang/String;

    .line 328
    .line 329
    iput v2, v3, Lcom/mycompany/app/web/WebEmgLoad;->f:I

    .line 330
    .line 331
    :cond_1b
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 332
    .line 333
    if-nez v0, :cond_1c

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_1c
    new-instance v1, Lcom/mycompany/app/web/WebEmgLoad$9;

    .line 337
    .line 338
    invoke-direct {v1, v3}, Lcom/mycompany/app/web/WebEmgLoad$9;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 339
    .line 340
    .line 341
    const-wide/16 v2, 0xc8

    .line 342
    .line 343
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :cond_1d
    :goto_7
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 348
    .line 349
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 350
    .line 351
    if-eqz v0, :cond_20

    .line 352
    .line 353
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_1e
    :goto_8
    iput-boolean v5, v3, Lcom/mycompany/app/web/WebEmgLoad;->j:Z

    .line 358
    .line 359
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->b:Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;

    .line 360
    .line 361
    if-eqz v0, :cond_20

    .line 362
    .line 363
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadWrap$EmgLoadListener;->a()V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :cond_1f
    :goto_9
    iget-object v0, v3, Lcom/mycompany/app/web/WebEmgLoad;->d:Lcom/mycompany/app/web/WebNestView;

    .line 368
    .line 369
    if-nez v0, :cond_21

    .line 370
    .line 371
    :cond_20
    :goto_a
    return-void

    .line 372
    :cond_21
    new-instance v1, Lcom/mycompany/app/web/WebEmgLoad$8;

    .line 373
    .line 374
    invoke-direct {v1, v3}, Lcom/mycompany/app/web/WebEmgLoad$8;-><init>(Lcom/mycompany/app/web/WebEmgLoad;)V

    .line 375
    .line 376
    .line 377
    const-wide/16 v2, 0xc8

    .line 378
    .line 379
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    .line 381
    .line 382
    return-void
.end method
