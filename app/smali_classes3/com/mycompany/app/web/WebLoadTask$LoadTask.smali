.class Lcom/mycompany/app/web/WebLoadTask$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/util/List;

.field public m:Ljava/util/ArrayList;

.field public n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/web/WebLoadTask;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance p1, Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1b

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/web/WebLoadTask;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1b

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    goto/16 :goto_1b

    .line 22
    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ge v2, v3, :cond_2b

    .line 28
    .line 29
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 30
    .line 31
    if-nez v5, :cond_3

    .line 32
    .line 33
    goto/16 :goto_1b

    .line 34
    .line 35
    :cond_3
    if-nez v2, :cond_4

    .line 36
    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->g:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3, v5}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    iget-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_5

    .line 55
    .line 56
    goto/16 :goto_d

    .line 57
    .line 58
    :cond_5
    iget-object v3, p0, Lcom/mycompany/app/async/MyAsyncTask;->a:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v3, v5, v5}, Lcom/mycompany/app/main/MainUtil;->d2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v5}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5, v3}, Lorg/jsoup/Connection;->headers(Ljava/util/Map;)Lorg/jsoup/Connection;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-interface {v3}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :goto_1
    iget-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_13

    .line 87
    .line 88
    const-string v5, "meta[property=\'og:title\']"

    .line 89
    .line 90
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-eqz v5, :cond_9

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_9

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    move v7, v1

    .line 107
    :goto_2
    if-ge v7, v6, :cond_9

    .line 108
    .line 109
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 116
    .line 117
    if-nez v8, :cond_6

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 121
    .line 122
    if-nez v5, :cond_7

    .line 123
    .line 124
    move v5, v4

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    const-string v5, "content"

    .line 127
    .line 128
    invoke-virtual {v8, v5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-nez v6, :cond_8

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-nez v6, :cond_9

    .line 147
    .line 148
    iput-object v5, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 149
    .line 150
    :cond_9
    move v5, v1

    .line 151
    :goto_3
    if-eqz v5, :cond_a

    .line 152
    .line 153
    goto/16 :goto_1b

    .line 154
    .line 155
    :cond_a
    iget-object v6, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_12

    .line 162
    .line 163
    const-string v6, "title"

    .line 164
    .line 165
    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    if-eqz v6, :cond_11

    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_11

    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    move v8, v1

    .line 182
    :cond_b
    :goto_4
    if-ge v8, v7, :cond_11

    .line 183
    .line 184
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    add-int/lit8 v8, v8, 0x1

    .line 189
    .line 190
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 191
    .line 192
    if-nez v9, :cond_c

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_c
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 196
    .line 197
    if-nez v10, :cond_d

    .line 198
    .line 199
    move v5, v4

    .line 200
    goto :goto_5

    .line 201
    :cond_d
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-eqz v10, :cond_e

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_e
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->M(Ljava/lang/String;)Landroid/text/Spanned;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    if-nez v9, :cond_f

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v9

    .line 223
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-nez v10, :cond_10

    .line 228
    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-nez v10, :cond_b

    .line 238
    .line 239
    iput-object v9, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 240
    .line 241
    :cond_11
    :goto_5
    if-eqz v5, :cond_12

    .line 242
    .line 243
    goto/16 :goto_1b

    .line 244
    .line 245
    :cond_12
    iget-object v6, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-nez v6, :cond_14

    .line 252
    .line 253
    iget-object v6, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v7, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->u3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    iput-object v6, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_13
    move v5, v1

    .line 269
    :cond_14
    :goto_6
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 270
    .line 271
    if-nez v6, :cond_15

    .line 272
    .line 273
    goto/16 :goto_1b

    .line 274
    .line 275
    :cond_15
    const-string v6, "img"

    .line 276
    .line 277
    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    if-eqz v6, :cond_22

    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_22

    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    move v8, v1

    .line 294
    :cond_16
    :goto_7
    if-ge v8, v7, :cond_22

    .line 295
    .line 296
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    add-int/lit8 v8, v8, 0x1

    .line 301
    .line 302
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 303
    .line 304
    if-nez v9, :cond_17

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_17
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 308
    .line 309
    if-nez v10, :cond_18

    .line 310
    .line 311
    move v5, v4

    .line 312
    goto/16 :goto_9

    .line 313
    .line 314
    :cond_18
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    invoke-virtual {v9}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    :cond_19
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    if-eqz v10, :cond_16

    .line 327
    .line 328
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v10

    .line 332
    check-cast v10, Lorg/jsoup/nodes/Attribute;

    .line 333
    .line 334
    if-nez v10, :cond_1a

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_1a
    invoke-virtual {v10}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    if-eqz v11, :cond_1b

    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_1b
    const-string v11, "data:image/"

    .line 349
    .line 350
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v11

    .line 354
    if-eqz v11, :cond_1c

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_1c
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->w3(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    if-nez v10, :cond_1d

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_1d
    iget v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->o:I

    .line 365
    .line 366
    iget v12, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->p:I

    .line 367
    .line 368
    invoke-static {v0, v10, v11, v12}, Lcom/mycompany/app/web/WebLoadTask;->b(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;II)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    if-nez v10, :cond_1e

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_1e
    invoke-static {v10}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v11

    .line 379
    const/4 v12, -0x1

    .line 380
    if-eqz v11, :cond_20

    .line 381
    .line 382
    iget-boolean v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->j:Z

    .line 383
    .line 384
    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->N1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    if-nez v13, :cond_19

    .line 397
    .line 398
    iget-object v13, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 401
    .line 402
    .line 403
    move-result v13

    .line 404
    if-ne v13, v12, :cond_1f

    .line 405
    .line 406
    iget-object v12, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 407
    .line 408
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 412
    .line 413
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 417
    .line 418
    invoke-static {v0, v11, v10}, Lcom/mycompany/app/web/WebLoadTask;->a(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_1f
    iget-boolean v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->t:Z

    .line 423
    .line 424
    if-eqz v11, :cond_19

    .line 425
    .line 426
    iget-object v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 427
    .line 428
    invoke-interface {v11, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_20
    iget-object v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 433
    .line 434
    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->E1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v11

    .line 442
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    if-nez v13, :cond_19

    .line 447
    .line 448
    iget-object v13, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    if-ne v13, v12, :cond_21

    .line 455
    .line 456
    iget-object v12, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 457
    .line 458
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 467
    .line 468
    invoke-static {v0, v11, v10}, Lcom/mycompany/app/web/WebLoadTask;->a(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_8

    .line 472
    .line 473
    :cond_21
    iget-boolean v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->t:Z

    .line 474
    .line 475
    if-eqz v11, :cond_19

    .line 476
    .line 477
    iget-object v11, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 478
    .line 479
    invoke-interface {v11, v13, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    goto/16 :goto_8

    .line 483
    .line 484
    :cond_22
    :goto_9
    if-eqz v5, :cond_23

    .line 485
    .line 486
    goto/16 :goto_1b

    .line 487
    .line 488
    :cond_23
    iget-boolean v6, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->r:Z

    .line 489
    .line 490
    if-eqz v6, :cond_2a

    .line 491
    .line 492
    const-string v6, "i"

    .line 493
    .line 494
    invoke-virtual {v3, v6}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    if-eqz v3, :cond_29

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    if-eqz v6, :cond_29

    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    move v7, v1

    .line 511
    :cond_24
    :goto_a
    if-ge v7, v6, :cond_29

    .line 512
    .line 513
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    add-int/lit8 v7, v7, 0x1

    .line 518
    .line 519
    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 520
    .line 521
    if-nez v8, :cond_25

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_25
    iget-boolean v9, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 525
    .line 526
    if-nez v9, :cond_26

    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_26
    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-virtual {v8}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    :cond_27
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 538
    .line 539
    .line 540
    move-result v9

    .line 541
    if-eqz v9, :cond_24

    .line 542
    .line 543
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    check-cast v9, Lorg/jsoup/nodes/Attribute;

    .line 548
    .line 549
    if-nez v9, :cond_28

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_28
    invoke-virtual {v9}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->U0(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v10

    .line 564
    if-nez v10, :cond_27

    .line 565
    .line 566
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 567
    .line 568
    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v10

    .line 572
    if-nez v10, :cond_27

    .line 573
    .line 574
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 575
    .line 576
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    iget-object v10, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 580
    .line 581
    invoke-static {v0, v9, v10}, Lcom/mycompany/app/web/WebLoadTask;->a(Lcom/mycompany/app/web/WebLoadTask;Ljava/lang/String;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .line 583
    .line 584
    goto :goto_b

    .line 585
    :cond_29
    move v4, v5

    .line 586
    :goto_c
    if-eqz v4, :cond_2a

    .line 587
    .line 588
    goto/16 :goto_1b

    .line 589
    .line 590
    :catch_0
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 591
    .line 592
    goto/16 :goto_0

    .line 593
    .line 594
    :cond_2b
    :goto_d
    iget v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->o:I

    .line 595
    .line 596
    if-ne v0, v3, :cond_50

    .line 597
    .line 598
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 599
    .line 600
    if-eqz v0, :cond_4f

    .line 601
    .line 602
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    if-eqz v2, :cond_2c

    .line 607
    .line 608
    goto/16 :goto_18

    .line 609
    .line 610
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    if-eqz v5, :cond_31

    .line 624
    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    check-cast v5, Ljava/lang/String;

    .line 630
    .line 631
    invoke-static {v5}, Lcom/mycompany/app/web/WebLoadTask;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    if-eqz v6, :cond_2d

    .line 640
    .line 641
    goto :goto_e

    .line 642
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    move v7, v1

    .line 647
    :cond_2e
    :goto_f
    if-ge v7, v6, :cond_30

    .line 648
    .line 649
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v8

    .line 653
    add-int/lit8 v7, v7, 0x1

    .line 654
    .line 655
    check-cast v8, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 656
    .line 657
    if-nez v8, :cond_2f

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_2f
    iget-object v9, v8, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    if-eqz v9, :cond_2e

    .line 667
    .line 668
    iget v5, v8, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 669
    .line 670
    add-int/2addr v5, v4

    .line 671
    iput v5, v8, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 672
    .line 673
    goto :goto_e

    .line 674
    :cond_30
    new-instance v6, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 675
    .line 676
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 677
    .line 678
    .line 679
    iput-object v5, v6, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 680
    .line 681
    iput v4, v6, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 682
    .line 683
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    goto :goto_e

    .line 687
    :cond_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    if-eqz v3, :cond_32

    .line 692
    .line 693
    goto/16 :goto_18

    .line 694
    .line 695
    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    const/4 v5, 0x0

    .line 700
    move v7, v1

    .line 701
    move v8, v7

    .line 702
    move-object v6, v5

    .line 703
    :cond_33
    :goto_10
    if-ge v8, v3, :cond_35

    .line 704
    .line 705
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v9

    .line 709
    add-int/lit8 v8, v8, 0x1

    .line 710
    .line 711
    check-cast v9, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 712
    .line 713
    if-nez v9, :cond_34

    .line 714
    .line 715
    goto :goto_10

    .line 716
    :cond_34
    iget v10, v9, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 717
    .line 718
    if-lt v10, v7, :cond_33

    .line 719
    .line 720
    iget-object v6, v9, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 721
    .line 722
    move v7, v10

    .line 723
    goto :goto_10

    .line 724
    :cond_35
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    if-eqz v2, :cond_36

    .line 729
    .line 730
    goto/16 :goto_18

    .line 731
    .line 732
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    .line 733
    .line 734
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .line 736
    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    :cond_37
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 742
    .line 743
    .line 744
    move-result v7

    .line 745
    if-eqz v7, :cond_39

    .line 746
    .line 747
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v7

    .line 751
    check-cast v7, Ljava/lang/String;

    .line 752
    .line 753
    invoke-static {v7}, Lcom/mycompany/app/web/WebLoadTask;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v8

    .line 757
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 758
    .line 759
    .line 760
    move-result v9

    .line 761
    if-eqz v9, :cond_38

    .line 762
    .line 763
    goto :goto_11

    .line 764
    :cond_38
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    if-eqz v8, :cond_37

    .line 769
    .line 770
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    goto :goto_11

    .line 774
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-eqz v3, :cond_3a

    .line 779
    .line 780
    goto/16 :goto_18

    .line 781
    .line 782
    :cond_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-eqz v0, :cond_3b

    .line 787
    .line 788
    goto/16 :goto_17

    .line 789
    .line 790
    :cond_3b
    new-instance v0, Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 796
    .line 797
    .line 798
    move-result v3

    .line 799
    move v7, v1

    .line 800
    move-object v6, v5

    .line 801
    :goto_12
    const-string v8, "image/*"

    .line 802
    .line 803
    if-ge v7, v3, :cond_3f

    .line 804
    .line 805
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v9

    .line 809
    add-int/lit8 v7, v7, 0x1

    .line 810
    .line 811
    check-cast v9, Ljava/lang/String;

    .line 812
    .line 813
    invoke-static {v9, v5, v8}, Landroidx/webkit/URLUtilCompat;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v8

    .line 817
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 818
    .line 819
    .line 820
    move-result v9

    .line 821
    if-eqz v9, :cond_3c

    .line 822
    .line 823
    goto :goto_12

    .line 824
    :cond_3c
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    move-result v9

    .line 828
    if-eqz v9, :cond_3e

    .line 829
    .line 830
    if-nez v6, :cond_3d

    .line 831
    .line 832
    new-instance v6, Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .line 836
    .line 837
    :cond_3d
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    goto :goto_12

    .line 841
    :cond_3e
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    goto :goto_12

    .line 845
    :cond_3f
    if-eqz v6, :cond_4e

    .line 846
    .line 847
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-eqz v0, :cond_40

    .line 852
    .line 853
    goto/16 :goto_17

    .line 854
    .line 855
    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 861
    .line 862
    .line 863
    move-result v3

    .line 864
    move v7, v1

    .line 865
    :goto_13
    if-ge v7, v3, :cond_45

    .line 866
    .line 867
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v9

    .line 871
    add-int/lit8 v7, v7, 0x1

    .line 872
    .line 873
    check-cast v9, Ljava/lang/String;

    .line 874
    .line 875
    invoke-static {v9, v4}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v9

    .line 879
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 880
    .line 881
    .line 882
    move-result v10

    .line 883
    if-eqz v10, :cond_41

    .line 884
    .line 885
    goto :goto_13

    .line 886
    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 887
    .line 888
    .line 889
    move-result v10

    .line 890
    move v11, v1

    .line 891
    :cond_42
    :goto_14
    if-ge v11, v10, :cond_44

    .line 892
    .line 893
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v12

    .line 897
    add-int/lit8 v11, v11, 0x1

    .line 898
    .line 899
    check-cast v12, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 900
    .line 901
    if-nez v12, :cond_43

    .line 902
    .line 903
    goto :goto_14

    .line 904
    :cond_43
    iget-object v13, v12, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 905
    .line 906
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v13

    .line 910
    if-eqz v13, :cond_42

    .line 911
    .line 912
    iget v9, v12, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 913
    .line 914
    add-int/2addr v9, v4

    .line 915
    iput v9, v12, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 916
    .line 917
    goto :goto_13

    .line 918
    :cond_44
    new-instance v10, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 919
    .line 920
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 921
    .line 922
    .line 923
    iput-object v9, v10, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 924
    .line 925
    iput v4, v10, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 926
    .line 927
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    goto :goto_13

    .line 931
    :cond_45
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 932
    .line 933
    .line 934
    move-result v3

    .line 935
    if-eqz v3, :cond_46

    .line 936
    .line 937
    goto/16 :goto_17

    .line 938
    .line 939
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    move v9, v1

    .line 944
    move v10, v9

    .line 945
    move-object v7, v5

    .line 946
    :cond_47
    :goto_15
    if-ge v10, v3, :cond_49

    .line 947
    .line 948
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v11

    .line 952
    add-int/lit8 v10, v10, 0x1

    .line 953
    .line 954
    check-cast v11, Lcom/mycompany/app/web/WebLoadTask$MimagDir;

    .line 955
    .line 956
    if-nez v11, :cond_48

    .line 957
    .line 958
    goto :goto_15

    .line 959
    :cond_48
    iget v12, v11, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->b:I

    .line 960
    .line 961
    if-lt v12, v9, :cond_47

    .line 962
    .line 963
    iget-object v7, v11, Lcom/mycompany/app/web/WebLoadTask$MimagDir;->a:Ljava/lang/String;

    .line 964
    .line 965
    move v9, v12

    .line 966
    goto :goto_15

    .line 967
    :cond_49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    if-eqz v0, :cond_4a

    .line 972
    .line 973
    goto :goto_17

    .line 974
    :cond_4a
    new-instance v0, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    :goto_16
    if-ge v1, v3, :cond_4d

    .line 984
    .line 985
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v9

    .line 989
    add-int/lit8 v1, v1, 0x1

    .line 990
    .line 991
    check-cast v9, Ljava/lang/String;

    .line 992
    .line 993
    invoke-static {v9, v5, v8}, Landroidx/webkit/URLUtilCompat;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v10

    .line 997
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 998
    .line 999
    .line 1000
    move-result v11

    .line 1001
    if-nez v11, :cond_4c

    .line 1002
    .line 1003
    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v10

    .line 1007
    if-eqz v10, :cond_4c

    .line 1008
    .line 1009
    invoke-static {v9, v4}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v10

    .line 1013
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v11

    .line 1017
    if-eqz v11, :cond_4b

    .line 1018
    .line 1019
    goto :goto_16

    .line 1020
    :cond_4b
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v10

    .line 1024
    if-nez v10, :cond_4c

    .line 1025
    .line 1026
    goto :goto_16

    .line 1027
    :cond_4c
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    goto :goto_16

    .line 1031
    :cond_4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    if-eqz v1, :cond_4f

    .line 1036
    .line 1037
    :cond_4e
    :goto_17
    move-object v0, v2

    .line 1038
    :cond_4f
    :goto_18
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 1039
    .line 1040
    goto :goto_1b

    .line 1041
    :cond_50
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->q:Z

    .line 1042
    .line 1043
    if-eqz v0, :cond_57

    .line 1044
    .line 1045
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 1046
    .line 1047
    if-eqz v0, :cond_56

    .line 1048
    .line 1049
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v1

    .line 1053
    if-eqz v1, :cond_51

    .line 1054
    .line 1055
    goto :goto_1a

    .line 1056
    :cond_51
    new-instance v1, Ljava/util/ArrayList;

    .line 1057
    .line 1058
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v2

    .line 1065
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1066
    .line 1067
    .line 1068
    move-result v3

    .line 1069
    if-eqz v3, :cond_54

    .line 1070
    .line 1071
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v3

    .line 1075
    check-cast v3, Ljava/lang/String;

    .line 1076
    .line 1077
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v4

    .line 1081
    if-eqz v4, :cond_52

    .line 1082
    .line 1083
    goto :goto_19

    .line 1084
    :cond_52
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->d3(Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v4

    .line 1088
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v5

    .line 1092
    if-nez v5, :cond_53

    .line 1093
    .line 1094
    move-object v3, v4

    .line 1095
    :cond_53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    goto :goto_19

    .line 1099
    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v2

    .line 1103
    if-eqz v2, :cond_55

    .line 1104
    .line 1105
    goto :goto_1a

    .line 1106
    :cond_55
    move-object v0, v1

    .line 1107
    :cond_56
    :goto_1a
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 1108
    .line 1109
    :cond_57
    :goto_1b
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebLoadTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->g:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 33
    .line 34
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebLoadTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebLoadTask;->d:Lcom/mycompany/app/web/WebLoadTask$LoadTask;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 30
    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v4, v0, Lcom/mycompany/app/web/WebLoadTask;->b:Landroid/webkit/WebView;

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->r1(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :goto_1
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->u3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 83
    .line 84
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object v2, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 93
    .line 94
    invoke-interface {v0, v2, v3, v4}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->c(Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->g:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 115
    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    invoke-interface {v0, v1, v1, v1}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->c(Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/data/DataUrl$ImgCntItem;)V

    .line 119
    .line 120
    .line 121
    :cond_8
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->g:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->k:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->l:Ljava/util/List;

    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->m:Ljava/util/ArrayList;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->n:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 136
    .line 137
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/web/WebLoadTask;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebLoadTask;->a:Z

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebLoadTask;->c:Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/mycompany/app/web/WebLoadTask$WebLoadTaskListener;->b()V

    .line 25
    .line 26
    .line 27
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 41
    .line 42
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->Q2(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->i:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->j:Z

    .line 51
    .line 52
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->v3(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->o:I

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x0

    .line 60
    if-nez v0, :cond_d

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_6

    .line 69
    .line 70
    :cond_5
    move v0, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_6
    const-string v4, "m.comic.naver.com/webtoon/detail"

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    move v0, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_7
    const-string v4, "comic.naver.com/webtoon/detail"

    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    move v0, v2

    .line 91
    goto :goto_1

    .line 92
    :cond_8
    const-string v4, "m.webtoon.daum.net/m/webtoon/viewer/"

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_9

    .line 99
    .line 100
    const/4 v0, 0x3

    .line 101
    goto :goto_1

    .line 102
    :cond_9
    const-string v4, "webtoon.daum.net/webtoon/viewer/"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    :goto_1
    iput v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->p:I

    .line 112
    .line 113
    if-nez v0, :cond_c

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 116
    .line 117
    const-string v4, "pinterest.com"

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->q:Z

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 129
    .line 130
    const-string v4, "facebook.com"

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->r:Z

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->h:Ljava/lang/String;

    .line 142
    .line 143
    const-string v4, "instagram.com"

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_d

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->s:Z

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_c
    iput-boolean v3, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->j:Z

    .line 155
    .line 156
    :cond_d
    :goto_2
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->s:Z

    .line 157
    .line 158
    if-nez v0, :cond_f

    .line 159
    .line 160
    iget v0, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->o:I

    .line 161
    .line 162
    if-ne v0, v2, :cond_e

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_e
    move v1, v3

    .line 166
    :cond_f
    :goto_3
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebLoadTask$LoadTask;->t:Z

    .line 167
    .line 168
    return-void
.end method
