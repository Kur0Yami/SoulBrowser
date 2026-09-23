.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# instance fields
.field public final g:[B

.field public final h:I

.field public final i:I

.field public j:Z

.field public k:J

.field public l:J

.field public final m:Ljava/io/InputStream;

.field public n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field public final o:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public p:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->g:[B

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->p:Ljava/util/HashMap;

    .line 16
    .line 17
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j:Z

    .line 21
    .line 22
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->o:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 27
    .line 28
    const/16 p1, 0x200

    .line 29
    .line 30
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->h:I

    .line 31
    .line 32
    const/16 p1, 0x2800

    .line 33
    .line 34
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 10
    .line 11
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 12
    .line 13
    sub-long v4, v0, v2

    .line 14
    .line 15
    const-wide/32 v6, 0x7fffffff

    .line 16
    .line 17
    .line 18
    cmp-long v4, v4, v6

    .line 19
    .line 20
    if-lez v4, :cond_1

    .line 21
    .line 22
    const v0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    sub-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    return v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_10

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "path"

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v3, "linkpath"

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "gid"

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const-string v3, "gname"

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const-string v3, "uid"

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    const-string v3, "uname"

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    const-string v3, "size"

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_8

    .line 130
    .line 131
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    const-wide/16 v5, 0x0

    .line 138
    .line 139
    cmp-long v1, v3, v5

    .line 140
    .line 141
    if-ltz v1, :cond_7

    .line 142
    .line 143
    iput-wide v3, v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    const-string v0, "Size is out of range: "

    .line 153
    .line 154
    invoke-static {v3, v4, v0}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_8
    const-string v3, "mtime"

    .line 163
    .line 164
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_9

    .line 169
    .line 170
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 171
    .line 172
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_9
    const-string v3, "SCHILY.devminor"

    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_b

    .line 187
    .line 188
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    if-ltz v1, :cond_a

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    const-string v0, "Minor device number is out of range: "

    .line 204
    .line 205
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_b
    const-string v3, "SCHILY.devmajor"

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_d

    .line 220
    .line 221
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 222
    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    if-ltz v1, :cond_c

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    const-string v0, "Major device number is out of range: "

    .line 237
    .line 238
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p1

    .line 246
    :cond_d
    const-string v3, "GNU.sparse.size"

    .line 247
    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    const-string v5, "GNU.sparse.name"

    .line 253
    .line 254
    if-eqz v4, :cond_e

    .line 255
    .line 256
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_0

    .line 275
    .line 276
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Ljava/lang/String;

    .line 281
    .line 282
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_e
    const-string v3, "GNU.sparse.realsize"

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_f

    .line 293
    .line 294
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Ljava/lang/String;

    .line 304
    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Ljava/lang/String;

    .line 313
    .line 314
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_f
    const-string v3, "SCHILY.filetype"

    .line 319
    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_0

    .line 325
    .line 326
    const-string v2, "sparse"

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-eqz v1, :cond_0

    .line 333
    .line 334
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    const-string v1, "SCHILY.realsize"

    .line 340
    .line 341
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_0

    .line 346
    .line 347
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 354
    .line 355
    .line 356
    goto/16 :goto_0

    .line 357
    .line 358
    :cond_10
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->g:[B

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    array-length v1, v0

    .line 33
    :goto_1
    if-lez v1, :cond_2

    .line 34
    .line 35
    add-int/lit8 v2, v1, -0x1

    .line 36
    .line 37
    aget-byte v2, v0, v2

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    array-length v2, v0

    .line 45
    if-eq v1, v2, :cond_3

    .line 46
    .line 47
    new-array v2, v1, [B

    .line 48
    .line 49
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_3
    return-object v0
.end method

.method public final e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->o:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-wide v5, 0x7fffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {p0, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->b(Ljava/io/InputStream;J)J

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 30
    .line 31
    cmp-long v1, v5, v3

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->h:I

    .line 36
    .line 37
    int-to-long v7, v1

    .line 38
    rem-long v9, v5, v7

    .line 39
    .line 40
    cmp-long v1, v9, v3

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    div-long v9, v5, v7

    .line 45
    .line 46
    const-wide/16 v11, 0x1

    .line 47
    .line 48
    add-long/2addr v9, v11

    .line 49
    mul-long/2addr v9, v7

    .line 50
    sub-long/2addr v9, v5

    .line 51
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 52
    .line 53
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/utils/IOUtils;->b(Ljava/io/InputStream;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->f()[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_2
    :try_start_0
    new-instance v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 70
    .line 71
    invoke-direct {v5, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 77
    .line 78
    iget-wide v3, v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 79
    .line 80
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 81
    .line 82
    iget-byte v1, v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 83
    .line 84
    const/16 v3, 0x4b

    .line 85
    .line 86
    if-ne v1, v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->d()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->a([B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 104
    .line 105
    iget-byte v1, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 106
    .line 107
    const/16 v3, 0x4c

    .line 108
    .line 109
    if-ne v1, v3, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->d()[B

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    :goto_0
    return-object v2

    .line 118
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 119
    .line 120
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->a([B)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->a(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 128
    .line 129
    iget-byte v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 130
    .line 131
    const/16 v1, 0x67

    .line 132
    .line 133
    if-ne v0, v1, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)Ljava/util/HashMap;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->p:Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 145
    .line 146
    iget-byte v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 147
    .line 148
    const/16 v1, 0x78

    .line 149
    .line 150
    if-eq v0, v1, :cond_9

    .line 151
    .line 152
    const/16 v1, 0x58

    .line 153
    .line 154
    if-ne v0, v1, :cond_8

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->p:Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_a

    .line 164
    .line 165
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->p:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->b(Ljava/util/HashMap;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    :goto_1
    invoke-virtual {p0, p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)Ljava/util/HashMap;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->e()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->b(Ljava/util/HashMap;)V

    .line 179
    .line 180
    .line 181
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 182
    .line 183
    iget-byte v1, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 184
    .line 185
    const/16 v3, 0x53

    .line 186
    .line 187
    if-ne v1, v3, :cond_d

    .line 188
    .line 189
    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->h:Z

    .line 190
    .line 191
    if-eqz v0, :cond_d

    .line 192
    .line 193
    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->f()[B

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-nez v0, :cond_c

    .line 198
    .line 199
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_c
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    .line 203
    .line 204
    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 205
    .line 206
    .line 207
    iget-boolean v0, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->c:Z

    .line 208
    .line 209
    if-nez v0, :cond_b

    .line 210
    .line 211
    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 212
    .line 213
    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 214
    .line 215
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 216
    .line 217
    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/io/IOException;

    .line 220
    .line 221
    const-string v2, "Error detected parsing the header"

    .line 222
    .line 223
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    throw v1
.end method

.method public final f()[B
    .locals 10

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->h:I

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v1, v3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->a(Ljava/io/InputStream;[BII)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    int-to-long v5, v4

    .line 13
    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eq v4, v0, :cond_0

    .line 18
    .line 19
    move-object v1, v5

    .line 20
    :cond_0
    const/4 v4, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move v6, v3

    .line 24
    :goto_0
    if-ge v6, v0, :cond_2

    .line 25
    .line 26
    aget-byte v7, v1, v6

    .line 27
    .line 28
    if-eqz v7, :cond_1

    .line 29
    .line 30
    move v6, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v6, v4

    .line 36
    :goto_1
    iput-boolean v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j:Z

    .line 37
    .line 38
    if-eqz v6, :cond_a

    .line 39
    .line 40
    if-eqz v1, :cond_a

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :try_start_0
    new-array v6, v0, [B

    .line 52
    .line 53
    invoke-static {v2, v6, v3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->a(Ljava/io/InputStream;[BII)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    int-to-long v8, v7

    .line 58
    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 59
    .line 60
    .line 61
    if-eq v7, v0, :cond_4

    .line 62
    .line 63
    move-object v6, v5

    .line 64
    :cond_4
    if-eqz v6, :cond_6

    .line 65
    .line 66
    move v7, v3

    .line 67
    :goto_2
    if-ge v7, v0, :cond_6

    .line 68
    .line 69
    aget-byte v8, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v3

    .line 78
    goto :goto_4

    .line 79
    :cond_6
    move v3, v4

    .line 80
    :goto_3
    if-nez v3, :cond_7

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    int-to-long v0, v0

    .line 85
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->f:J

    .line 86
    .line 87
    sub-long/2addr v3, v0

    .line 88
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->f:J

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 91
    .line 92
    .line 93
    :cond_7
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->f:J

    .line 94
    .line 95
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i:I

    .line 96
    .line 97
    int-to-long v3, v3

    .line 98
    rem-long/2addr v0, v3

    .line 99
    const-wide/16 v6, 0x0

    .line 100
    .line 101
    cmp-long v6, v0, v6

    .line 102
    .line 103
    if-lez v6, :cond_8

    .line 104
    .line 105
    sub-long/2addr v3, v0

    .line 106
    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->b(Ljava/io/InputStream;J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 111
    .line 112
    .line 113
    :cond_8
    return-object v5

    .line 114
    :goto_4
    if-eqz v1, :cond_9

    .line 115
    .line 116
    int-to-long v0, v0

    .line 117
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->f:J

    .line 118
    .line 119
    sub-long/2addr v4, v0

    .line 120
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->f:J

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 123
    .line 124
    .line 125
    :cond_9
    throw v3

    .line 126
    :cond_a
    return-object v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final j(Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;)Ljava/util/HashMap;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->p:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_7

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    add-int/2addr v2, v6

    .line 20
    const/16 v7, 0xa

    .line 21
    .line 22
    if-ne v4, v7, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    const/16 v7, 0x20

    .line 26
    .line 27
    if-ne v4, v7, :cond_6

    .line 28
    .line 29
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eq v7, v5, :cond_5

    .line 39
    .line 40
    add-int/2addr v2, v6

    .line 41
    const/16 v8, 0x3d

    .line 42
    .line 43
    if-ne v7, v8, :cond_4

    .line 44
    .line 45
    const-string v8, "UTF-8"

    .line 46
    .line 47
    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sub-int/2addr v3, v2

    .line 52
    if-ne v3, v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    new-array v2, v3, [B

    .line 59
    .line 60
    invoke-static {p1, v2, v1, v3}, Lorg/apache/commons/compress/utils/IOUtils;->a(Ljava/io/InputStream;[BII)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-ne v6, v3, :cond_3

    .line 65
    .line 66
    new-instance v6, Ljava/lang/String;

    .line 67
    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    invoke-direct {v6, v2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 78
    .line 79
    const-string v0, "Failed to read Paxheader. Expected "

    .line 80
    .line 81
    const-string v1, " bytes, read "

    .line 82
    .line 83
    invoke-static {v0, v3, v6, v1}, Landroidx/work/impl/workers/a;->s(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    int-to-byte v7, v7

    .line 92
    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_2
    move v4, v7

    .line 97
    goto :goto_3

    .line 98
    :cond_6
    mul-int/lit8 v3, v3, 0xa

    .line 99
    .line 100
    add-int/lit8 v4, v4, -0x30

    .line 101
    .line 102
    add-int/2addr v3, v4

    .line 103
    goto :goto_0

    .line 104
    :cond_7
    :goto_3
    if-ne v4, v5, :cond_0

    .line 105
    .line 106
    return-object v0
.end method

.method public final mark(I)V
    .locals 0

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read([BII)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 13
    .line 14
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->n:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_2

    .line 40
    .line 41
    if-gtz p3, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->j:Z

    .line 45
    .line 46
    return p1

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    const-string p2, "Truncated TAR archive"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    int-to-long p2, p1

    .line 56
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 57
    .line 58
    .line 59
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 60
    .line 61
    add-long/2addr v0, p2

    .line 62
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 63
    .line 64
    return p1

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "No current tar entry"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    :goto_0
    return v1
.end method

.method public final declared-synchronized reset()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public final skip(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->k:J

    .line 15
    .line 16
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->m:Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->a(J)V

    .line 30
    .line 31
    .line 32
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 33
    .line 34
    add-long/2addr v0, p1

    .line 35
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->l:J

    .line 36
    .line 37
    return-wide p1

    .line 38
    :cond_1
    :goto_0
    return-wide v0
.end method
