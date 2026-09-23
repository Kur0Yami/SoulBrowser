.class public Lcom/mycompany/app/quick/QuickNewsCustom;
.super Lcom/mycompany/app/quick/QuickNews;
.source "SourceFile"


# instance fields
.field public j:Ljava/util/List;


# direct methods
.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->M(Ljava/lang/String;)Landroid/text/Spanned;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :goto_0
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_2
    const-string v0, "amp;"

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/quick/QuickNews;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/quick/QuickNewsCustom$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickNewsCustom$1;-><init>(Lcom/mycompany/app/quick/QuickNewsCustom;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickNews;->d(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Lorg/jsoup/nodes/Element;Ljava/util/List;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "title"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/mycompany/app/quick/QuickNewsCustom;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v2, "link"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/mycompany/app/quick/QuickNewsCustom;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    :goto_0
    return-object v0

    .line 47
    :cond_2
    const-string v3, "source"

    .line 48
    .line 49
    invoke-virtual {p1, v3}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lcom/mycompany/app/quick/QuickNewsCustom;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    const/4 v6, 0x0

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    invoke-static {v2, v6}, Lcom/mycompany/app/main/MainUtil;->K1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_b

    .line 77
    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    :goto_1
    move-object v5, v0

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    if-nez v1, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_7

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-nez v8, :cond_8

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    sub-int/2addr v7, v5

    .line 107
    add-int/lit8 v7, v7, -0x3

    .line 108
    .line 109
    if-gtz v7, :cond_9

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_9
    const-string v5, " - "

    .line 113
    .line 114
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_a

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_a
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_b

    .line 130
    .line 131
    move-object v1, v5

    .line 132
    :cond_b
    const-string v5, "url"

    .line 133
    .line 134
    invoke-virtual {v3, v5}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/mycompany/app/quick/QuickNewsCustom;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_c

    .line 147
    .line 148
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->e7(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    goto :goto_3

    .line 153
    :cond_c
    move-object v3, v0

    .line 154
    :goto_3
    const-string v5, "pubDate"

    .line 155
    .line 156
    invoke-virtual {p1, v5}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->html()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-nez p1, :cond_d

    .line 165
    .line 166
    :goto_4
    move-object p1, v0

    .line 167
    goto :goto_5

    .line 168
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_e

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_e
    const/4 v7, 0x4

    .line 176
    if-le v5, v7, :cond_f

    .line 177
    .line 178
    const-string v8, " GMT"

    .line 179
    .line 180
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_f

    .line 185
    .line 186
    sub-int/2addr v5, v7

    .line 187
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    goto :goto_5

    .line 192
    :cond_f
    const/4 v7, 0x6

    .line 193
    if-le v5, v7, :cond_10

    .line 194
    .line 195
    const-string v8, " +0000"

    .line 196
    .line 197
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-eqz v8, :cond_10

    .line 202
    .line 203
    sub-int/2addr v5, v7

    .line 204
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :cond_10
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    const-wide/16 v6, 0x0

    .line 213
    .line 214
    if-nez v5, :cond_17

    .line 215
    .line 216
    :try_start_0
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->g:Ljava/text/SimpleDateFormat;

    .line 217
    .line 218
    if-nez v5, :cond_11

    .line 219
    .line 220
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 221
    .line 222
    iget-object v8, p0, Lcom/mycompany/app/quick/QuickNews;->f:Ljava/lang/String;

    .line 223
    .line 224
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 225
    .line 226
    invoke-direct {v5, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 227
    .line 228
    .line 229
    iput-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->g:Ljava/text/SimpleDateFormat;

    .line 230
    .line 231
    :cond_11
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->g:Ljava/text/SimpleDateFormat;

    .line 232
    .line 233
    invoke-virtual {v5, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 238
    .line 239
    .line 240
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_6

    .line 242
    :catch_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 243
    .line 244
    const/16 v8, 0x1a

    .line 245
    .line 246
    if-ge v5, v8, :cond_12

    .line 247
    .line 248
    :catch_1
    move-wide v8, v6

    .line 249
    goto :goto_6

    .line 250
    :cond_12
    :try_start_1
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->h:Lj$/time/format/DateTimeFormatter;

    .line 251
    .line 252
    if-nez v5, :cond_13

    .line 253
    .line 254
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->f:Ljava/lang/String;

    .line 255
    .line 256
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 257
    .line 258
    invoke-static {v5, v8}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    iput-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->h:Lj$/time/format/DateTimeFormatter;

    .line 263
    .line 264
    :cond_13
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->h:Lj$/time/format/DateTimeFormatter;

    .line 265
    .line 266
    invoke-static {p1, v5}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDateTime;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    sget-object v8, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 271
    .line 272
    invoke-virtual {v5, v8}, Lj$/time/LocalDateTime;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v5}, Lj$/time/Instant;->toEpochMilli()J

    .line 281
    .line 282
    .line 283
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    :goto_6
    cmp-long v5, v8, v6

    .line 285
    .line 286
    if-nez v5, :cond_14

    .line 287
    .line 288
    move-object v5, v0

    .line 289
    goto :goto_7

    .line 290
    :cond_14
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->i:Ljava/lang/String;

    .line 291
    .line 292
    const-string v6, "yyyy.MM.dd HH:mm:ss"

    .line 293
    .line 294
    if-nez v5, :cond_15

    .line 295
    .line 296
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    iput-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->i:Ljava/lang/String;

    .line 301
    .line 302
    :cond_15
    iget-object v5, p0, Lcom/mycompany/app/quick/QuickNews;->i:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v8, v9, v5, v6}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    :goto_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-nez v6, :cond_16

    .line 313
    .line 314
    move-object p1, v5

    .line 315
    :cond_16
    move-wide v6, v8

    .line 316
    :cond_17
    if-eqz p2, :cond_1c

    .line 317
    .line 318
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_18

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_19

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    :cond_1a
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_1c

    .line 341
    .line 342
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    check-cast v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 347
    .line 348
    if-nez v5, :cond_1b

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_1b
    iget-object v8, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_1a

    .line 358
    .line 359
    iget-object v0, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 360
    .line 361
    :cond_1c
    :goto_9
    new-instance p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 362
    .line 363
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 364
    .line 365
    .line 366
    const/4 v5, 0x7

    .line 367
    iput v5, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 368
    .line 369
    iput-object v1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v4, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 372
    .line 373
    iput-object v2, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 374
    .line 375
    iput-object v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 376
    .line 377
    iput-object v3, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 378
    .line 379
    iput-object p1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->t:Ljava/lang/String;

    .line 380
    .line 381
    iput-wide v6, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 382
    .line 383
    return-object p2
.end method
