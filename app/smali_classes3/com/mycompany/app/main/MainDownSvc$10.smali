.class Lcom/mycompany/app/main/MainDownSvc$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$10;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$10;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$10;->c:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 2
    .line 3
    iget v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$10;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v2, 0xf

    .line 10
    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v9, v1

    .line 14
    goto/16 :goto_7

    .line 15
    .line 16
    :cond_1
    const/16 v2, 0xd

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    if-ne v0, v2, :cond_8

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 24
    .line 25
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1f

    .line 32
    .line 33
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_3
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_4
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_5
    const-string v2, "torrent:"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    goto/16 :goto_6

    .line 84
    .line 85
    :cond_6
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    iput v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    iput-wide v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    iput-wide v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lcom/mycompany/app/torrent/TorrentStream;

    .line 119
    .line 120
    iget-object v4, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v5, Lcom/mycompany/app/main/MainDownSvc$22;

    .line 123
    .line 124
    invoke-direct {v5, v1, v3}, Lcom/mycompany/app/main/MainDownSvc$22;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v4, v5}, Lcom/mycompany/app/torrent/TorrentStream;-><init>(Ljava/lang/String;Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;)V

    .line 128
    .line 129
    .line 130
    iput-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->T:Lcom/mycompany/app/torrent/TorrentStream;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v1, v0, v3}, Lcom/mycompany/app/torrent/TorrentStream;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_8
    const/16 v2, 0xe

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    if-ne v0, v2, :cond_d

    .line 144
    .line 145
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 146
    .line 147
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_1f

    .line 154
    .line 155
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :cond_9
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 166
    .line 167
    if-nez v0, :cond_a

    .line 168
    .line 169
    goto/16 :goto_6

    .line 170
    .line 171
    :cond_a
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 172
    .line 173
    if-nez v0, :cond_b

    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_b
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_c

    .line 190
    .line 191
    iput v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 192
    .line 193
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_c
    throw v7

    .line 198
    :cond_d
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 199
    .line 200
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_1f

    .line 207
    .line 208
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_e

    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :cond_e
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 219
    .line 220
    if-nez v0, :cond_f

    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_f
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 225
    .line 226
    if-nez v0, :cond_10

    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_10
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Lcom/mycompany/app/main/MainDownSvc;->Y(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 234
    .line 235
    .line 236
    iget v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 237
    .line 238
    const/4 v6, 0x0

    .line 239
    if-ne v2, v0, :cond_14

    .line 240
    .line 241
    move v8, v6

    .line 242
    new-instance v6, Lcom/mycompany/app/main/MainDownSvc$ParseItem;

    .line 243
    .line 244
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 248
    .line 249
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 254
    .line 255
    const-string v5, "izle:"

    .line 256
    .line 257
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_11

    .line 262
    .line 263
    iput-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->a:Ljava/lang/String;

    .line 264
    .line 265
    iput-boolean v0, v6, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->b:Z

    .line 266
    .line 267
    goto :goto_0

    .line 268
    :cond_11
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 269
    .line 270
    const-string v5, "_mp4_hd.audio.m3u8"

    .line 271
    .line 272
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_12

    .line 277
    .line 278
    iput-boolean v0, v6, Lcom/mycompany/app/main/MainDownSvc$ParseItem;->c:Z

    .line 279
    .line 280
    :cond_12
    :goto_0
    invoke-static {v4}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-instance v2, Lcom/mycompany/app/down/DownParseM3u8;

    .line 285
    .line 286
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 287
    .line 288
    invoke-direct {v2, v0}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-eqz v7, :cond_13

    .line 298
    .line 299
    move v0, v8

    .line 300
    goto :goto_1

    .line 301
    :cond_13
    const-string v7, "m3fake:"

    .line 302
    .line 303
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    :goto_1
    iput-boolean v0, v2, Lcom/mycompany/app/down/DownParseM3u8;->c:Z

    .line 308
    .line 309
    iget-object v7, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 310
    .line 311
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$14;

    .line 312
    .line 313
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/main/MainDownSvc$14;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$ParseItem;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v4, v7, v5, v0}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_14
    move v8, v6

    .line 321
    const/4 v0, 0x2

    .line 322
    if-ne v2, v0, :cond_16

    .line 323
    .line 324
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->l(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    if-nez v4, :cond_15

    .line 331
    .line 332
    invoke-virtual {v1, v3, v4, v7, v7}, Lcom/mycompany/app/main/MainDownSvc;->H(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/main/MainDownSvc$ParseItem;Ljava/util/List;)V

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :cond_15
    iget-object v0, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseM3u8;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    new-instance v2, Lcom/mycompany/app/down/DownParseM3u8;

    .line 343
    .line 344
    iget-object v0, v1, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 345
    .line 346
    invoke-direct {v2, v0}, Lcom/mycompany/app/down/DownParseM3u8;-><init>(Landroid/content/Context;)V

    .line 347
    .line 348
    .line 349
    iget-object v7, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 350
    .line 351
    iget-object v8, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 352
    .line 353
    iget-object v10, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 354
    .line 355
    new-instance v0, Lcom/mycompany/app/main/MainDownSvc$15;

    .line 356
    .line 357
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/MainDownSvc$15;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/4 v6, 0x0

    .line 361
    move-object v11, v0

    .line 362
    move-object v9, v5

    .line 363
    move-object v5, v2

    .line 364
    invoke-virtual/range {v5 .. v11}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_16
    move-object v9, v1

    .line 369
    if-ne v2, v5, :cond_18

    .line 370
    .line 371
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseReddit;->a(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    if-eqz v0, :cond_17

    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v1}, Lcom/mycompany/app/down/DownParseReddit;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    goto/16 :goto_5

    .line 386
    .line 387
    :cond_17
    move-object v1, v7

    .line 388
    goto/16 :goto_5

    .line 389
    .line 390
    :cond_18
    const/4 v0, 0x6

    .line 391
    if-ne v2, v0, :cond_1a

    .line 392
    .line 393
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 394
    .line 395
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseKakao;->a(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    if-eqz v8, :cond_19

    .line 400
    .line 401
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 402
    .line 403
    iget-object v1, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 404
    .line 405
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 406
    .line 407
    move-object v5, v3

    .line 408
    iget-object v3, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 409
    .line 410
    iget-object v4, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 411
    .line 412
    const/4 v6, 0x0

    .line 413
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseKakao;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    :goto_2
    move-object v3, v5

    .line 418
    :goto_3
    move-object v0, v8

    .line 419
    goto :goto_5

    .line 420
    :cond_19
    move-object v1, v7

    .line 421
    goto :goto_3

    .line 422
    :cond_1a
    if-ne v2, v4, :cond_1b

    .line 423
    .line 424
    iget-object v0, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v0}, Lcom/mycompany/app/down/DownParseDzen;->b(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    if-eqz v8, :cond_19

    .line 431
    .line 432
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 433
    .line 434
    iget-object v1, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 435
    .line 436
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 437
    .line 438
    move-object v5, v3

    .line 439
    iget-object v3, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 440
    .line 441
    iget-object v4, v8, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 442
    .line 443
    const/4 v6, 0x0

    .line 444
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseDzen;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    goto :goto_2

    .line 449
    :cond_1b
    const/16 v0, 0xa

    .line 450
    .line 451
    if-ne v2, v0, :cond_1c

    .line 452
    .line 453
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 454
    .line 455
    iget-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 456
    .line 457
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/down/DownParseVimeo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    if-eqz v0, :cond_17

    .line 464
    .line 465
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->j:Lcom/google/gson/JsonObject;

    .line 466
    .line 467
    iget-object v2, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 468
    .line 469
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 470
    .line 471
    invoke-static {v1, v2, v4, v8}, Lcom/mycompany/app/down/DownParseVimeo;->d(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    goto :goto_5

    .line 476
    :cond_1c
    const/16 v0, 0xb

    .line 477
    .line 478
    if-ne v2, v0, :cond_1d

    .line 479
    .line 480
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 481
    .line 482
    iget-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 483
    .line 484
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 485
    .line 486
    const/4 v4, 0x0

    .line 487
    const/4 v5, 0x0

    .line 488
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/down/DownParseTsfile;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;ZLcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    :goto_4
    move-object v0, v7

    .line 493
    goto :goto_5

    .line 494
    :cond_1d
    const/16 v0, 0xc

    .line 495
    .line 496
    if-ne v2, v0, :cond_1e

    .line 497
    .line 498
    iget-object v0, v9, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 499
    .line 500
    iget-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 501
    .line 502
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 503
    .line 504
    const/4 v4, 0x1

    .line 505
    const/4 v5, 0x0

    .line 506
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/down/DownParseTsfile;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;ZLcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    goto :goto_4

    .line 511
    :cond_1e
    move-object v0, v7

    .line 512
    move-object v1, v0

    .line 513
    :goto_5
    invoke-virtual {v9, v3, v0, v7, v1}, Lcom/mycompany/app/main/MainDownSvc;->H(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/main/MainDownSvc$ParseItem;Ljava/util/List;)V

    .line 514
    .line 515
    .line 516
    :cond_1f
    :goto_6
    return-void

    .line 517
    :goto_7
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 518
    .line 519
    invoke-virtual {v9, v3}, Lcom/mycompany/app/main/MainDownSvc;->G(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 520
    .line 521
    .line 522
    return-void
.end method
