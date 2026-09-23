.class public Lnet/lingala/zip4j/io/DeflaterOutputStream;
.super Lnet/lingala/zip4j/io/CipherOutputStream;
.source "SourceFile"


# instance fields
.field public q:[B

.field public r:Ljava/util/zip/Deflater;

.field public s:Z


# virtual methods
.method public final f()V
    .locals 14

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->r:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 4
    .line 5
    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->i()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iput-boolean v3, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->s:Z

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->m:Ljava/util/zip/CRC32;

    .line 34
    .line 35
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->c:Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 36
    .line 37
    iget v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:I

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:[B

    .line 42
    .line 43
    invoke-virtual {p0, v4, v3, v2}, Lnet/lingala/zip4j/io/CipherOutputStream;->d([BII)V

    .line 44
    .line 45
    .line 46
    iput v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:I

    .line 47
    .line 48
    :cond_2
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 49
    .line 50
    iget-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 51
    .line 52
    const/16 v4, 0x63

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    iget v2, v2, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 57
    .line 58
    if-ne v2, v4, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->i:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 61
    .line 62
    instance-of v0, v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    throw v0

    .line 68
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 69
    .line 70
    const-string v1, "invalid encrypter for AES encrypted file"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_4
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 77
    .line 78
    iget-wide v5, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 79
    .line 80
    iput-wide v5, v2, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 81
    .line 82
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 83
    .line 84
    iput-wide v5, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 85
    .line 86
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    iget-object v5, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 96
    .line 97
    iget-boolean v6, v5, Lnet/lingala/zip4j/model/FileHeader;->r:Z

    .line 98
    .line 99
    const-wide/16 v7, 0x0

    .line 100
    .line 101
    if-eqz v6, :cond_5

    .line 102
    .line 103
    iget v6, v5, Lnet/lingala/zip4j/model/FileHeader;->s:I

    .line 104
    .line 105
    if-ne v6, v4, :cond_5

    .line 106
    .line 107
    move-wide v2, v7

    .line 108
    :cond_5
    iget-object v6, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 109
    .line 110
    iget-boolean v9, v6, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 111
    .line 112
    if-eqz v9, :cond_6

    .line 113
    .line 114
    iget v6, v6, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 115
    .line 116
    if-ne v6, v4, :cond_6

    .line 117
    .line 118
    iput-wide v7, v5, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 119
    .line 120
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 121
    .line 122
    iput-wide v7, v2, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iput-wide v2, v5, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 126
    .line 127
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 128
    .line 129
    iput-wide v2, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 130
    .line 131
    :goto_1
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 132
    .line 133
    iget-object v2, v2, Lnet/lingala/zip4j/model/ZipModel;->c:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 141
    .line 142
    iget-object v2, v2, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 143
    .line 144
    iget-object v2, v2, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 145
    .line 146
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 152
    .line 153
    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 154
    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    new-instance v5, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    const/4 v6, 0x4

    .line 165
    new-array v6, v6, [B

    .line 166
    .line 167
    const v9, 0x8074b50

    .line 168
    .line 169
    .line 170
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 174
    .line 175
    .line 176
    iget-wide v9, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 177
    .line 178
    long-to-int v9, v9

    .line 179
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 180
    .line 181
    .line 182
    invoke-static {v5, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 183
    .line 184
    .line 185
    iget-wide v9, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 186
    .line 187
    const-wide/32 v11, 0x7fffffff

    .line 188
    .line 189
    .line 190
    cmp-long v13, v9, v11

    .line 191
    .line 192
    if-ltz v13, :cond_7

    .line 193
    .line 194
    move-wide v9, v11

    .line 195
    :cond_7
    long-to-int v9, v9

    .line 196
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 197
    .line 198
    .line 199
    invoke-static {v5, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 200
    .line 201
    .line 202
    iget-wide v9, v4, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 203
    .line 204
    cmp-long v4, v9, v11

    .line 205
    .line 206
    if-ltz v4, :cond_8

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_8
    move-wide v11, v9

    .line 210
    :goto_2
    long-to-int v4, v11

    .line 211
    invoke-static {v6, v4}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 212
    .line 213
    .line 214
    invoke-static {v5, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 215
    .line 216
    .line 217
    invoke-static {v5}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/ArrayList;)[B

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v1, v4}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 222
    .line 223
    .line 224
    array-length v1, v4

    .line 225
    int-to-long v4, v1

    .line 226
    add-long/2addr v2, v4

    .line 227
    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 230
    .line 231
    .line 232
    iput-wide v7, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->i:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 236
    .line 237
    return-void

    .line 238
    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 239
    .line 240
    const-string v1, "input parameters is null, cannot write extended local header"

    .line 241
    .line 242
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->r:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->q:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lez v2, :cond_5

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne v2, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    sub-int/2addr v0, v2

    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    int-to-long v0, v0

    .line 30
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-gtz v4, :cond_5

    .line 35
    .line 36
    sub-long/2addr v2, v0

    .line 37
    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    add-int/lit8 v2, v2, -0x4

    .line 41
    .line 42
    :cond_3
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->s:Z

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    sub-int/2addr v2, v0

    .line 48
    invoke-super {p0, v1, v0, v2}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->s:Z

    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    invoke-super {p0, v1, v3, v2}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 2
    .line 3
    iget-object v1, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 4
    .line 5
    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 6
    .line 7
    iput-wide v2, v1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 8
    .line 9
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->c:Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->r:Ljava/util/zip/Deflater;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->c:Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_e

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_d

    .line 15
    .line 16
    :try_start_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->f:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lnet/lingala/zip4j/model/ZipParameters;

    .line 23
    .line 24
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 25
    .line 26
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->f:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v2, -0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 37
    .line 38
    iput-boolean v3, p1, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 39
    .line 40
    iput v2, p1, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 41
    .line 42
    iput v3, p1, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :catch_2
    move-exception p1

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->a()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->b()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 61
    .line 62
    iget-boolean v4, p1, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 63
    .line 64
    const-wide/16 v5, 0x4

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    iget-object p1, p1, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    :cond_1
    const/4 p1, 0x4

    .line 83
    new-array v4, p1, [B

    .line 84
    .line 85
    const v7, 0x8074b50

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v7}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4, v3, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    .line 95
    .line 96
    .line 97
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 98
    .line 99
    add-long/2addr v3, v5

    .line 100
    iput-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 101
    .line 102
    :cond_2
    invoke-static {v1}, Landroid/support/v4/media/a;->A(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 109
    .line 110
    cmp-long p1, v3, v5

    .line 111
    .line 112
    if-nez p1, :cond_3

    .line 113
    .line 114
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 115
    .line 116
    iput-wide v5, p1, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 120
    .line 121
    iget-object v3, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    iput-wide v3, p1, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 131
    .line 132
    cmp-long p1, v3, v5

    .line 133
    .line 134
    if-nez p1, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 137
    .line 138
    iput-wide v5, p1, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->g:Lnet/lingala/zip4j/model/FileHeader;

    .line 142
    .line 143
    iput-wide v3, p1, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 144
    .line 145
    :goto_1
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 146
    .line 147
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 148
    .line 149
    iget-object v5, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->h:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 150
    .line 151
    invoke-static {p1, v5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->h(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/io/SplitOutputStream;)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    int-to-long v5, p1

    .line 156
    add-long/2addr v3, v5

    .line 157
    iput-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 158
    .line 159
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 160
    .line 161
    iget-boolean p1, p1, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 162
    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->e()V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->i:Lnet/lingala/zip4j/crypto/IEncrypter;

    .line 169
    .line 170
    if-eqz p1, :cond_8

    .line 171
    .line 172
    iget v3, p2, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 173
    .line 174
    if-nez v3, :cond_6

    .line 175
    .line 176
    check-cast p1, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    .line 177
    .line 178
    iget-object p1, p1, Lnet/lingala/zip4j/crypto/StandardEncrypter;->b:[B

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 181
    .line 182
    .line 183
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 184
    .line 185
    array-length v1, p1

    .line 186
    int-to-long v5, v1

    .line 187
    add-long/2addr v3, v5

    .line 188
    iput-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 189
    .line 190
    iget-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 191
    .line 192
    array-length p1, p1

    .line 193
    int-to-long v5, p1

    .line 194
    add-long/2addr v3, v5

    .line 195
    iput-wide v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_6
    const/16 v4, 0x63

    .line 199
    .line 200
    if-eq v3, v4, :cond_7

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_7
    move-object p2, p1

    .line 204
    check-cast p2, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    .line 205
    .line 206
    check-cast p1, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    .line 207
    .line 208
    const/4 p1, 0x0

    .line 209
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 210
    .line 211
    .line 212
    const/4 p1, 0x0

    .line 213
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .line 215
    .line 216
    const/4 p1, 0x0

    .line 217
    :try_start_1
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :cond_8
    :goto_2
    :try_start_2
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->m:Ljava/util/zip/CRC32;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .line 222
    .line 223
    iget p1, p2, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 224
    .line 225
    const/16 v1, 0x8

    .line 226
    .line 227
    if-ne p1, v1, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 230
    .line 231
    .line 232
    iget p1, p2, Lnet/lingala/zip4j/model/ZipParameters;->f:I

    .line 233
    .line 234
    if-ltz p1, :cond_9

    .line 235
    .line 236
    const/16 p2, 0x9

    .line 237
    .line 238
    if-le p1, p2, :cond_a

    .line 239
    .line 240
    :cond_9
    if-ne p1, v2, :cond_b

    .line 241
    .line 242
    :cond_a
    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :cond_b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 247
    .line 248
    const-string p2, "invalid compression level for deflater. compression level should be in the range of 0-9"

    .line 249
    .line 250
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_c
    return-void

    .line 255
    :goto_3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 256
    .line 257
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 258
    .line 259
    .line 260
    throw p2

    .line 261
    :goto_4
    throw p1

    .line 262
    :goto_5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 263
    .line 264
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 265
    .line 266
    .line 267
    throw p2

    .line 268
    :cond_d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 269
    .line 270
    const-string p2, "input file does not exist"

    .line 271
    .line 272
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :cond_e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 277
    .line 278
    const-string p2, "input file is null"

    .line 279
    .line 280
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p1
.end method

.method public write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 3
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->r:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->j:Lnet/lingala/zip4j/model/ZipParameters;

    .line 5
    iget v1, v1, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method
