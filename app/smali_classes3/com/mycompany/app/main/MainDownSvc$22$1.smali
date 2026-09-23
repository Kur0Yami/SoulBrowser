.class Lcom/mycompany/app/main/MainDownSvc$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/torrent/Torrent;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$22;Lcom/mycompany/app/torrent/Torrent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$22$1;->f:Lcom/mycompany/app/main/MainDownSvc$22;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$22$1;->c:Lcom/mycompany/app/torrent/Torrent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc$22$1;->f:Lcom/mycompany/app/main/MainDownSvc$22;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$22;->b:Lcom/mycompany/app/main/MainDownSvc;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc$22;->a:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc$22$1;->c:Lcom/mycompany/app/torrent/Torrent;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/mycompany/app/torrent/Torrent;->a:Lcom/frostwire/jlibtorrent/TorrentHandle;

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object v10, v3, Lcom/frostwire/jlibtorrent/TorrentHandle;->a:Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 21
    .line 22
    iget-wide v8, v10, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 23
    .line 24
    invoke-static {v8, v9, v10}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_is_valid(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v10}, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a()Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    new-instance v8, Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 38
    .line 39
    invoke-direct {v8, v3}, Lcom/frostwire/jlibtorrent/TorrentInfo;-><init>(Lcom/frostwire/jlibtorrent/swig/torrent_info;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .line 44
    :goto_1
    invoke-virtual {v8}, Lcom/frostwire/jlibtorrent/TorrentInfo;->b()Lcom/frostwire/jlibtorrent/FileStorage;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v3, v3, Lcom/frostwire/jlibtorrent/FileStorage;->a:Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 49
    .line 50
    iget-wide v8, v3, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 51
    .line 52
    invoke-static {v8, v9, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_num_files(JLcom/frostwire/jlibtorrent/swig/file_storage;)I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    :goto_2
    if-ge v15, v14, :cond_7

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v13, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 67
    .line 68
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v9, Lcom/frostwire/jlibtorrent/swig/torrent_status;

    .line 72
    .line 73
    move-object v11, v8

    .line 74
    move-object v12, v9

    .line 75
    iget-wide v8, v10, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 76
    .line 77
    if-nez v13, :cond_3

    .line 78
    .line 79
    move-object v7, v11

    .line 80
    move-object v4, v12

    .line 81
    move-wide v11, v5

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-wide/from16 v18, v8

    .line 84
    .line 85
    iget-wide v7, v13, Lcom/frostwire/jlibtorrent/swig/status_flags_t;->a:J

    .line 86
    .line 87
    move-object v4, v12

    .line 88
    move-wide/from16 v33, v7

    .line 89
    .line 90
    move-object v7, v11

    .line 91
    move-wide/from16 v11, v33

    .line 92
    .line 93
    move-wide/from16 v8, v18

    .line 94
    .line 95
    :goto_3
    invoke-static/range {v8 .. v13}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_status__SWIG_0(JLcom/frostwire/jlibtorrent/swig/torrent_handle;JLcom/frostwire/jlibtorrent/swig/status_flags_t;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    invoke-direct {v4, v8, v9}, Lcom/frostwire/jlibtorrent/swig/torrent_status;-><init>(J)V

    .line 100
    .line 101
    .line 102
    iget-wide v8, v4, Lcom/frostwire/jlibtorrent/swig/torrent_status;->a:J

    .line 103
    .line 104
    invoke-static {v8, v9, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_status_save_path_get(JLcom/frostwire/jlibtorrent/swig/torrent_status;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, "/"

    .line 112
    .line 113
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-wide v8, v3, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 117
    .line 118
    invoke-static {v8, v9, v3, v15}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_file_path__SWIG_1(JLcom/frostwire/jlibtorrent/swig/file_storage;I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    new-instance v4, Ljava/io/File;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    cmp-long v7, v7, v5

    .line 139
    .line 140
    if-nez v7, :cond_4

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    if-nez v16, :cond_6

    .line 155
    .line 156
    new-instance v16, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    :cond_6
    move-object/from16 v7, v16

    .line 162
    .line 163
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-object/from16 v16, v7

    .line 167
    .line 168
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    move-object/from16 v4, v16

    .line 172
    .line 173
    :goto_5
    const/4 v3, 0x1

    .line 174
    if-eqz v4, :cond_13

    .line 175
    .line 176
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_13

    .line 181
    .line 182
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-le v7, v3, :cond_8

    .line 187
    .line 188
    move v7, v3

    .line 189
    goto :goto_6

    .line 190
    :cond_8
    const/4 v7, 0x0

    .line 191
    :goto_6
    if-eqz v7, :cond_11

    .line 192
    .line 193
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v8}, Lcom/mycompany/app/pref/PrefPath;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    iget-object v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 200
    .line 201
    if-eqz v9, :cond_9

    .line 202
    .line 203
    iget-object v9, v9, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    goto :goto_7

    .line 210
    :cond_9
    const/4 v9, 0x0

    .line 211
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-nez v10, :cond_c

    .line 216
    .line 217
    invoke-static {v8}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_b

    .line 222
    .line 223
    iget-object v10, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 224
    .line 225
    invoke-static {v10, v8, v9}, Lcom/mycompany/app/main/MainUriDoc;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_a

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_a
    iget-object v8, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 237
    .line 238
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    goto :goto_9

    .line 243
    :cond_b
    move-object/from16 v33, v9

    .line 244
    .line 245
    move-object v9, v8

    .line 246
    move-object/from16 v8, v33

    .line 247
    .line 248
    goto :goto_9

    .line 249
    :cond_c
    :goto_8
    move-object v9, v8

    .line 250
    const/4 v8, 0x0

    .line 251
    :goto_9
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->J:Z

    .line 252
    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    .line 255
    .line 256
    move-result-wide v10

    .line 257
    iput-wide v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->r:J

    .line 258
    .line 259
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 260
    .line 261
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->s:J

    .line 262
    .line 263
    iput-wide v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 264
    .line 265
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    const/4 v11, 0x0

    .line 270
    const/4 v12, 0x0

    .line 271
    :goto_a
    if-ge v12, v10, :cond_14

    .line 272
    .line 273
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    add-int/lit8 v12, v12, 0x1

    .line 278
    .line 279
    check-cast v13, Ljava/io/File;

    .line 280
    .line 281
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-eqz v15, :cond_d

    .line 290
    .line 291
    goto :goto_b

    .line 292
    :cond_d
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 293
    .line 294
    .line 295
    move-result-wide v24

    .line 296
    cmp-long v15, v24, v5

    .line 297
    .line 298
    if-nez v15, :cond_e

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_e
    iget-object v15, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 302
    .line 303
    invoke-static {v15, v9, v8, v14}, Lcom/mycompany/app/main/MainUri;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    if-nez v15, :cond_f

    .line 308
    .line 309
    goto :goto_b

    .line 310
    :cond_f
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v13

    .line 314
    iget-object v5, v15, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 315
    .line 316
    const/4 v6, 0x0

    .line 317
    invoke-virtual {v2, v1, v13, v5, v6}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-nez v5, :cond_10

    .line 322
    .line 323
    :goto_b
    const-wide/16 v5, 0x0

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_10
    invoke-static {v14}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v20

    .line 330
    iget-object v5, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 331
    .line 332
    iget-object v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 335
    .line 336
    iget-boolean v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 337
    .line 338
    sget-wide v30, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 339
    .line 340
    const/16 v32, 0x0

    .line 341
    .line 342
    const/16 v19, 0x3

    .line 343
    .line 344
    const/16 v28, 0x0

    .line 345
    .line 346
    move-wide/from16 v26, v24

    .line 347
    .line 348
    move-object/from16 v18, v5

    .line 349
    .line 350
    move-object/from16 v21, v6

    .line 351
    .line 352
    move-object/from16 v22, v11

    .line 353
    .line 354
    move/from16 v29, v13

    .line 355
    .line 356
    move-object/from16 v23, v15

    .line 357
    .line 358
    invoke-static/range {v18 .. v32}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 359
    .line 360
    .line 361
    move v11, v3

    .line 362
    goto :goto_b

    .line 363
    :cond_11
    const/4 v6, 0x0

    .line 364
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Ljava/io/File;

    .line 369
    .line 370
    if-eqz v4, :cond_12

    .line 371
    .line 372
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 377
    .line 378
    sget v6, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 379
    .line 380
    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/mycompany/app/main/MainDownSvc;->C(Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 381
    .line 382
    .line 383
    move-result v11

    .line 384
    goto :goto_d

    .line 385
    :cond_12
    :goto_c
    const/4 v11, 0x0

    .line 386
    goto :goto_d

    .line 387
    :cond_13
    const/4 v7, 0x0

    .line 388
    goto :goto_c

    .line 389
    :cond_14
    :goto_d
    const/4 v4, 0x3

    .line 390
    if-eqz v11, :cond_15

    .line 391
    .line 392
    iput v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 393
    .line 394
    goto :goto_e

    .line 395
    :cond_15
    const/4 v5, 0x4

    .line 396
    iput v5, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 397
    .line 398
    :goto_e
    if-eqz v7, :cond_19

    .line 399
    .line 400
    sget v5, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 401
    .line 402
    const/4 v6, 0x0

    .line 403
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->L:Z

    .line 404
    .line 405
    iget-object v7, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 406
    .line 407
    if-nez v7, :cond_16

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_16
    iget-object v5, v2, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 411
    .line 412
    if-nez v5, :cond_17

    .line 413
    .line 414
    goto :goto_10

    .line 415
    :cond_17
    iget v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 416
    .line 417
    if-ne v8, v4, :cond_18

    .line 418
    .line 419
    iget-object v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 420
    .line 421
    invoke-static {v7, v4}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 422
    .line 423
    .line 424
    iget-object v10, v2, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 425
    .line 426
    iget-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->b:J

    .line 427
    .line 428
    iget-object v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 429
    .line 430
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v12

    .line 434
    const/4 v13, 0x1

    .line 435
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/book/DbBookDown;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 436
    .line 437
    .line 438
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->P:Z

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_18
    iget v9, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->e:I

    .line 442
    .line 443
    iget-object v10, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 444
    .line 445
    iget-object v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 446
    .line 447
    iget-object v12, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->n:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 448
    .line 449
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 450
    .line 451
    iget-wide v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 452
    .line 453
    iget-boolean v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->a:Z

    .line 454
    .line 455
    sget-wide v19, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 456
    .line 457
    const/16 v21, 0x0

    .line 458
    .line 459
    const/16 v17, 0x0

    .line 460
    .line 461
    move-wide v15, v3

    .line 462
    move/from16 v18, v6

    .line 463
    .line 464
    invoke-static/range {v7 .. v21}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 465
    .line 466
    .line 467
    :goto_f
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$24;

    .line 468
    .line 469
    invoke-direct {v3, v2, v1}, Lcom/mycompany/app/main/MainDownSvc$24;-><init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 470
    .line 471
    .line 472
    const-wide/16 v6, 0xc8

    .line 473
    .line 474
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    .line 476
    .line 477
    goto :goto_10

    .line 478
    :cond_19
    sget v3, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 479
    .line 480
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MainDownSvc;->D(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 481
    .line 482
    .line 483
    :goto_10
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 484
    .line 485
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    return-void
.end method
