.class public Lnet/lingala/zip4j/core/ZipFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Lnet/lingala/zip4j/model/ZipModel;

.field public d:Z

.field public final e:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    iput p1, p0, Lnet/lingala/zip4j/core/ZipFile;->b:I

    .line 17
    .line 18
    new-instance p1, Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:Ljava/lang/String;

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p1, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 32
    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Lnet/lingala/zip4j/core/ZipFile;->b()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 11
    .line 12
    if-eqz v3, :cond_18

    .line 13
    .line 14
    iget-object v3, v1, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 15
    .line 16
    iget v4, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v4, v5, :cond_17

    .line 20
    .line 21
    iget-object v4, v1, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v1, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 30
    .line 31
    iget-boolean v4, v4, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    .line 38
    const-string v2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    .line 39
    .line 40
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    new-instance v4, Lnet/lingala/zip4j/zip/ZipEngine;

    .line 45
    .line 46
    iget-object v6, v1, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz v6, :cond_16

    .line 52
    .line 53
    iput-object v6, v4, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-lez v6, :cond_15

    .line 60
    .line 61
    iput v5, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 62
    .line 63
    iput v5, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 64
    .line 65
    iget-object v5, v4, Lnet/lingala/zip4j/zip/ZipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-lez v6, :cond_14

    .line 72
    .line 73
    iget-object v6, v5, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    new-instance v6, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    const-wide/32 v10, 0x6054b50

    .line 86
    .line 87
    .line 88
    iput-wide v10, v6, Lnet/lingala/zip4j/model/EndCentralDirRecord;->a:J

    .line 89
    .line 90
    iput v9, v6, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 91
    .line 92
    iput v9, v6, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d:I

    .line 93
    .line 94
    iput-wide v7, v6, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 95
    .line 96
    iput-object v6, v5, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 97
    .line 98
    :cond_2
    :try_start_0
    invoke-static {v2}, Lnet/lingala/zip4j/zip/ZipEngine;->a(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v0, v2, v3}, Lnet/lingala/zip4j/zip/ZipEngine;->c(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, v5, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    new-instance v10, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 111
    .line 112
    new-instance v11, Ljava/io/File;

    .line 113
    .line 114
    iget-object v12, v5, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-wide v12, v5, Lnet/lingala/zip4j/model/ZipModel;->k:J

    .line 120
    .line 121
    invoke-direct {v10, v11, v12, v13}, Lnet/lingala/zip4j/io/SplitOutputStream;-><init>(Ljava/io/File;J)V

    .line 122
    .line 123
    .line 124
    new-instance v11, Lnet/lingala/zip4j/io/ZipOutputStream;

    .line 125
    .line 126
    invoke-direct {v11, v10, v5}, Lnet/lingala/zip4j/io/ZipOutputStream;-><init>(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 127
    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    :try_start_1
    iget-object v4, v5, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    iget-wide v4, v4, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 136
    .line 137
    iget-object v10, v10, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 138
    .line 139
    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :goto_1
    const/4 v6, 0x0

    .line 144
    goto/16 :goto_10

    .line 145
    .line 146
    :goto_2
    move-object v6, v11

    .line 147
    const/4 v10, 0x0

    .line 148
    goto/16 :goto_e

    .line 149
    .line 150
    :goto_3
    move-object v6, v11

    .line 151
    const/4 v10, 0x0

    .line 152
    goto/16 :goto_f

    .line 153
    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 161
    .line 162
    const-string v2, "invalid end of central directory record"

    .line 163
    .line 164
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_4
    :goto_4
    :try_start_2
    iget-object v12, v2, Lnet/lingala/zip4j/model/ZipParameters;->l:Lcom/mycompany/app/compress/CompressUtil$CompressListener;

    .line 169
    .line 170
    const/16 v4, 0x1000

    .line 171
    .line 172
    new-array v4, v4, [B
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    .line 174
    move v5, v9

    .line 175
    const/4 v10, 0x0

    .line 176
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-ge v5, v13, :cond_10

    .line 181
    .line 182
    iget-boolean v13, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 183
    .line 184
    const/4 v14, 0x3

    .line 185
    if-eqz v13, :cond_5

    .line 186
    .line 187
    iput v14, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 188
    .line 189
    iput v9, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 190
    .line 191
    goto/16 :goto_d

    .line 192
    .line 193
    :catchall_1
    move-exception v0

    .line 194
    :goto_6
    move-object v6, v10

    .line 195
    goto/16 :goto_10

    .line 196
    .line 197
    :catch_2
    move-exception v0

    .line 198
    :goto_7
    move-object v6, v11

    .line 199
    goto/16 :goto_e

    .line 200
    .line 201
    :catch_3
    move-exception v0

    .line 202
    :goto_8
    move-object v6, v11

    .line 203
    goto/16 :goto_f

    .line 204
    .line 205
    :cond_5
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    check-cast v13, Lnet/lingala/zip4j/model/ZipParameters;

    .line 210
    .line 211
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    check-cast v15, Ljava/io/File;

    .line 216
    .line 217
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    iput-object v15, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    check-cast v15, Ljava/io/File;

    .line 228
    .line 229
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    if-nez v15, :cond_8

    .line 234
    .line 235
    iget-boolean v15, v13, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 236
    .line 237
    if-eqz v15, :cond_6

    .line 238
    .line 239
    iget v15, v13, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 240
    .line 241
    if-nez v15, :cond_6

    .line 242
    .line 243
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v15

    .line 247
    check-cast v15, Ljava/io/File;

    .line 248
    .line 249
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    move-wide/from16 v18, v7

    .line 254
    .line 255
    invoke-static {v15, v3}, Lnet/lingala/zip4j/util/CRCUtil;->a(Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v6

    .line 259
    long-to-int v6, v6

    .line 260
    iput v6, v13, Lnet/lingala/zip4j/model/ZipParameters;->k:I

    .line 261
    .line 262
    iget-boolean v6, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 263
    .line 264
    if-eqz v6, :cond_7

    .line 265
    .line 266
    iput v14, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 267
    .line 268
    iput v9, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 269
    .line 270
    goto/16 :goto_d

    .line 271
    .line 272
    :cond_6
    move-wide/from16 v18, v7

    .line 273
    .line 274
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Ljava/io/File;

    .line 279
    .line 280
    invoke-static {v6}, Lnet/lingala/zip4j/util/Zip4jUtil;->i(Ljava/io/File;)J

    .line 281
    .line 282
    .line 283
    move-result-wide v6

    .line 284
    cmp-long v6, v6, v18

    .line 285
    .line 286
    if-nez v6, :cond_9

    .line 287
    .line 288
    iput v9, v13, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 289
    .line 290
    goto :goto_9

    .line 291
    :cond_8
    move-wide/from16 v18, v7

    .line 292
    .line 293
    :cond_9
    :goto_9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    check-cast v6, Ljava/io/File;

    .line 298
    .line 299
    invoke-virtual {v11, v6, v13}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->k(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Ljava/io/File;

    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-eqz v6, :cond_a

    .line 313
    .line 314
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->f()V

    .line 315
    .line 316
    .line 317
    goto :goto_c

    .line 318
    :cond_a
    iget-object v6, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v12, :cond_b

    .line 321
    .line 322
    invoke-interface {v12, v6}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->c(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    check-cast v7, Ljava/io/File;

    .line 330
    .line 331
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->a1(Ljava/lang/String;)Ljava/io/InputStream;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    move-wide/from16 v7, v18

    .line 340
    .line 341
    iput-wide v7, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 342
    .line 343
    :goto_a
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    const/4 v8, -0x1

    .line 348
    if-eq v7, v8, :cond_e

    .line 349
    .line 350
    iget-boolean v8, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->e:Z

    .line 351
    .line 352
    if-eqz v8, :cond_c

    .line 353
    .line 354
    iput v14, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I

    .line 355
    .line 356
    iput v9, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_c
    invoke-virtual {v11, v4, v9, v7}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    .line 360
    .line 361
    .line 362
    int-to-long v7, v7

    .line 363
    iget-wide v14, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 364
    .line 365
    add-long/2addr v14, v7

    .line 366
    iput-wide v14, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 367
    .line 368
    if-eqz v12, :cond_d

    .line 369
    .line 370
    move-wide v15, v14

    .line 371
    const/4 v7, 0x3

    .line 372
    const-wide/16 v13, 0x0

    .line 373
    .line 374
    move-object/from16 v17, v6

    .line 375
    .line 376
    invoke-interface/range {v12 .. v17}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->b(JJLjava/lang/String;)V

    .line 377
    .line 378
    .line 379
    move v14, v7

    .line 380
    move-object/from16 v6, v17

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_d
    const/4 v14, 0x3

    .line 384
    goto :goto_a

    .line 385
    :cond_e
    :goto_b
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->f()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 389
    .line 390
    .line 391
    if-eqz v12, :cond_f

    .line 392
    .line 393
    const/4 v6, 0x1

    .line 394
    const/4 v7, 0x0

    .line 395
    invoke-interface {v12, v7, v6}, Lcom/mycompany/app/compress/CompressUtil$CompressListener;->a(Ljava/lang/String;Z)V

    .line 396
    .line 397
    .line 398
    :cond_f
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 399
    .line 400
    const-wide/16 v7, 0x0

    .line 401
    .line 402
    goto/16 :goto_5

    .line 403
    .line 404
    :cond_10
    :goto_d
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->j()V

    .line 405
    .line 406
    .line 407
    iput v9, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->a:I

    .line 408
    .line 409
    const/4 v7, 0x0

    .line 410
    iput-object v7, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->c:Ljava/lang/String;

    .line 411
    .line 412
    const-wide/16 v7, 0x0

    .line 413
    .line 414
    iput-wide v7, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->b:J

    .line 415
    .line 416
    iput v9, v3, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I
    :try_end_3
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 417
    .line 418
    if-eqz v10, :cond_11

    .line 419
    .line 420
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 421
    .line 422
    .line 423
    :catch_4
    :cond_11
    :try_start_5
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 424
    .line 425
    .line 426
    :catch_5
    return-void

    .line 427
    :catchall_2
    move-exception v0

    .line 428
    const/4 v7, 0x0

    .line 429
    move-object v6, v7

    .line 430
    goto :goto_10

    .line 431
    :catch_6
    move-exception v0

    .line 432
    const/4 v7, 0x0

    .line 433
    move-object v10, v7

    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :catch_7
    move-exception v0

    .line 437
    const/4 v7, 0x0

    .line 438
    move-object v10, v7

    .line 439
    goto/16 :goto_8

    .line 440
    .line 441
    :catchall_3
    move-exception v0

    .line 442
    const/4 v7, 0x0

    .line 443
    move-object v6, v7

    .line 444
    move-object v11, v6

    .line 445
    goto :goto_10

    .line 446
    :catch_8
    move-exception v0

    .line 447
    const/4 v7, 0x0

    .line 448
    move-object v6, v7

    .line 449
    move-object v10, v6

    .line 450
    goto :goto_e

    .line 451
    :catch_9
    move-exception v0

    .line 452
    const/4 v7, 0x0

    .line 453
    move-object v6, v7

    .line 454
    move-object v10, v6

    .line 455
    goto :goto_f

    .line 456
    :goto_e
    :try_start_6
    invoke-virtual {v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a()V

    .line 457
    .line 458
    .line 459
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 460
    .line 461
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 462
    .line 463
    .line 464
    throw v2

    .line 465
    :catchall_4
    move-exception v0

    .line 466
    move-object v11, v6

    .line 467
    goto/16 :goto_6

    .line 468
    .line 469
    :goto_f
    invoke-virtual {v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a()V

    .line 470
    .line 471
    .line 472
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 473
    :goto_10
    if-eqz v6, :cond_12

    .line 474
    .line 475
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 476
    .line 477
    .line 478
    :catch_a
    :cond_12
    if-eqz v11, :cond_13

    .line 479
    .line 480
    :try_start_8
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/CipherOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 481
    .line 482
    .line 483
    :catch_b
    :cond_13
    throw v0

    .line 484
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 485
    .line 486
    const-string v2, "no files to add"

    .line 487
    .line 488
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    throw v0

    .line 492
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 493
    .line 494
    const-string v2, "no files to add"

    .line 495
    .line 496
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    throw v0

    .line 500
    :cond_16
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 501
    .line 502
    const-string v2, "zip model is null in ZipEngine constructor"

    .line 503
    .line 504
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    throw v0

    .line 508
    :cond_17
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 509
    .line 510
    const-string v2, "invalid operation - Zip4j is in busy state"

    .line 511
    .line 512
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    throw v0

    .line 516
    :cond_18
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 517
    .line 518
    const-string v2, "internal error: zip model is null"

    .line 519
    .line 520
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->g()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/model/ZipModel;

    .line 18
    .line 19
    invoke-direct {v1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 23
    .line 24
    iput-object v0, v1, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->f:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, v1, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->g()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->g(Lnet/lingala/zip4j/model/ZipModel;Ljava/lang/String;)Lnet/lingala/zip4j/model/FileHeader;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    const-string v0, "input file name is emtpy or null, cannot get FileHeader"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public final e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;
    .locals 13

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    new-instance v1, Lnet/lingala/zip4j/unzip/UnzipEngine;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput v2, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->c:I

    .line 17
    .line 18
    iput-object v0, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->a:Lnet/lingala/zip4j/model/ZipModel;

    .line 19
    .line 20
    iput-object p1, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->b:Lnet/lingala/zip4j/model/FileHeader;

    .line 21
    .line 22
    new-instance v0, Ljava/util/zip/CRC32;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->f:Ljava/util/zip/CRC32;

    .line 28
    .line 29
    const-string v0, "AESExtraDataRecord does not exist for AES encrypted file: "

    .line 30
    .line 31
    const-string v2, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->d()Ljava/io/RandomAccessFile;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "local header and file header do not match"

    .line 39
    .line 40
    invoke-virtual {v1}, Lnet/lingala/zip4j/unzip/UnzipEngine;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_7

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/unzip/UnzipEngine;->e(Ljava/io/RandomAccessFile;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->d:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 50
    .line 51
    iget-wide v5, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 52
    .line 53
    iget-wide v7, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->l:J

    .line 54
    .line 55
    iget-boolean v9, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    .line 56
    .line 57
    const/16 v10, 0x63

    .line 58
    .line 59
    if-eqz v9, :cond_2

    .line 60
    .line 61
    iget v4, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 62
    .line 63
    if-ne v4, v10, :cond_1

    .line 64
    .line 65
    iget-object v4, v1, Lnet/lingala/zip4j/unzip/UnzipEngine;->e:Lnet/lingala/zip4j/crypto/IDecrypter;

    .line 66
    .line 67
    instance-of v9, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 68
    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    move-object v2, v4

    .line 72
    check-cast v2, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 73
    .line 74
    iget v2, v2, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0xc

    .line 77
    .line 78
    int-to-long v11, v2

    .line 79
    sub-long/2addr v5, v11

    .line 80
    check-cast v4, Lnet/lingala/zip4j/crypto/AESDecrypter;

    .line 81
    .line 82
    iget v2, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->e:I

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x2

    .line 85
    .line 86
    int-to-long v11, v2

    .line 87
    :goto_0
    add-long/2addr v7, v11

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :catch_1
    move-exception p1

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p1, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_1
    if-nez v4, :cond_2

    .line 115
    .line 116
    const-wide/16 v11, 0xc

    .line 117
    .line 118
    sub-long/2addr v5, v11

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    iget v2, p1, Lnet/lingala/zip4j/model/FileHeader;->e:I

    .line 121
    .line 122
    iget v4, p1, Lnet/lingala/zip4j/model/FileHeader;->s:I

    .line 123
    .line 124
    if-ne v4, v10, :cond_4

    .line 125
    .line 126
    iget-object v2, p1, Lnet/lingala/zip4j/model/FileHeader;->v:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    iget v2, v2, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 134
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p1, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v1, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v1

    .line 153
    :cond_4
    :goto_2
    invoke-virtual {v3, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    const/16 p1, 0x8

    .line 159
    .line 160
    if-ne v2, p1, :cond_5

    .line 161
    .line 162
    new-instance p1, Lnet/lingala/zip4j/io/ZipInputStream;

    .line 163
    .line 164
    new-instance v0, Lnet/lingala/zip4j/io/InflaterInputStream;

    .line 165
    .line 166
    invoke-direct {v0, v3, v5, v6, v1}, Lnet/lingala/zip4j/io/InflaterInputStream;-><init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/UnzipEngine;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/PartInputStream;)V

    .line 170
    .line 171
    .line 172
    return-object p1

    .line 173
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 174
    .line 175
    const-string v0, "compression type not supported"

    .line 176
    .line 177
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/io/ZipInputStream;

    .line 182
    .line 183
    new-instance v0, Lnet/lingala/zip4j/io/PartInputStream;

    .line 184
    .line 185
    invoke-direct {v0, v3, v5, v6, v1}, Lnet/lingala/zip4j/io/PartInputStream;-><init>(Ljava/io/RandomAccessFile;JLnet/lingala/zip4j/unzip/UnzipEngine;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/io/ZipInputStream;-><init>(Lnet/lingala/zip4j/io/PartInputStream;)V

    .line 189
    .line 190
    .line 191
    return-object p1

    .line 192
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 193
    .line 194
    invoke-direct {p1, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_3
    if-eqz v3, :cond_8

    .line 199
    .line 200
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 201
    .line 202
    .line 203
    :catch_2
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 204
    .line 205
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :goto_4
    if-eqz v3, :cond_9

    .line 210
    .line 211
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 212
    .line 213
    .line 214
    :catch_3
    :cond_9
    throw p1

    .line 215
    :cond_a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 216
    .line 217
    const-string v0, "zip model is null, cannot get inputstream"

    .line 218
    .line 219
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 224
    .line 225
    const-string v0, "FileHeader is null, cannot get InputStream"

    .line 226
    .line 227
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p1
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->g()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 14
    .line 15
    const-string v1, "Zip Model is null"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 22
    .line 23
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, v0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-boolean v2, v2, Lnet/lingala/zip4j/model/FileHeader;->r:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lnet/lingala/zip4j/core/ZipFile;->d:Z

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lnet/lingala/zip4j/core/ZipFile;->d:Z

    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 61
    .line 62
    const-string v1, "invalid zip file"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget v1, p0, Lnet/lingala/zip4j/core/ZipFile;->b:I

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 22
    .line 23
    new-instance v3, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "r"

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Lnet/lingala/zip4j/core/HeaderReader;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lnet/lingala/zip4j/core/ZipFile;->f:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/core/HeaderReader;->c(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iput-object v0, v1, Lnet/lingala/zip4j/model/ZipModel;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object v1, v2

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object v1, v2

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    .line 63
    .line 64
    :catch_1
    return-void

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :catch_2
    move-exception v0

    .line 68
    :goto_1
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :goto_2
    if-eqz v1, :cond_1

    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 77
    .line 78
    .line 79
    :catch_3
    :cond_1
    throw v0

    .line 80
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 81
    .line 82
    const-string v1, "Invalid mode"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 89
    .line 90
    const-string v1, "no read access for the input zip file"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 97
    .line 98
    const-string v1, "zip file does not exist"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "a"

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lnet/lingala/zip4j/core/ZipFile;->f:Ljava/lang/String;

    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :catch_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 35
    .line 36
    const-string v1, "unsupported charset: "

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 47
    .line 48
    const-string v0, "charset is null or empty, cannot check if it is supported"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 55
    .line 56
    const-string v0, "null or empty charset name"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/lingala/zip4j/core/ZipFile;->g()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 24
    .line 25
    const-string v0, "Zip Model is null"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 32
    .line 33
    iget-object v0, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, v0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 43
    .line 44
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 45
    .line 46
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ge v0, v1, :cond_4

    .line 53
    .line 54
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 55
    .line 56
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 57
    .line 58
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 67
    .line 68
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 69
    .line 70
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 77
    .line 78
    iget-boolean v1, v1, Lnet/lingala/zip4j/model/FileHeader;->r:Z

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    iget-object v1, p0, Lnet/lingala/zip4j/core/ZipFile;->c:Lnet/lingala/zip4j/model/ZipModel;

    .line 83
    .line 84
    iget-object v1, v1, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 85
    .line 86
    iget-object v1, v1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 93
    .line 94
    iput-object p1, v1, Lnet/lingala/zip4j/model/FileHeader;->t:[C

    .line 95
    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 100
    .line 101
    const-string v0, "invalid zip file"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_4
    return-void
.end method
