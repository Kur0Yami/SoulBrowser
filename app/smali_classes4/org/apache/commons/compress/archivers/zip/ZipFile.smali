.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    }
.end annotation


# static fields
.field public static final p:J


# instance fields
.field public final c:Ljava/util/LinkedList;

.field public final f:Ljava/util/HashMap;

.field public final g:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/io/RandomAccessFile;

.field public final j:Z

.field public volatile k:Z

.field public final l:[B

.field public final m:[B

.field public final n:[B

.field public final o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->f:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->p:J

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p1, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/HashMap;

    .line 17
    .line 18
    const/16 v1, 0x1fd

    .line 19
    .line 20
    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->f:Ljava/util/HashMap;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->k:Z

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->l:[B

    .line 33
    .line 34
    const/4 v1, 0x4

    .line 35
    new-array v1, v1, [B

    .line 36
    .line 37
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->m:[B

    .line 38
    .line 39
    const/16 v1, 0x2a

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->n:[B

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->o:[B

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->h:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->a(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->g:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 61
    .line 62
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->j:Z

    .line 63
    .line 64
    new-instance p2, Ljava/io/RandomAccessFile;

    .line 65
    .line 66
    const-string v1, "r"

    .line 67
    .line 68
    invoke-direct {p2, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 72
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->b()Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->d(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->k:Z

    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception p2

    .line 85
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->k:Z

    .line 86
    .line 87
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    :catch_0
    :cond_0
    throw p2
.end method


# virtual methods
.method public final a(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 11

    .line 1
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 11
    .line 12
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 13
    .line 14
    iget-boolean v1, v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->g:Z

    .line 15
    .line 16
    if-nez v1, :cond_9

    .line 17
    .line 18
    iget v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 27
    .line 28
    if-eq v1, v4, :cond_3

    .line 29
    .line 30
    if-eq v1, v3, :cond_3

    .line 31
    .line 32
    if-eq v1, v2, :cond_3

    .line 33
    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    if-ne v1, v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 54
    .line 55
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->c:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 56
    .line 57
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_2
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "unsupported feature method \'"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, "\' used in entry "

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v1, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_3
    :goto_0
    iget-wide v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->b:J

    .line 98
    .line 99
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    move-object v6, p0

    .line 106
    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 107
    .line 108
    .line 109
    iget v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 110
    .line 111
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 112
    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    if-eq v0, v4, :cond_7

    .line 130
    .line 131
    if-eq v0, v3, :cond_6

    .line 132
    .line 133
    if-eq v0, v2, :cond_5

    .line 134
    .line 135
    const/16 v1, 0xb

    .line 136
    .line 137
    if-ne v0, v1, :cond_4

    .line 138
    .line 139
    new-instance p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    .line 140
    .line 141
    invoke-direct {p1, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_4
    new-instance v0, Ljava/util/zip/ZipException;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "Found unsupported compression method "

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_5
    iput-boolean v4, v5, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->g:Z

    .line 168
    .line 169
    new-instance p1, Ljava/util/zip/Inflater;

    .line 170
    .line 171
    invoke-direct {p1, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    .line 175
    .line 176
    invoke-direct {v0, p0, v5, p1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_6
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    .line 181
    .line 182
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 183
    .line 184
    iget v1, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->i:I

    .line 185
    .line 186
    iget p1, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->j:I

    .line 187
    .line 188
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 189
    .line 190
    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/BufferedInputStream;)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :cond_7
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    .line 198
    .line 199
    invoke-direct {p1, v5}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_8
    return-object v5

    .line 204
    :cond_9
    move-object v6, p0

    .line 205
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    .line 206
    .line 207
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->b:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    .line 208
    .line 209
    invoke-direct {v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 210
    .line 211
    .line 212
    throw v0
.end method

.method public final b()Ljava/util/HashMap;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->g:[B

    .line 9
    .line 10
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    const-wide/16 v6, 0x16

    .line 17
    .line 18
    sub-long/2addr v4, v6

    .line 19
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    const-wide/32 v8, 0x10015

    .line 24
    .line 25
    .line 26
    sub-long/2addr v6, v8

    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    cmp-long v10, v4, v8

    .line 34
    .line 35
    const/4 v11, 0x3

    .line 36
    const/4 v12, 0x2

    .line 37
    const/4 v13, 0x1

    .line 38
    const/4 v14, 0x0

    .line 39
    if-ltz v10, :cond_2

    .line 40
    .line 41
    :goto_0
    cmp-long v10, v4, v6

    .line 42
    .line 43
    if-ltz v10, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/4 v15, -0x1

    .line 53
    if-ne v10, v15, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    aget-byte v15, v2, v14

    .line 57
    .line 58
    if-ne v10, v15, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    aget-byte v15, v2, v13

    .line 65
    .line 66
    if-ne v10, v15, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    aget-byte v15, v2, v12

    .line 73
    .line 74
    if-ne v10, v15, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->read()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    aget-byte v15, v2, v11

    .line 81
    .line 82
    if-ne v10, v15, :cond_1

    .line 83
    .line 84
    move v2, v13

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    sub-long/2addr v4, v15

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    :goto_1
    move v2, v14

    .line 91
    :goto_2
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz v2, :cond_29

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    const-wide/16 v6, 0x14

    .line 103
    .line 104
    cmp-long v2, v4, v6

    .line 105
    .line 106
    if-lez v2, :cond_4

    .line 107
    .line 108
    move v2, v13

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move v2, v14

    .line 111
    :goto_3
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->m:[B

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 116
    .line 117
    .line 118
    move-result-wide v15

    .line 119
    sub-long v6, v15, v6

    .line 120
    .line 121
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    .line 126
    .line 127
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->i:[B

    .line 128
    .line 129
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    move v5, v14

    .line 135
    :goto_4
    const/4 v6, 0x4

    .line 136
    const/16 v7, 0x10

    .line 137
    .line 138
    if-nez v5, :cond_7

    .line 139
    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->e(I)V

    .line 143
    .line 144
    .line 145
    :cond_6
    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->e(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 149
    .line 150
    .line 151
    invoke-static {v4, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 152
    .line 153
    .line 154
    move-result-wide v11

    .line 155
    invoke-virtual {v3, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->e(I)V

    .line 160
    .line 161
    .line 162
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->l:[B

    .line 163
    .line 164
    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 165
    .line 166
    .line 167
    invoke-static {v10, v14}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->b([BI)Ljava/math/BigInteger;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-virtual {v11}, Ljava/math/BigInteger;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v11

    .line 175
    invoke-virtual {v3, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 179
    .line 180
    .line 181
    sget-object v11, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->h:[B

    .line 182
    .line 183
    invoke-static {v4, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_28

    .line 188
    .line 189
    const/16 v11, 0x2c

    .line 190
    .line 191
    invoke-virtual {v1, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->e(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 195
    .line 196
    .line 197
    invoke-static {v10, v14}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->b([BI)Ljava/math/BigInteger;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v10

    .line 205
    invoke-virtual {v3, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    .line 207
    .line 208
    :goto_5
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 209
    .line 210
    .line 211
    invoke-static {v4, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 212
    .line 213
    .line 214
    move-result-wide v10

    .line 215
    sget-wide v15, Lorg/apache/commons/compress/archivers/zip/ZipFile;->p:J

    .line 216
    .line 217
    cmp-long v12, v10, v15

    .line 218
    .line 219
    if-eqz v12, :cond_9

    .line 220
    .line 221
    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 225
    .line 226
    .line 227
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->c:[B

    .line 228
    .line 229
    invoke-static {v4, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-nez v8, :cond_8

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 237
    .line 238
    const-string v2, "central directory is empty, can\'t expand corrupt archive."

    .line 239
    .line 240
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_9
    :goto_6
    cmp-long v8, v10, v15

    .line 245
    .line 246
    if-nez v8, :cond_27

    .line 247
    .line 248
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->n:[B

    .line 249
    .line 250
    invoke-virtual {v3, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 251
    .line 252
    .line 253
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 254
    .line 255
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    const-wide/16 v10, -0x1

    .line 259
    .line 260
    iput-wide v10, v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 261
    .line 262
    iput-wide v10, v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->b:J

    .line 263
    .line 264
    new-instance v10, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 265
    .line 266
    invoke-direct {v10, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v8, v14}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    const/16 v12, 0x8

    .line 274
    .line 275
    shr-int/2addr v11, v12

    .line 276
    and-int/lit8 v11, v11, 0xf

    .line 277
    .line 278
    iput v11, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->h:I

    .line 279
    .line 280
    const/4 v5, 0x2

    .line 281
    invoke-static {v8, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 282
    .line 283
    .line 284
    invoke-static {v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 289
    .line 290
    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 291
    .line 292
    .line 293
    and-int/lit8 v17, v11, 0x8

    .line 294
    .line 295
    if-eqz v17, :cond_a

    .line 296
    .line 297
    move v5, v13

    .line 298
    goto :goto_7

    .line 299
    :cond_a
    move v5, v14

    .line 300
    :goto_7
    iput-boolean v5, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->f:Z

    .line 301
    .line 302
    and-int/lit16 v5, v11, 0x800

    .line 303
    .line 304
    if-eqz v5, :cond_b

    .line 305
    .line 306
    move v5, v13

    .line 307
    goto :goto_8

    .line 308
    :cond_b
    move v5, v14

    .line 309
    :goto_8
    iput-boolean v5, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->c:Z

    .line 310
    .line 311
    and-int/lit8 v18, v11, 0x40

    .line 312
    .line 313
    if-eqz v18, :cond_c

    .line 314
    .line 315
    move/from16 v18, v7

    .line 316
    .line 317
    move v7, v13

    .line 318
    goto :goto_9

    .line 319
    :cond_c
    move/from16 v18, v7

    .line 320
    .line 321
    move v7, v14

    .line 322
    :goto_9
    iput-boolean v7, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->h:Z

    .line 323
    .line 324
    if-eqz v7, :cond_d

    .line 325
    .line 326
    iput-boolean v13, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->g:Z

    .line 327
    .line 328
    :cond_d
    and-int/lit8 v7, v11, 0x1

    .line 329
    .line 330
    if-eqz v7, :cond_e

    .line 331
    .line 332
    move v7, v13

    .line 333
    goto :goto_a

    .line 334
    :cond_e
    move v7, v14

    .line 335
    :goto_a
    iput-boolean v7, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->g:Z

    .line 336
    .line 337
    and-int/lit8 v7, v11, 0x2

    .line 338
    .line 339
    if-eqz v7, :cond_f

    .line 340
    .line 341
    const/16 v7, 0x2000

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_f
    const/16 v7, 0x1000

    .line 345
    .line 346
    :goto_b
    iput v7, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->i:I

    .line 347
    .line 348
    and-int/lit8 v7, v11, 0x4

    .line 349
    .line 350
    if-eqz v7, :cond_10

    .line 351
    .line 352
    const/4 v7, 0x3

    .line 353
    goto :goto_c

    .line 354
    :cond_10
    const/4 v7, 0x2

    .line 355
    :goto_c
    iput v7, v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->j:I

    .line 356
    .line 357
    if-eqz v5, :cond_11

    .line 358
    .line 359
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->b:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 360
    .line 361
    goto :goto_d

    .line 362
    :cond_11
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->g:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 363
    .line 364
    :goto_d
    iput-object v2, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 365
    .line 366
    invoke-static {v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 367
    .line 368
    .line 369
    const/4 v2, 0x6

    .line 370
    invoke-static {v8, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    invoke-virtual {v10, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 375
    .line 376
    .line 377
    invoke-static {v8, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 378
    .line 379
    .line 380
    move-result-wide v19

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    const/16 v11, 0x19

    .line 386
    .line 387
    shr-long v21, v19, v11

    .line 388
    .line 389
    const-wide/16 v23, 0x7f

    .line 390
    .line 391
    move-object/from16 v25, v7

    .line 392
    .line 393
    and-long v6, v21, v23

    .line 394
    .line 395
    long-to-int v6, v6

    .line 396
    add-int/lit16 v6, v6, 0x7bc

    .line 397
    .line 398
    invoke-virtual {v2, v13, v6}, Ljava/util/Calendar;->set(II)V

    .line 399
    .line 400
    .line 401
    const/16 v6, 0x15

    .line 402
    .line 403
    shr-long v6, v19, v6

    .line 404
    .line 405
    const-wide/16 v21, 0xf

    .line 406
    .line 407
    and-long v6, v6, v21

    .line 408
    .line 409
    long-to-int v6, v6

    .line 410
    sub-int/2addr v6, v13

    .line 411
    const/4 v7, 0x2

    .line 412
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 413
    .line 414
    .line 415
    shr-long v11, v19, v18

    .line 416
    .line 417
    long-to-int v11, v11

    .line 418
    and-int/lit8 v11, v11, 0x1f

    .line 419
    .line 420
    const/4 v12, 0x5

    .line 421
    invoke-virtual {v2, v12, v11}, Ljava/util/Calendar;->set(II)V

    .line 422
    .line 423
    .line 424
    const/16 v11, 0xb

    .line 425
    .line 426
    shr-long v6, v19, v11

    .line 427
    .line 428
    long-to-int v6, v6

    .line 429
    and-int/lit8 v6, v6, 0x1f

    .line 430
    .line 431
    invoke-virtual {v2, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 432
    .line 433
    .line 434
    shr-long v6, v19, v12

    .line 435
    .line 436
    long-to-int v6, v6

    .line 437
    and-int/lit8 v6, v6, 0x3f

    .line 438
    .line 439
    const/16 v7, 0xc

    .line 440
    .line 441
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 442
    .line 443
    .line 444
    shl-long v11, v19, v13

    .line 445
    .line 446
    long-to-int v6, v11

    .line 447
    and-int/lit8 v6, v6, 0x3e

    .line 448
    .line 449
    const/16 v11, 0xd

    .line 450
    .line 451
    invoke-virtual {v2, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 452
    .line 453
    .line 454
    const/16 v6, 0xe

    .line 455
    .line 456
    invoke-virtual {v2, v6, v14}, Ljava/util/Calendar;->set(II)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 464
    .line 465
    .line 466
    move-result-wide v11

    .line 467
    invoke-virtual {v10, v11, v12}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 468
    .line 469
    .line 470
    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 471
    .line 472
    .line 473
    move-result-wide v6

    .line 474
    invoke-virtual {v10, v6, v7}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 475
    .line 476
    .line 477
    move/from16 v2, v18

    .line 478
    .line 479
    invoke-static {v8, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 480
    .line 481
    .line 482
    move-result-wide v6

    .line 483
    invoke-virtual {v10, v6, v7}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 484
    .line 485
    .line 486
    const/16 v6, 0x14

    .line 487
    .line 488
    invoke-static {v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 489
    .line 490
    .line 491
    move-result-wide v6

    .line 492
    invoke-virtual {v10, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 493
    .line 494
    .line 495
    const/16 v6, 0x18

    .line 496
    .line 497
    invoke-static {v8, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    const/16 v7, 0x1a

    .line 502
    .line 503
    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 504
    .line 505
    .line 506
    move-result v7

    .line 507
    const/16 v11, 0x1c

    .line 508
    .line 509
    invoke-static {v8, v11}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    const/16 v12, 0x1e

    .line 514
    .line 515
    invoke-static {v8, v12}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 516
    .line 517
    .line 518
    move-result v12

    .line 519
    const/16 v2, 0x20

    .line 520
    .line 521
    invoke-static {v8, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    iput v2, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 526
    .line 527
    const/16 v2, 0x22

    .line 528
    .line 529
    invoke-static {v8, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 530
    .line 531
    .line 532
    move-result-wide v13

    .line 533
    iput-wide v13, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 534
    .line 535
    new-array v2, v6, [B

    .line 536
    .line 537
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v6, v25

    .line 541
    .line 542
    invoke-interface {v6, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->a([B)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v13

    .line 546
    invoke-virtual {v10, v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const/16 v13, 0x26

    .line 550
    .line 551
    invoke-static {v8, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 552
    .line 553
    .line 554
    move-result-wide v13

    .line 555
    iput-wide v13, v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 556
    .line 557
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 558
    .line 559
    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    new-array v7, v7, [B

    .line 563
    .line 564
    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 565
    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    :try_start_0
    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->b([BZ)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    invoke-virtual {v10, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->d([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .line 574
    .line 575
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->j:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 576
    .line 577
    invoke-virtual {v10, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    check-cast v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 582
    .line 583
    if-eqz v7, :cond_24

    .line 584
    .line 585
    iget-wide v13, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 586
    .line 587
    const-wide v23, 0xffffffffL

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    cmp-long v8, v13, v23

    .line 593
    .line 594
    if-nez v8, :cond_12

    .line 595
    .line 596
    const/4 v8, 0x1

    .line 597
    goto :goto_e

    .line 598
    :cond_12
    const/4 v8, 0x0

    .line 599
    :goto_e
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 600
    .line 601
    .line 602
    move-result-wide v13

    .line 603
    cmp-long v13, v13, v23

    .line 604
    .line 605
    if-nez v13, :cond_13

    .line 606
    .line 607
    const/16 v25, 0x1

    .line 608
    .line 609
    goto :goto_f

    .line 610
    :cond_13
    const/16 v25, 0x0

    .line 611
    .line 612
    :goto_f
    iget-wide v13, v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 613
    .line 614
    cmp-long v13, v13, v23

    .line 615
    .line 616
    if-nez v13, :cond_14

    .line 617
    .line 618
    const/4 v13, 0x1

    .line 619
    goto :goto_10

    .line 620
    :cond_14
    const/4 v13, 0x0

    .line 621
    :goto_10
    const v14, 0xffff

    .line 622
    .line 623
    .line 624
    if-ne v12, v14, :cond_15

    .line 625
    .line 626
    const/4 v12, 0x1

    .line 627
    goto :goto_11

    .line 628
    :cond_15
    const/4 v12, 0x0

    .line 629
    :goto_11
    iget-object v14, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 630
    .line 631
    if-eqz v14, :cond_1e

    .line 632
    .line 633
    if-eqz v8, :cond_16

    .line 634
    .line 635
    const/16 v23, 0x8

    .line 636
    .line 637
    goto :goto_12

    .line 638
    :cond_16
    const/16 v23, 0x0

    .line 639
    .line 640
    :goto_12
    if-eqz v25, :cond_17

    .line 641
    .line 642
    const/16 v24, 0x8

    .line 643
    .line 644
    goto :goto_13

    .line 645
    :cond_17
    const/16 v24, 0x0

    .line 646
    .line 647
    :goto_13
    add-int v23, v23, v24

    .line 648
    .line 649
    if-eqz v13, :cond_18

    .line 650
    .line 651
    const/16 v24, 0x8

    .line 652
    .line 653
    goto :goto_14

    .line 654
    :cond_18
    const/16 v24, 0x0

    .line 655
    .line 656
    :goto_14
    add-int v23, v23, v24

    .line 657
    .line 658
    if-eqz v12, :cond_19

    .line 659
    .line 660
    const/16 v24, 0x4

    .line 661
    .line 662
    :goto_15
    move/from16 v26, v5

    .line 663
    .line 664
    goto :goto_16

    .line 665
    :cond_19
    const/16 v24, 0x0

    .line 666
    .line 667
    goto :goto_15

    .line 668
    :goto_16
    add-int v5, v23, v24

    .line 669
    .line 670
    array-length v14, v14

    .line 671
    if-lt v14, v5, :cond_1d

    .line 672
    .line 673
    if-eqz v8, :cond_1a

    .line 674
    .line 675
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 676
    .line 677
    iget-object v14, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 678
    .line 679
    move/from16 v23, v8

    .line 680
    .line 681
    const/4 v8, 0x0

    .line 682
    invoke-direct {v5, v14, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 683
    .line 684
    .line 685
    iput-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 686
    .line 687
    const/16 v5, 0x8

    .line 688
    .line 689
    goto :goto_17

    .line 690
    :cond_1a
    move/from16 v23, v8

    .line 691
    .line 692
    const/4 v5, 0x0

    .line 693
    :goto_17
    if-eqz v25, :cond_1b

    .line 694
    .line 695
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 696
    .line 697
    iget-object v14, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 698
    .line 699
    invoke-direct {v8, v14, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 700
    .line 701
    .line 702
    iput-object v8, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 703
    .line 704
    add-int/lit8 v5, v5, 0x8

    .line 705
    .line 706
    :cond_1b
    if-eqz v13, :cond_1c

    .line 707
    .line 708
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 709
    .line 710
    iget-object v14, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 711
    .line 712
    invoke-direct {v8, v14, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    .line 713
    .line 714
    .line 715
    iput-object v8, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 716
    .line 717
    add-int/lit8 v5, v5, 0x8

    .line 718
    .line 719
    :cond_1c
    if-eqz v12, :cond_1f

    .line 720
    .line 721
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 722
    .line 723
    iget-object v12, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 724
    .line 725
    invoke-direct {v8, v12, v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 726
    .line 727
    .line 728
    iput-object v8, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->h:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 729
    .line 730
    goto :goto_18

    .line 731
    :cond_1d
    new-instance v0, Ljava/util/zip/ZipException;

    .line 732
    .line 733
    const-string v2, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    .line 734
    .line 735
    const-string v3, " but is "

    .line 736
    .line 737
    invoke-static {v5, v2, v3}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    iget-object v3, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->i:[B

    .line 742
    .line 743
    array-length v3, v3

    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    throw v0

    .line 755
    :cond_1e
    move/from16 v26, v5

    .line 756
    .line 757
    move/from16 v23, v8

    .line 758
    .line 759
    :cond_1f
    :goto_18
    if-eqz v23, :cond_20

    .line 760
    .line 761
    iget-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 762
    .line 763
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 764
    .line 765
    move v8, v13

    .line 766
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 767
    .line 768
    .line 769
    move-result-wide v12

    .line 770
    invoke-virtual {v10, v12, v13}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 771
    .line 772
    .line 773
    goto :goto_19

    .line 774
    :cond_20
    move v8, v13

    .line 775
    if-eqz v25, :cond_21

    .line 776
    .line 777
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 778
    .line 779
    iget-wide v12, v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 780
    .line 781
    invoke-direct {v5, v12, v13}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 782
    .line 783
    .line 784
    iput-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 785
    .line 786
    :cond_21
    :goto_19
    if-eqz v25, :cond_22

    .line 787
    .line 788
    iget-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 789
    .line 790
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 791
    .line 792
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 793
    .line 794
    .line 795
    move-result-wide v12

    .line 796
    invoke-virtual {v10, v12, v13}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 797
    .line 798
    .line 799
    goto :goto_1a

    .line 800
    :cond_22
    if-eqz v23, :cond_23

    .line 801
    .line 802
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 803
    .line 804
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 805
    .line 806
    .line 807
    move-result-wide v12

    .line 808
    invoke-direct {v5, v12, v13}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 809
    .line 810
    .line 811
    iput-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->f:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 812
    .line 813
    :cond_23
    :goto_1a
    if-eqz v8, :cond_25

    .line 814
    .line 815
    iget-object v5, v7, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->g:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 816
    .line 817
    iget-object v5, v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->c:Ljava/math/BigInteger;

    .line 818
    .line 819
    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    .line 820
    .line 821
    .line 822
    move-result-wide v7

    .line 823
    iput-wide v7, v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 824
    .line 825
    goto :goto_1b

    .line 826
    :cond_24
    move/from16 v26, v5

    .line 827
    .line 828
    :cond_25
    :goto_1b
    new-array v5, v11, [B

    .line 829
    .line 830
    invoke-virtual {v3, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 831
    .line 832
    .line 833
    invoke-interface {v6, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->a([B)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v6

    .line 837
    invoke-virtual {v10, v6}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    if-nez v26, :cond_26

    .line 841
    .line 842
    iget-boolean v6, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->j:Z

    .line 843
    .line 844
    if-eqz v6, :cond_26

    .line 845
    .line 846
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 847
    .line 848
    invoke-direct {v6, v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[B)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    :cond_26
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 855
    .line 856
    .line 857
    const/4 v8, 0x0

    .line 858
    invoke-static {v4, v8}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    .line 859
    .line 860
    .line 861
    move-result-wide v10

    .line 862
    move v14, v8

    .line 863
    const/4 v6, 0x4

    .line 864
    const/16 v7, 0x10

    .line 865
    .line 866
    const/4 v13, 0x1

    .line 867
    goto/16 :goto_6

    .line 868
    .line 869
    :catch_0
    move-exception v0

    .line 870
    new-instance v2, Ljava/lang/RuntimeException;

    .line 871
    .line 872
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v3

    .line 876
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    .line 878
    .line 879
    throw v2

    .line 880
    :cond_27
    return-object v0

    .line 881
    :cond_28
    new-instance v0, Ljava/util/zip/ZipException;

    .line 882
    .line 883
    const-string v2, "archive\'s ZIP64 end of central directory locator is corrupt."

    .line 884
    .line 885
    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :cond_29
    new-instance v0, Ljava/util/zip/ZipException;

    .line 890
    .line 891
    const-string v2, "archive is not a ZIP archive"

    .line 892
    .line 893
    invoke-direct {v0, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    throw v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->k:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d(Ljava/util/HashMap;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->c:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 18
    .line 19
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 20
    .line 21
    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 22
    .line 23
    iget-wide v3, v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 24
    .line 25
    const-wide/16 v5, 0x1a

    .line 26
    .line 27
    add-long/2addr v5, v3

    .line 28
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 29
    .line 30
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->o:[B

    .line 34
    .line 35
    invoke-virtual {v7, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-virtual {v7, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    move v6, v8

    .line 51
    :goto_1
    if-lez v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-lez v9, :cond_0

    .line 58
    .line 59
    sub-int/2addr v6, v9

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 62
    .line 63
    const-string v0, "failed to skip file name in local file header"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_1
    new-array v6, v5, [B

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v6, 0x1e

    .line 78
    .line 79
    add-long/2addr v3, v6

    .line 80
    int-to-long v6, v8

    .line 81
    add-long/2addr v3, v6

    .line 82
    int-to-long v5, v5

    .line 83
    add-long/2addr v3, v5

    .line 84
    iput-wide v3, v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->b:J

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 97
    .line 98
    iget-object v3, v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->a:[B

    .line 99
    .line 100
    iget-object v2, v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->b:[B

    .line 101
    .line 102
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 109
    .line 110
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->b(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_2

    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_2

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    array-length v3, v2

    .line 130
    if-lez v3, :cond_3

    .line 131
    .line 132
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->h:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 139
    .line 140
    invoke-static {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->b(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->f:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/util/LinkedList;

    .line 160
    .line 161
    if-nez v4, :cond_4

    .line 162
    .line 163
    new-instance v4, Ljava/util/LinkedList;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_5
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->i:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    sub-int v2, p1, v0

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    return-void
.end method

.method public final finalize()V
    .locals 3

    .line 1
    const-string v0, "Cleaning up unclosed ZipFile for archive "

    .line 2
    .line 3
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->k:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
