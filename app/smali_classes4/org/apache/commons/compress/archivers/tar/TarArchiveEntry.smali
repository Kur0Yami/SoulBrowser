.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field public c:Ljava/lang/String;

.field public f:J

.field public final g:B

.field public final h:Z


# direct methods
.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 16

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
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    iput-wide v4, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 17
    .line 18
    const-string v6, "user.name"

    .line 19
    .line 20
    invoke-static {v6, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x0

    .line 29
    const/16 v8, 0x1f

    .line 30
    .line 31
    if-le v6, v8, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_0
    const/16 v3, 0x64

    .line 37
    .line 38
    invoke-static {v0, v7, v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iput-object v6, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v6, 0x8

    .line 45
    .line 46
    invoke-static {v0, v3, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 47
    .line 48
    .line 49
    const/16 v8, 0x6c

    .line 50
    .line 51
    invoke-static {v0, v8, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 52
    .line 53
    .line 54
    const/16 v8, 0x74

    .line 55
    .line 56
    invoke-static {v0, v8, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 57
    .line 58
    .line 59
    const/16 v8, 0x7c

    .line 60
    .line 61
    const/16 v9, 0xc

    .line 62
    .line 63
    invoke-static {v0, v8, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 68
    .line 69
    const/16 v8, 0x88

    .line 70
    .line 71
    invoke-static {v0, v8, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 72
    .line 73
    .line 74
    const/16 v8, 0x94

    .line 75
    .line 76
    invoke-static {v0, v8, v6}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b([BII)J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    move-wide v12, v4

    .line 81
    move v14, v7

    .line 82
    :goto_0
    array-length v15, v0

    .line 83
    const/16 v7, 0x9c

    .line 84
    .line 85
    const/16 v9, 0x20

    .line 86
    .line 87
    if-ge v14, v15, :cond_2

    .line 88
    .line 89
    aget-byte v15, v0, v14

    .line 90
    .line 91
    if-gt v8, v14, :cond_1

    .line 92
    .line 93
    if-ge v14, v7, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v9, v15

    .line 97
    :goto_1
    and-int/lit16 v7, v9, 0xff

    .line 98
    .line 99
    int-to-long v6, v7

    .line 100
    add-long/2addr v4, v6

    .line 101
    int-to-long v6, v9

    .line 102
    add-long/2addr v12, v6

    .line 103
    add-int/lit8 v14, v14, 0x1

    .line 104
    .line 105
    const/16 v6, 0x8

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    const/16 v9, 0xc

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    cmp-long v4, v10, v4

    .line 112
    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    cmp-long v4, v10, v12

    .line 116
    .line 117
    :cond_3
    aget-byte v4, v0, v7

    .line 118
    .line 119
    iput-byte v4, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 120
    .line 121
    const/16 v4, 0x9d

    .line 122
    .line 123
    invoke-static {v0, v4, v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    const/4 v3, 0x6

    .line 127
    const/16 v4, 0x101

    .line 128
    .line 129
    :try_start_0
    sget-object v5, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 130
    .line 131
    invoke-static {v0, v4, v3, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_0
    :try_start_1
    sget-object v5, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 136
    .line 137
    invoke-static {v0, v4, v3, v5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 138
    .line 139
    .line 140
    :goto_2
    const/16 v5, 0x107

    .line 141
    .line 142
    const/4 v6, 0x2

    .line 143
    :try_start_2
    sget-object v7, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 144
    .line 145
    invoke-static {v0, v5, v6, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catch_1
    :try_start_3
    sget-object v7, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 150
    .line 151
    invoke-static {v0, v5, v6, v7}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 152
    .line 153
    .line 154
    :goto_3
    const/16 v5, 0x109

    .line 155
    .line 156
    invoke-static {v0, v5, v9, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    const/16 v5, 0x129

    .line 160
    .line 161
    invoke-static {v0, v5, v9, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    const/16 v5, 0x149

    .line 165
    .line 166
    const/16 v15, 0x8

    .line 167
    .line 168
    invoke-static {v0, v5, v15}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 169
    .line 170
    .line 171
    const/16 v5, 0x151

    .line 172
    .line 173
    invoke-static {v0, v5, v15}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->c([BII)J

    .line 174
    .line 175
    .line 176
    const-string v5, "ustar "

    .line 177
    .line 178
    invoke-static {v5, v0, v4, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->a(Ljava/lang/String;[BII)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_5

    .line 183
    .line 184
    const/16 v2, 0x1e2

    .line 185
    .line 186
    aget-byte v2, v0, v2

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    if-ne v2, v3, :cond_4

    .line 190
    .line 191
    move v7, v3

    .line 192
    goto :goto_4

    .line 193
    :cond_4
    const/4 v7, 0x0

    .line 194
    :goto_4
    iput-boolean v7, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->h:Z

    .line 195
    .line 196
    const/16 v2, 0x1e3

    .line 197
    .line 198
    const/16 v3, 0xc

    .line 199
    .line 200
    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->b([BII)J

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    const-string v5, "ustar\u0000"

    .line 205
    .line 206
    invoke-static {v5, v0, v4, v3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->a(Ljava/lang/String;[BII)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    const-string v4, "/"

    .line 211
    .line 212
    const/16 v5, 0x159

    .line 213
    .line 214
    if-eqz v3, :cond_6

    .line 215
    .line 216
    const-string v3, "tar\u0000"

    .line 217
    .line 218
    const/16 v6, 0x1fc

    .line 219
    .line 220
    const/4 v7, 0x4

    .line 221
    invoke-static {v3, v0, v6, v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->a(Ljava/lang/String;[BII)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_6

    .line 226
    .line 227
    const/16 v3, 0x83

    .line 228
    .line 229
    invoke-static {v0, v5, v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-lez v2, :cond_8

    .line 238
    .line 239
    invoke-static {v0, v4}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 253
    .line 254
    return-void

    .line 255
    :cond_6
    const/16 v3, 0x9b

    .line 256
    .line 257
    invoke-static {v0, v5, v3, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->a([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_7

    .line 266
    .line 267
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_7

    .line 274
    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iput-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 287
    .line 288
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-lez v2, :cond_8

    .line 293
    .line 294
    invoke-static {v0, v4}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iput-object v0, v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 308
    .line 309
    :cond_8
    return-void

    .line 310
    :catch_2
    move-exception v0

    .line 311
    new-instance v2, Ljava/lang/RuntimeException;

    .line 312
    .line 313
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    throw v2

    .line 317
    :catch_3
    move-exception v0

    .line 318
    new-instance v2, Ljava/lang/RuntimeException;

    .line 319
    .line 320
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    throw v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "os.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    const-string v2, "windows"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v3, 0x3a

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x2

    .line 31
    if-le v0, v2, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne v4, v3, :cond_3

    .line 43
    .line 44
    const/16 v3, 0x61

    .line 45
    .line 46
    if-lt v0, v3, :cond_0

    .line 47
    .line 48
    const/16 v3, 0x7a

    .line 49
    .line 50
    if-le v0, v3, :cond_1

    .line 51
    .line 52
    :cond_0
    const/16 v3, 0x41

    .line 53
    .line 54
    if-lt v0, v3, :cond_3

    .line 55
    .line 56
    const/16 v3, 0x5a

    .line 57
    .line 58
    if-gt v0, v3, :cond_3

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v2, "netware"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, -0x1

    .line 78
    if-eq v0, v2, :cond_3

    .line 79
    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_3
    :goto_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 86
    .line 87
    const/16 v2, 0x2f

    .line 88
    .line 89
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_1
    const-string v0, "/"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 107
    .line 108
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isDirectory()Z
    .locals 2

    .line 1
    const/16 v0, 0x35

    .line 2
    .line 3
    iget-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->g:B

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x78

    .line 9
    .line 10
    if-eq v1, v0, :cond_3

    .line 11
    .line 12
    const/16 v0, 0x58

    .line 13
    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/16 v0, 0x67

    .line 18
    .line 19
    if-ne v1, v0, :cond_2

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->c:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "/"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 35
    return v0
.end method
