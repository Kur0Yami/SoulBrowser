.class public final Lokio/ZipFileSystem;
.super Lokio/FileSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ZipFileSystem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokio/ZipFileSystem;",
        "Lokio/FileSystem;",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,142:1\n58#2,4:143\n58#2,22:147\n66#2,10:169\n62#2,3:179\n77#2,3:182\n58#2,22:185\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n55#1:143,4\n56#1:147,22\n55#1:169,10\n55#1:179,3\n55#1:182,3\n99#1:185,22\n*E\n"
    }
.end annotation


# static fields
.field public static final i:Lokio/Path;


# instance fields
.field public final f:Lokio/Path;

.field public final g:Lokio/FileSystem;

.field public final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/Path;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lokio/ZipFileSystem;->i:Lokio/Path;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lokio/Path;Lokio/JvmSystemFileSystem;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "zipPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fileSystem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "entries"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lokio/ZipFileSystem;->f:Lokio/Path;

    .line 20
    .line 21
    iput-object p2, p0, Lokio/ZipFileSystem;->g:Lokio/FileSystem;

    .line 22
    .line 23
    iput-object p3, p0, Lokio/ZipFileSystem;->h:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lokio/Path;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "dir"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lokio/ZipFileSystem;->i:Lokio/Path;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v1, "child"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, p1, v1}, Lokio/internal/-Path;->b(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lokio/ZipFileSystem;->h:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lokio/internal/ZipEntry;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Lokio/internal/ZipEntry;->q:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    return-object p1
.end method

.method public final b(Lokio/Path;)Lokio/FileMetadata;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "path"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lokio/ZipFileSystem;->i:Lokio/Path;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v3, "child"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v2, v0, v3}, Lokio/internal/-Path;->b(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, v1, Lokio/ZipFileSystem;->h:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lokio/internal/ZipEntry;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    iget-wide v4, v0, Lokio/internal/ZipEntry;->h:J

    .line 38
    .line 39
    const-wide/16 v6, -0x1

    .line 40
    .line 41
    cmp-long v6, v4, v6

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget-object v6, v1, Lokio/ZipFileSystem;->g:Lokio/FileSystem;

    .line 46
    .line 47
    iget-object v7, v1, Lokio/ZipFileSystem;->f:Lokio/Path;

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Lokio/FileSystem;->d(Lokio/Path;)Lokio/FileHandle;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    :try_start_0
    invoke-virtual {v6, v4, v5}, Lokio/FileHandle;->e(J)Lokio/Source;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 58
    .line 59
    .line 60
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 61
    :try_start_1
    const-string v5, "<this>"

    .line 62
    .line 63
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v5, "centralDirectoryZipEntry"

    .line 67
    .line 68
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v0}, Lokio/internal/ZipFilesKt;->e(Lokio/RealBufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    move-object v0, v2

    .line 82
    goto :goto_3

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_3

    .line 85
    :goto_0
    move-object v5, v0

    .line 86
    goto :goto_1

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_2
    move-exception v0

    .line 94
    :try_start_4
    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 95
    .line 96
    .line 97
    :goto_2
    move-object v0, v5

    .line 98
    move-object v5, v2

    .line 99
    :goto_3
    if-nez v0, :cond_1

    .line 100
    .line 101
    :try_start_5
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .line 103
    .line 104
    move-object v0, v2

    .line 105
    goto :goto_4

    .line 106
    :catchall_3
    move-exception v0

    .line 107
    :goto_4
    move-object v4, v0

    .line 108
    move-object v0, v5

    .line 109
    goto :goto_6

    .line 110
    :cond_1
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 111
    :catchall_4
    move-exception v0

    .line 112
    move-object v4, v0

    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    :try_start_7
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :catchall_5
    move-exception v0

    .line 120
    invoke-static {v4, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_5
    move-object v0, v2

    .line 124
    :goto_6
    if-nez v4, :cond_3

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_3
    throw v4

    .line 128
    :cond_4
    :goto_7
    new-instance v4, Lokio/FileMetadata;

    .line 129
    .line 130
    iget-boolean v6, v0, Lokio/internal/ZipEntry;->b:Z

    .line 131
    .line 132
    xor-int/lit8 v5, v6, 0x1

    .line 133
    .line 134
    if-eqz v6, :cond_5

    .line 135
    .line 136
    move-object v8, v2

    .line 137
    goto :goto_8

    .line 138
    :cond_5
    iget-wide v7, v0, Lokio/internal/ZipEntry;->f:J

    .line 139
    .line 140
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    move-object v8, v7

    .line 145
    :goto_8
    iget-object v7, v0, Lokio/internal/ZipEntry;->m:Ljava/lang/Long;

    .line 146
    .line 147
    const-wide v9, 0xa9730b66800L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    const/16 v11, 0x2710

    .line 153
    .line 154
    const-wide/16 v12, 0x3e8

    .line 155
    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 159
    .line 160
    .line 161
    move-result-wide v14

    .line 162
    move v7, v3

    .line 163
    int-to-long v2, v11

    .line 164
    div-long/2addr v14, v2

    .line 165
    sub-long/2addr v14, v9

    .line 166
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_9

    .line 171
    :cond_6
    move v7, v3

    .line 172
    iget-object v2, v0, Lokio/internal/ZipEntry;->p:Ljava/lang/Integer;

    .line 173
    .line 174
    if-eqz v2, :cond_7

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    int-to-long v2, v2

    .line 181
    mul-long/2addr v2, v12

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    goto :goto_9

    .line 187
    :cond_7
    const/4 v2, 0x0

    .line 188
    :goto_9
    iget-object v3, v0, Lokio/internal/ZipEntry;->k:Ljava/lang/Long;

    .line 189
    .line 190
    if-eqz v3, :cond_8

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 193
    .line 194
    .line 195
    move-result-wide v14

    .line 196
    move-wide/from16 v16, v9

    .line 197
    .line 198
    int-to-long v9, v11

    .line 199
    div-long/2addr v14, v9

    .line 200
    sub-long v14, v14, v16

    .line 201
    .line 202
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    :goto_a
    move-object v10, v3

    .line 207
    goto :goto_b

    .line 208
    :cond_8
    move-wide/from16 v16, v9

    .line 209
    .line 210
    iget-object v3, v0, Lokio/internal/ZipEntry;->n:Ljava/lang/Integer;

    .line 211
    .line 212
    if-eqz v3, :cond_9

    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    int-to-long v9, v3

    .line 219
    mul-long/2addr v9, v12

    .line 220
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    goto :goto_a

    .line 225
    :cond_9
    iget v3, v0, Lokio/internal/ZipEntry;->j:I

    .line 226
    .line 227
    const/4 v9, -0x1

    .line 228
    if-eq v3, v9, :cond_a

    .line 229
    .line 230
    iget v10, v0, Lokio/internal/ZipEntry;->i:I

    .line 231
    .line 232
    if-ne v3, v9, :cond_b

    .line 233
    .line 234
    :cond_a
    const/4 v10, 0x0

    .line 235
    goto :goto_b

    .line 236
    :cond_b
    shr-int/lit8 v9, v10, 0x9

    .line 237
    .line 238
    and-int/lit8 v9, v9, 0x7f

    .line 239
    .line 240
    add-int/lit16 v9, v9, 0x7bc

    .line 241
    .line 242
    shr-int/lit8 v14, v10, 0x5

    .line 243
    .line 244
    and-int/lit8 v14, v14, 0xf

    .line 245
    .line 246
    and-int/lit8 v21, v10, 0x1f

    .line 247
    .line 248
    shr-int/lit8 v10, v3, 0xb

    .line 249
    .line 250
    and-int/lit8 v22, v10, 0x1f

    .line 251
    .line 252
    shr-int/lit8 v10, v3, 0x5

    .line 253
    .line 254
    and-int/lit8 v23, v10, 0x3f

    .line 255
    .line 256
    and-int/lit8 v3, v3, 0x1f

    .line 257
    .line 258
    shl-int/lit8 v24, v3, 0x1

    .line 259
    .line 260
    new-instance v3, Ljava/util/GregorianCalendar;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 263
    .line 264
    .line 265
    const/16 v10, 0xe

    .line 266
    .line 267
    const/4 v15, 0x0

    .line 268
    invoke-virtual {v3, v10, v15}, Ljava/util/Calendar;->set(II)V

    .line 269
    .line 270
    .line 271
    add-int/lit8 v20, v14, -0x1

    .line 272
    .line 273
    move-object/from16 v18, v3

    .line 274
    .line 275
    move/from16 v19, v9

    .line 276
    .line 277
    invoke-virtual/range {v18 .. v24}, Ljava/util/Calendar;->set(IIIIII)V

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    .line 285
    .line 286
    .line 287
    move-result-wide v9

    .line 288
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    goto :goto_a

    .line 293
    :goto_b
    iget-object v3, v0, Lokio/internal/ZipEntry;->l:Ljava/lang/Long;

    .line 294
    .line 295
    if-eqz v3, :cond_c

    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 298
    .line 299
    .line 300
    move-result-wide v12

    .line 301
    int-to-long v14, v11

    .line 302
    div-long/2addr v12, v14

    .line 303
    sub-long v12, v12, v16

    .line 304
    .line 305
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    :goto_c
    move-object v11, v0

    .line 310
    goto :goto_d

    .line 311
    :cond_c
    iget-object v0, v0, Lokio/internal/ZipEntry;->o:Ljava/lang/Integer;

    .line 312
    .line 313
    if-eqz v0, :cond_d

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    int-to-long v14, v0

    .line 320
    mul-long/2addr v14, v12

    .line 321
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    goto :goto_c

    .line 326
    :cond_d
    const/4 v11, 0x0

    .line 327
    :goto_d
    const/4 v7, 0x0

    .line 328
    move-object v9, v2

    .line 329
    invoke-direct/range {v4 .. v11}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 330
    .line 331
    .line 332
    return-object v4
.end method

.method public final d(Lokio/Path;)Lokio/FileHandle;
    .locals 1

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "not implemented yet!"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
