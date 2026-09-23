.class public Lnet/lingala/zip4j/io/SplitOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public c:Ljava/io/RandomAccessFile;

.field public final f:J

.field public g:Ljava/io/File;

.field public final h:Ljava/io/File;

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_1

    .line 9
    .line 10
    const-wide/32 v2, 0x10000

    .line 11
    .line 12
    .line 13
    cmp-long v2, p2, v2

    .line 14
    .line 15
    if-ltz v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 19
    .line 20
    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 27
    .line 28
    const-string v3, "rw"

    .line 29
    .line 30
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 34
    .line 35
    iput-wide p2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->f:J

    .line 36
    .line 37
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->h:Ljava/io/File;

    .line 38
    .line 39
    iput-object p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->g:Ljava/io/File;

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 43
    .line 44
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    const-wide/32 v0, 0x10000

    .line 6
    .line 7
    .line 8
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->f:J

    .line 9
    .line 10
    cmp-long v0, v2, v0

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    .line 15
    .line 16
    int-to-long v4, p1

    .line 17
    add-long/2addr v0, v4

    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-gtz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->b()V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    iput-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 42
    .line 43
    const-string v0, "negative buffersize for isBuffSizeFitForCurrSplitFile"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 50
    .line 51
    const-string v0, "negative buffersize for checkBuffSizeAndStartNextSplitFile"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->h:Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "split file: "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "."

    .line 10
    .line 11
    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_6

    .line 16
    .line 17
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ltz v4, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-lez v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_1
    iget-object v3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->g:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    iget v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 96
    .line 97
    const/16 v5, 0x9

    .line 98
    .line 99
    if-ge v4, v5, :cond_3

    .line 100
    .line 101
    new-instance v4, Ljava/io/File;

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ".z0"

    .line 115
    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    new-instance v4, Ljava/io/File;

    .line 135
    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, ".z"

    .line 148
    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 153
    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->g:Ljava/io/File;

    .line 178
    .line 179
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    new-instance v0, Ljava/io/File;

    .line 186
    .line 187
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->g:Ljava/io/File;

    .line 191
    .line 192
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 193
    .line 194
    iget-object v1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->g:Ljava/io/File;

    .line 195
    .line 196
    const-string v2, "rw"

    .line 197
    .line 198
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 202
    .line 203
    iget v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 204
    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    .line 207
    iput v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 208
    .line 209
    return-void

    .line 210
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 211
    .line 212
    const-string v1, "cannot rename newly created split file"

    .line 213
    .line 214
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, " already exists in the current directory, cannot rename this file"

    .line 233
    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 246
    .line 247
    const-string v1, "zip file name is empty or null, cannot determine zip file name"

    .line 248
    .line 249
    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_2
    new-instance v1, Ljava/io/IOException;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 12

    if-gtz p3, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    .line 4
    iget-wide v2, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->f:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_7

    const-wide/32 v0, 0x10000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    .line 5
    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->b()V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long p1, p3

    .line 8
    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    return-void

    :cond_1
    int-to-long v4, p3

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    if-eqz p1, :cond_4

    .line 9
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    move-result v0

    const/16 v1, 0xb

    .line 11
    new-array v6, v1, [J

    fill-array-data v6, :array_0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_4

    .line 12
    aget-wide v8, v6, v7

    const-wide/32 v10, 0x8074b50

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 13
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->b()V

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 15
    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 17
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->b()V

    .line 18
    iget-object p3, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    sub-long v0, v2, v0

    long-to-int v6, v0

    add-int/2addr p2, v6

    sub-long v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 19
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    sub-long/2addr v2, p1

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    return-void

    .line 20
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 21
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    return-void

    .line 22
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    iget-object v0, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 24
    iget-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/SplitOutputStream;->j:J

    return-void

    :array_0
    .array-data 8
        0x4034b50
        0x8074b50
        0x2014b50    # 1.6619997E-316
        0x6054b50
        0x5054b50
        0x8064b50
        0x8074b50
        0x7064b50
        0x6064b50
        0x1
        0x9901
    .end array-data
.end method
