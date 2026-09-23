.class public Lnet/lingala/zip4j/core/HeaderReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/RandomAccessFile;

.field public b:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    return-void
.end method

.method public static a([B)[B
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v2, p0, v0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    aget-byte v4, p0, v3

    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    aget-byte v6, p0, v5

    .line 13
    .line 14
    const/4 v7, 0x3

    .line 15
    aget-byte p0, p0, v7

    .line 16
    .line 17
    const/16 v8, 0x8

    .line 18
    .line 19
    new-array v8, v8, [B

    .line 20
    .line 21
    aput-byte v2, v8, v0

    .line 22
    .line 23
    aput-byte v4, v8, v3

    .line 24
    .line 25
    aput-byte v6, v8, v5

    .line 26
    .line 27
    aput-byte p0, v8, v7

    .line 28
    .line 29
    aput-byte v0, v8, v1

    .line 30
    .line 31
    const/4 p0, 0x5

    .line 32
    aput-byte v0, v8, p0

    .line 33
    .line 34
    const/4 p0, 0x6

    .line 35
    aput-byte v0, v8, p0

    .line 36
    .line 37
    const/4 p0, 0x7

    .line 38
    aput-byte v0, v8, p0

    .line 39
    .line 40
    return-object v8

    .line 41
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 42
    .line 43
    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-wide v3, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->a:J

    .line 22
    .line 23
    const-wide/32 v5, 0x9901

    .line 24
    .line 25
    .line 26
    cmp-long v3, v3, v5

    .line 27
    .line 28
    if-nez v3, :cond_3

    .line 29
    .line 30
    iget-object p0, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->c:[B

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    new-instance v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    const-wide/16 v3, -0x1

    .line 40
    .line 41
    iput-wide v3, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    .line 42
    .line 43
    const/4 v3, -0x1

    .line 44
    iput v3, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    .line 45
    .line 46
    iput v3, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    iput-object v4, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    .line 50
    .line 51
    iput v3, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 52
    .line 53
    iput v3, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    .line 54
    .line 55
    iput-wide v5, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    .line 56
    .line 57
    iget v2, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 58
    .line 59
    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    .line 60
    .line 61
    invoke-static {p0, v0}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    new-array v3, v2, [B

    .line 69
    .line 70
    invoke-static {p0, v2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v0, 0x4

    .line 81
    aget-byte v0, p0, v0

    .line 82
    .line 83
    and-int/lit16 v0, v0, 0xff

    .line 84
    .line 85
    iput v0, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 86
    .line 87
    const/4 v0, 0x5

    .line 88
    invoke-static {p0, v0}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    iput p0, v1, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 96
    .line 97
    const-string v0, "corrput AES extra data records"

    .line 98
    .line 99
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method public static d(Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->w:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/model/FileHeader;->w:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-wide v2, p0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 15
    .line 16
    iget-wide v4, p0, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 17
    .line 18
    iget-wide v6, p0, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 19
    .line 20
    iget v8, p0, Lnet/lingala/zip4j/model/FileHeader;->m:I

    .line 21
    .line 22
    invoke-static/range {v1 .. v8}, Lnet/lingala/zip4j/core/HeaderReader;->h(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_4

    .line 27
    .line 28
    iput-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 29
    .line 30
    iget-wide v1, v0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    .line 31
    .line 32
    const-wide/16 v3, -0x1

    .line 33
    .line 34
    cmp-long v5, v1, v3

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    iput-wide v1, p0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 39
    .line 40
    :cond_1
    iget-wide v1, v0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    .line 41
    .line 42
    cmp-long v5, v1, v3

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    iput-wide v1, p0, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 47
    .line 48
    :cond_2
    iget-wide v1, v0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    .line 49
    .line 50
    cmp-long v3, v1, v3

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    iput-wide v1, p0, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 55
    .line 56
    :cond_3
    iget v0, v0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    if-eq v0, v1, :cond_4

    .line 60
    .line 61
    iput v0, p0, Lnet/lingala/zip4j/model/FileHeader;->m:I

    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public static f(Ljava/io/RandomAccessFile;[B)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 12
    .line 13
    const-string p1, "unexpected end of file when reading short buff"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string v1, "IOException when reading short buff"

    .line 23
    .line 24
    invoke-direct {p1, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    iput v0, p1, Lnet/lingala/zip4j/exception/ZipException;->c:I

    .line 28
    .line 29
    throw p1
.end method

.method public static h(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_7

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-wide v3, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->a:J

    .line 20
    .line 21
    const-wide/16 v5, 0x1

    .line 22
    .line 23
    cmp-long v3, v3, v5

    .line 24
    .line 25
    if-nez v3, :cond_6

    .line 26
    .line 27
    new-instance p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    const-wide/16 v3, -0x1

    .line 33
    .line 34
    iput-wide v3, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    .line 35
    .line 36
    iput-wide v3, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    .line 37
    .line 38
    iput-wide v3, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    .line 42
    .line 43
    iget-object v1, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->c:[B

    .line 44
    .line 45
    iget v3, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 46
    .line 47
    if-gtz v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    const/16 v4, 0x8

    .line 52
    .line 53
    new-array v5, v4, [B

    .line 54
    .line 55
    const/4 v6, 0x4

    .line 56
    new-array v7, v6, [B

    .line 57
    .line 58
    const-wide/32 v8, 0xffff

    .line 59
    .line 60
    .line 61
    and-long v10, p1, v8

    .line 62
    .line 63
    cmp-long v10, v10, v8

    .line 64
    .line 65
    const/4 v11, 0x1

    .line 66
    if-nez v10, :cond_2

    .line 67
    .line 68
    if-lez v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    invoke-static {v5}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 74
    .line 75
    .line 76
    move-result-wide v12

    .line 77
    iput-wide v12, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    .line 78
    .line 79
    move v3, v4

    .line 80
    move v10, v11

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v3, v0

    .line 83
    move v10, v3

    .line 84
    :goto_1
    and-long v12, p3, v8

    .line 85
    .line 86
    cmp-long v12, v12, v8

    .line 87
    .line 88
    if-nez v12, :cond_3

    .line 89
    .line 90
    iget v12, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 91
    .line 92
    if-ge v3, v12, :cond_3

    .line 93
    .line 94
    invoke-static {v1, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 98
    .line 99
    .line 100
    move-result-wide v12

    .line 101
    iput-wide v12, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x8

    .line 104
    .line 105
    move v10, v11

    .line 106
    :cond_3
    and-long v12, p5, v8

    .line 107
    .line 108
    cmp-long v8, v12, v8

    .line 109
    .line 110
    if-nez v8, :cond_4

    .line 111
    .line 112
    iget v8, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 113
    .line 114
    if-ge v3, v8, :cond_4

    .line 115
    .line 116
    invoke-static {v1, v3, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    .line 118
    .line 119
    invoke-static {v5}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    iput-wide v4, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x8

    .line 126
    .line 127
    move v10, v11

    .line 128
    :cond_4
    const v4, 0xffff

    .line 129
    .line 130
    .line 131
    and-int v5, p7, v4

    .line 132
    .line 133
    if-ne v5, v4, :cond_5

    .line 134
    .line 135
    iget v2, v2, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 136
    .line 137
    if-ge v3, v2, :cond_5

    .line 138
    .line 139
    invoke-static {v1, v3, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    invoke-static {v7}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput v0, p0, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->d:I

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    move v11, v10

    .line 150
    :goto_2
    if-eqz v11, :cond_7

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_7
    :goto_4
    const/4 p0, 0x0

    .line 158
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    .line 4
    .line 5
    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    iput-object v2, v0, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    :try_start_0
    new-array v4, v3, [B

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    const-wide/16 v7, 0x16

    .line 24
    .line 25
    sub-long/2addr v5, v7

    .line 26
    new-instance v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    move v11, v10

    .line 33
    :goto_0
    const-wide/16 v12, 0x1

    .line 34
    .line 35
    sub-long v14, v5, v12

    .line 36
    .line 37
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    add-int/2addr v11, v5

    .line 42
    invoke-static {v2, v4}, Lnet/lingala/zip4j/util/Raw;->c(Ljava/io/DataInput;[B)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    move-wide/from16 v16, v7

    .line 47
    .line 48
    int-to-long v7, v6

    .line 49
    move-wide/from16 v18, v12

    .line 50
    .line 51
    const-wide/32 v12, 0x6054b50

    .line 52
    .line 53
    .line 54
    cmp-long v6, v7, v12

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    const/16 v6, 0xbb8

    .line 59
    .line 60
    if-le v11, v6, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move-wide v5, v14

    .line 64
    move-wide/from16 v7, v16

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    invoke-static {v4}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    int-to-long v6, v4

    .line 72
    cmp-long v4, v6, v12

    .line 73
    .line 74
    if-nez v4, :cond_1d

    .line 75
    .line 76
    new-array v4, v3, [B

    .line 77
    .line 78
    const/4 v6, 0x2

    .line 79
    new-array v7, v6, [B

    .line 80
    .line 81
    iput-wide v12, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->a:J

    .line 82
    .line 83
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 84
    .line 85
    .line 86
    invoke-static {v7, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    iput v8, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 91
    .line 92
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    iput v8, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->c:I

    .line 100
    .line 101
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 108
    .line 109
    .line 110
    invoke-static {v7, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iput v8, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d:I

    .line 115
    .line 116
    invoke-static {v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 123
    .line 124
    .line 125
    invoke-static {v4}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-static {v4}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 130
    .line 131
    .line 132
    move-result-wide v14

    .line 133
    iput-wide v14, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 134
    .line 135
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 136
    .line 137
    .line 138
    invoke-static {v7, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    iput v4, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f:I

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    if-lez v4, :cond_2

    .line 146
    .line 147
    new-array v4, v4, [B

    .line 148
    .line 149
    invoke-static {v2, v4}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 150
    .line 151
    .line 152
    new-instance v8, Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 155
    .line 156
    .line 157
    iput-object v8, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->g:Ljava/lang/String;

    .line 158
    .line 159
    iput-object v4, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->h:[B

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    goto/16 :goto_16

    .line 164
    .line 165
    :cond_2
    iput-object v7, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->g:Ljava/lang/String;

    .line 166
    .line 167
    :goto_2
    iget v4, v9, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 168
    .line 169
    if-lez v4, :cond_3

    .line 170
    .line 171
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 172
    .line 173
    iput-boolean v5, v4, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_3
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 177
    .line 178
    iput-boolean v10, v4, Lnet/lingala/zip4j/model/ZipModel;->j:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    :goto_3
    iput-object v9, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 181
    .line 182
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 183
    .line 184
    :try_start_1
    new-instance v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 185
    .line 186
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .line 188
    .line 189
    :try_start_2
    new-array v8, v3, [B

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 192
    .line 193
    .line 194
    move-result-wide v14

    .line 195
    sub-long v14, v14, v16

    .line 196
    .line 197
    :goto_4
    sub-long v16, v14, v18

    .line 198
    .line 199
    invoke-virtual {v2, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v8}, Lnet/lingala/zip4j/util/Raw;->c(Ljava/io/DataInput;[B)I

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    int-to-long v14, v9

    .line 207
    cmp-long v9, v14, v12

    .line 208
    .line 209
    if-nez v9, :cond_1c

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 212
    .line 213
    .line 214
    move-result-wide v8

    .line 215
    const-wide/16 v11, 0x18

    .line 216
    .line 217
    sub-long/2addr v8, v11

    .line 218
    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    .line 220
    .line 221
    :try_start_3
    new-array v8, v3, [B

    .line 222
    .line 223
    const/16 v9, 0x8

    .line 224
    .line 225
    new-array v11, v9, [B

    .line 226
    .line 227
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 228
    .line 229
    .line 230
    invoke-static {v8}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    int-to-long v12, v12

    .line 235
    const-wide/32 v14, 0x7064b50

    .line 236
    .line 237
    .line 238
    cmp-long v12, v12, v14

    .line 239
    .line 240
    if-nez v12, :cond_4

    .line 241
    .line 242
    iget-object v12, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 243
    .line 244
    iput-boolean v5, v12, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 245
    .line 246
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 247
    .line 248
    .line 249
    invoke-static {v8}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    iput v12, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:I

    .line 254
    .line 255
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 256
    .line 257
    .line 258
    invoke-static {v11}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 259
    .line 260
    .line 261
    move-result-wide v11

    .line 262
    iput-wide v11, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:J

    .line 263
    .line 264
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 265
    .line 266
    .line 267
    invoke-static {v8}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    iput v8, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:I

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :catch_1
    move-exception v0

    .line 275
    goto/16 :goto_15

    .line 276
    .line 277
    :cond_4
    iget-object v4, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 278
    .line 279
    iput-boolean v10, v4, Lnet/lingala/zip4j/model/ZipModel;->m:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    .line 281
    move-object v4, v7

    .line 282
    :goto_5
    iput-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 283
    .line 284
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 285
    .line 286
    iget-boolean v4, v0, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 287
    .line 288
    if-eqz v4, :cond_a

    .line 289
    .line 290
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 291
    .line 292
    if-eqz v4, :cond_9

    .line 293
    .line 294
    iget-wide v11, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:J

    .line 295
    .line 296
    const-wide/16 v13, 0x0

    .line 297
    .line 298
    cmp-long v4, v11, v13

    .line 299
    .line 300
    if-ltz v4, :cond_8

    .line 301
    .line 302
    :try_start_4
    invoke-virtual {v2, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 303
    .line 304
    .line 305
    new-instance v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 306
    .line 307
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 308
    .line 309
    .line 310
    new-array v8, v6, [B

    .line 311
    .line 312
    new-array v11, v3, [B

    .line 313
    .line 314
    new-array v9, v9, [B

    .line 315
    .line 316
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 317
    .line 318
    .line 319
    invoke-static {v11}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 320
    .line 321
    .line 322
    move-result v12

    .line 323
    move-wide v15, v13

    .line 324
    int-to-long v13, v12

    .line 325
    const-wide/32 v17, 0x6064b50

    .line 326
    .line 327
    .line 328
    cmp-long v12, v13, v17

    .line 329
    .line 330
    if-nez v12, :cond_7

    .line 331
    .line 332
    invoke-static {v2, v9}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 333
    .line 334
    .line 335
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 336
    .line 337
    .line 338
    move-result-wide v12

    .line 339
    iput-wide v12, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->a:J

    .line 340
    .line 341
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 342
    .line 343
    .line 344
    invoke-static {v8, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 345
    .line 346
    .line 347
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 348
    .line 349
    .line 350
    invoke-static {v8, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 351
    .line 352
    .line 353
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 354
    .line 355
    .line 356
    invoke-static {v11}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    iput v8, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->b:I

    .line 361
    .line 362
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 363
    .line 364
    .line 365
    invoke-static {v11}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 366
    .line 367
    .line 368
    invoke-static {v2, v9}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 369
    .line 370
    .line 371
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 372
    .line 373
    .line 374
    invoke-static {v2, v9}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 375
    .line 376
    .line 377
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 378
    .line 379
    .line 380
    move-result-wide v11

    .line 381
    iput-wide v11, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->c:J

    .line 382
    .line 383
    invoke-static {v2, v9}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 384
    .line 385
    .line 386
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 387
    .line 388
    .line 389
    invoke-static {v2, v9}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 390
    .line 391
    .line 392
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 393
    .line 394
    .line 395
    move-result-wide v8

    .line 396
    iput-wide v8, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->d:J

    .line 397
    .line 398
    iget-wide v8, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->a:J

    .line 399
    .line 400
    const-wide/16 v11, 0x2c

    .line 401
    .line 402
    sub-long/2addr v8, v11

    .line 403
    cmp-long v11, v8, v15

    .line 404
    .line 405
    if-lez v11, :cond_5

    .line 406
    .line 407
    long-to-int v8, v8

    .line 408
    new-array v8, v8, [B

    .line 409
    .line 410
    invoke-static {v2, v8}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 411
    .line 412
    .line 413
    goto :goto_6

    .line 414
    :catch_2
    move-exception v0

    .line 415
    goto :goto_7

    .line 416
    :cond_5
    :goto_6
    iput-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 417
    .line 418
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 419
    .line 420
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 421
    .line 422
    if-eqz v4, :cond_6

    .line 423
    .line 424
    iget v4, v4, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->b:I

    .line 425
    .line 426
    if-lez v4, :cond_6

    .line 427
    .line 428
    iput-boolean v5, v0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_6
    iput-boolean v10, v0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_7
    :try_start_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 435
    .line 436
    const-string v2, "invalid signature for zip64 end of central directory record"

    .line 437
    .line 438
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 442
    :goto_7
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 443
    .line 444
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 445
    .line 446
    .line 447
    throw v2

    .line 448
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 449
    .line 450
    const-string v2, "invalid offset for start of end of central directory record"

    .line 451
    .line 452
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw v0

    .line 456
    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 457
    .line 458
    const-string v2, "invalid zip64 end of central directory locator"

    .line 459
    .line 460
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_a
    :goto_8
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 465
    .line 466
    const-string v4, ":"

    .line 467
    .line 468
    iget-object v8, v0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 469
    .line 470
    if-eqz v8, :cond_1b

    .line 471
    .line 472
    :try_start_6
    new-instance v8, Lnet/lingala/zip4j/model/CentralDirectory;

    .line 473
    .line 474
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 475
    .line 476
    .line 477
    new-instance v9, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .line 481
    .line 482
    iget-object v11, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 483
    .line 484
    iget-object v12, v11, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 485
    .line 486
    iget-wide v13, v12, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 487
    .line 488
    iget v12, v12, Lnet/lingala/zip4j/model/EndCentralDirRecord;->d:I

    .line 489
    .line 490
    iget-boolean v15, v11, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 491
    .line 492
    if-eqz v15, :cond_b

    .line 493
    .line 494
    iget-object v11, v11, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 495
    .line 496
    iget-wide v13, v11, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->d:J

    .line 497
    .line 498
    iget-wide v11, v11, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->c:J

    .line 499
    .line 500
    long-to-int v12, v11

    .line 501
    goto :goto_9

    .line 502
    :catch_3
    move-exception v0

    .line 503
    goto/16 :goto_13

    .line 504
    .line 505
    :cond_b
    :goto_9
    invoke-virtual {v2, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 506
    .line 507
    .line 508
    new-array v3, v3, [B

    .line 509
    .line 510
    new-array v11, v6, [B

    .line 511
    .line 512
    move v13, v10

    .line 513
    :goto_a
    if-ge v13, v12, :cond_18

    .line 514
    .line 515
    new-instance v14, Lnet/lingala/zip4j/model/FileHeader;

    .line 516
    .line 517
    invoke-direct {v14}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 521
    .line 522
    .line 523
    invoke-static {v3}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 524
    .line 525
    .line 526
    move-result v15

    .line 527
    move/from16 p1, v6

    .line 528
    .line 529
    int-to-long v6, v15

    .line 530
    const-wide/32 v16, 0x2014b50    # 1.6619997E-316

    .line 531
    .line 532
    .line 533
    cmp-long v6, v6, v16

    .line 534
    .line 535
    if-nez v6, :cond_17

    .line 536
    .line 537
    iput v15, v14, Lnet/lingala/zip4j/model/FileHeader;->a:I

    .line 538
    .line 539
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 540
    .line 541
    .line 542
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 543
    .line 544
    .line 545
    move-result v6

    .line 546
    iput v6, v14, Lnet/lingala/zip4j/model/FileHeader;->b:I

    .line 547
    .line 548
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 549
    .line 550
    .line 551
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 552
    .line 553
    .line 554
    move-result v6

    .line 555
    iput v6, v14, Lnet/lingala/zip4j/model/FileHeader;->c:I

    .line 556
    .line 557
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 558
    .line 559
    .line 560
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    and-int/lit16 v6, v6, 0x800

    .line 565
    .line 566
    if-eqz v6, :cond_c

    .line 567
    .line 568
    move v6, v5

    .line 569
    goto :goto_b

    .line 570
    :cond_c
    move v6, v10

    .line 571
    :goto_b
    iput-boolean v6, v14, Lnet/lingala/zip4j/model/FileHeader;->x:Z

    .line 572
    .line 573
    aget-byte v6, v11, v10

    .line 574
    .line 575
    and-int/2addr v6, v5

    .line 576
    if-eqz v6, :cond_d

    .line 577
    .line 578
    iput-boolean v5, v14, Lnet/lingala/zip4j/model/FileHeader;->r:Z

    .line 579
    .line 580
    :cond_d
    invoke-virtual {v11}, [B->clone()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    check-cast v6, [B

    .line 585
    .line 586
    iput-object v6, v14, Lnet/lingala/zip4j/model/FileHeader;->d:[B

    .line 587
    .line 588
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 589
    .line 590
    .line 591
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    iput v6, v14, Lnet/lingala/zip4j/model/FileHeader;->e:I

    .line 596
    .line 597
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 598
    .line 599
    .line 600
    invoke-static {v3}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 601
    .line 602
    .line 603
    move-result v6

    .line 604
    iput v6, v14, Lnet/lingala/zip4j/model/FileHeader;->f:I

    .line 605
    .line 606
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 607
    .line 608
    .line 609
    invoke-static {v3}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    int-to-long v6, v6

    .line 614
    iput-wide v6, v14, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 615
    .line 616
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    check-cast v6, [B

    .line 621
    .line 622
    iput-object v6, v14, Lnet/lingala/zip4j/model/FileHeader;->h:[B

    .line 623
    .line 624
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 625
    .line 626
    .line 627
    invoke-static {v3}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-static {v6}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 632
    .line 633
    .line 634
    move-result-wide v6

    .line 635
    iput-wide v6, v14, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 636
    .line 637
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 638
    .line 639
    .line 640
    invoke-static {v3}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    invoke-static {v6}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 645
    .line 646
    .line 647
    move-result-wide v6

    .line 648
    iput-wide v6, v14, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 649
    .line 650
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 651
    .line 652
    .line 653
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    iput v6, v14, Lnet/lingala/zip4j/model/FileHeader;->k:I

    .line 658
    .line 659
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 660
    .line 661
    .line 662
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 663
    .line 664
    .line 665
    move-result v7

    .line 666
    iput v7, v14, Lnet/lingala/zip4j/model/FileHeader;->l:I

    .line 667
    .line 668
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 669
    .line 670
    .line 671
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 672
    .line 673
    .line 674
    move-result v7

    .line 675
    new-instance v15, Ljava/lang/String;

    .line 676
    .line 677
    invoke-direct {v15, v11}, Ljava/lang/String;-><init>([B)V

    .line 678
    .line 679
    .line 680
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 681
    .line 682
    .line 683
    invoke-static {v11, v10}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 684
    .line 685
    .line 686
    move-result v15

    .line 687
    iput v15, v14, Lnet/lingala/zip4j/model/FileHeader;->m:I

    .line 688
    .line 689
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 690
    .line 691
    .line 692
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v15

    .line 699
    check-cast v15, [B

    .line 700
    .line 701
    iput-object v15, v14, Lnet/lingala/zip4j/model/FileHeader;->n:[B

    .line 702
    .line 703
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 704
    .line 705
    .line 706
    invoke-static {v3}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 707
    .line 708
    .line 709
    move-result-object v15

    .line 710
    invoke-static {v15}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 711
    .line 712
    .line 713
    move-result-wide v15

    .line 714
    const-wide v17, 0xffffffffL

    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    move-object/from16 v19, v11

    .line 720
    .line 721
    and-long v10, v15, v17

    .line 722
    .line 723
    iput-wide v10, v14, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 724
    .line 725
    if-lez v6, :cond_12

    .line 726
    .line 727
    new-array v6, v6, [B

    .line 728
    .line 729
    invoke-static {v2, v6}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 730
    .line 731
    .line 732
    iget-object v10, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 733
    .line 734
    iget-object v10, v10, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 735
    .line 736
    invoke-static {v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v10

    .line 740
    if-eqz v10, :cond_e

    .line 741
    .line 742
    new-instance v10, Ljava/lang/String;

    .line 743
    .line 744
    iget-object v11, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 745
    .line 746
    iget-object v11, v11, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 747
    .line 748
    invoke-direct {v10, v6, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto :goto_c

    .line 752
    :cond_e
    iget-boolean v10, v14, Lnet/lingala/zip4j/model/FileHeader;->x:Z

    .line 753
    .line 754
    invoke-static {v6, v10}, Lnet/lingala/zip4j/util/Zip4jUtil;->d([BZ)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v10

    .line 758
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v11

    .line 770
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v6

    .line 777
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    if-ltz v6, :cond_f

    .line 782
    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v11

    .line 795
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    move-result v6

    .line 806
    add-int/lit8 v6, v6, 0x2

    .line 807
    .line 808
    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v10

    .line 812
    :cond_f
    iput-object v10, v14, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 813
    .line 814
    const-string v6, "/"

    .line 815
    .line 816
    invoke-virtual {v10, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 817
    .line 818
    .line 819
    move-result v6

    .line 820
    if-nez v6, :cond_11

    .line 821
    .line 822
    const-string v6, "\\"

    .line 823
    .line 824
    invoke-virtual {v10, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 825
    .line 826
    .line 827
    move-result v6

    .line 828
    if-eqz v6, :cond_10

    .line 829
    .line 830
    goto :goto_d

    .line 831
    :cond_10
    const/4 v6, 0x0

    .line 832
    goto :goto_e

    .line 833
    :cond_11
    :goto_d
    move v6, v5

    .line 834
    :goto_e
    iput-boolean v6, v14, Lnet/lingala/zip4j/model/FileHeader;->q:Z

    .line 835
    .line 836
    const/4 v6, 0x0

    .line 837
    goto :goto_f

    .line 838
    :cond_12
    const/4 v6, 0x0

    .line 839
    iput-object v6, v14, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 840
    .line 841
    :goto_f
    iget v10, v14, Lnet/lingala/zip4j/model/FileHeader;->l:I

    .line 842
    .line 843
    if-gtz v10, :cond_13

    .line 844
    .line 845
    goto :goto_10

    .line 846
    :cond_13
    invoke-virtual {v1, v10}, Lnet/lingala/zip4j/core/HeaderReader;->e(I)Ljava/util/ArrayList;

    .line 847
    .line 848
    .line 849
    move-result-object v10

    .line 850
    iput-object v10, v14, Lnet/lingala/zip4j/model/FileHeader;->w:Ljava/util/ArrayList;

    .line 851
    .line 852
    :goto_10
    invoke-static {v14}, Lnet/lingala/zip4j/core/HeaderReader;->d(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 853
    .line 854
    .line 855
    iget-object v10, v14, Lnet/lingala/zip4j/model/FileHeader;->w:Ljava/util/ArrayList;

    .line 856
    .line 857
    if-eqz v10, :cond_15

    .line 858
    .line 859
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 860
    .line 861
    .line 862
    move-result v10

    .line 863
    if-gtz v10, :cond_14

    .line 864
    .line 865
    goto :goto_11

    .line 866
    :cond_14
    iget-object v10, v14, Lnet/lingala/zip4j/model/FileHeader;->w:Ljava/util/ArrayList;

    .line 867
    .line 868
    invoke-static {v10}, Lnet/lingala/zip4j/core/HeaderReader;->b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 869
    .line 870
    .line 871
    move-result-object v10

    .line 872
    if-eqz v10, :cond_15

    .line 873
    .line 874
    iput-object v10, v14, Lnet/lingala/zip4j/model/FileHeader;->v:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 875
    .line 876
    const/16 v10, 0x63

    .line 877
    .line 878
    iput v10, v14, Lnet/lingala/zip4j/model/FileHeader;->s:I

    .line 879
    .line 880
    :cond_15
    :goto_11
    if-lez v7, :cond_16

    .line 881
    .line 882
    new-array v7, v7, [B

    .line 883
    .line 884
    invoke-static {v2, v7}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 885
    .line 886
    .line 887
    new-instance v10, Ljava/lang/String;

    .line 888
    .line 889
    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([B)V

    .line 890
    .line 891
    .line 892
    :cond_16
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    add-int/lit8 v13, v13, 0x1

    .line 896
    .line 897
    move-object v7, v6

    .line 898
    move-object/from16 v11, v19

    .line 899
    .line 900
    const/4 v10, 0x0

    .line 901
    move/from16 v6, p1

    .line 902
    .line 903
    goto/16 :goto_a

    .line 904
    .line 905
    :cond_17
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 906
    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .line 911
    .line 912
    const-string v3, "Expected central directory entry not found (#"

    .line 913
    .line 914
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    add-int/2addr v13, v5

    .line 918
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 919
    .line 920
    .line 921
    const-string v3, ")"

    .line 922
    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    throw v0

    .line 934
    :cond_18
    move-object/from16 v19, v11

    .line 935
    .line 936
    iput-object v9, v8, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 939
    .line 940
    .line 941
    invoke-static {v3}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    int-to-long v3, v3

    .line 946
    const-wide/32 v5, 0x5054b50

    .line 947
    .line 948
    .line 949
    cmp-long v3, v3, v5

    .line 950
    .line 951
    if-eqz v3, :cond_19

    .line 952
    .line 953
    goto :goto_12

    .line 954
    :cond_19
    move-object/from16 v3, v19

    .line 955
    .line 956
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 957
    .line 958
    .line 959
    const/4 v7, 0x0

    .line 960
    invoke-static {v3, v7}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    if-lez v3, :cond_1a

    .line 965
    .line 966
    new-array v3, v3, [B

    .line 967
    .line 968
    invoke-static {v2, v3}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 969
    .line 970
    .line 971
    new-instance v2, Ljava/lang/String;

    .line 972
    .line 973
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 974
    .line 975
    .line 976
    :cond_1a
    :goto_12
    iput-object v8, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 977
    .line 978
    iget-object v0, v1, Lnet/lingala/zip4j/core/HeaderReader;->b:Lnet/lingala/zip4j/model/ZipModel;

    .line 979
    .line 980
    return-object v0

    .line 981
    :goto_13
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 982
    .line 983
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 984
    .line 985
    .line 986
    throw v2

    .line 987
    :cond_1b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 988
    .line 989
    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    .line 990
    .line 991
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    throw v0

    .line 995
    :catch_4
    move-exception v0

    .line 996
    goto :goto_14

    .line 997
    :cond_1c
    move-wide/from16 v14, v16

    .line 998
    .line 999
    goto/16 :goto_4

    .line 1000
    .line 1001
    :goto_14
    :try_start_7
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 1002
    .line 1003
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 1004
    .line 1005
    .line 1006
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1007
    :goto_15
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 1008
    .line 1009
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 1010
    .line 1011
    .line 1012
    throw v2

    .line 1013
    :cond_1d
    :try_start_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 1014
    .line 1015
    const-string v2, "zip headers not found. probably not a zip file"

    .line 1016
    .line 1017
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1021
    :goto_16
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 1022
    .line 1023
    const-string v4, "Probably not a zip file or a corrupted zip file"

    .line 1024
    .line 1025
    invoke-direct {v2, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1026
    .line 1027
    .line 1028
    iput v3, v2, Lnet/lingala/zip4j/exception/ZipException;->c:I

    .line 1029
    .line 1030
    throw v2
.end method

.method public final e(I)Ljava/util/ArrayList;
    .locals 8

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    :try_start_0
    new-array v0, p1, [B

    .line 5
    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, p1, :cond_3

    .line 19
    .line 20
    new-instance v4, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v3}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    int-to-long v5, v5

    .line 30
    iput-wide v5, v4, Lnet/lingala/zip4j/model/ExtraDataRecord;->a:J

    .line 31
    .line 32
    add-int/lit8 v5, v3, 0x2

    .line 33
    .line 34
    invoke-static {v0, v5}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    add-int/lit8 v7, v6, 0x2

    .line 39
    .line 40
    if-le v7, p1, :cond_1

    .line 41
    .line 42
    aget-byte v5, v0, v5

    .line 43
    .line 44
    and-int/lit16 v5, v5, 0xff

    .line 45
    .line 46
    int-to-short v5, v5

    .line 47
    shl-int/lit8 v5, v5, 0x8

    .line 48
    .line 49
    int-to-short v5, v5

    .line 50
    add-int/lit8 v6, v3, 0x3

    .line 51
    .line 52
    aget-byte v6, v0, v6

    .line 53
    .line 54
    and-int/lit16 v6, v6, 0xff

    .line 55
    .line 56
    or-int/2addr v5, v6

    .line 57
    int-to-short v6, v5

    .line 58
    add-int/lit8 v5, v6, 0x2

    .line 59
    .line 60
    if-le v5, p1, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    iput v6, v4, Lnet/lingala/zip4j/model/ExtraDataRecord;->b:I

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x4

    .line 66
    .line 67
    if-lez v6, :cond_2

    .line 68
    .line 69
    new-array v5, v6, [B

    .line 70
    .line 71
    invoke-static {v0, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    iput-object v5, v4, Lnet/lingala/zip4j/model/ExtraDataRecord;->c:[B

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_4

    .line 79
    :cond_2
    :goto_1
    add-int/2addr v3, v6

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    if-lez p1, :cond_4

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_4
    :goto_3
    const/4 p1, 0x0

    .line 92
    return-object p1

    .line 93
    :goto_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    throw v0
.end method

.method public final g(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lnet/lingala/zip4j/core/HeaderReader;->a:Ljava/io/RandomAccessFile;

    .line 6
    .line 7
    const-string v3, ":"

    .line 8
    .line 9
    const-string v4, "invalid local header signature for file: "

    .line 10
    .line 11
    if-eqz v0, :cond_14

    .line 12
    .line 13
    iget-wide v5, v0, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 14
    .line 15
    iget-object v7, v0, Lnet/lingala/zip4j/model/FileHeader;->u:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    iget-wide v10, v7, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->c:J

    .line 22
    .line 23
    cmp-long v7, v10, v8

    .line 24
    .line 25
    :cond_0
    cmp-long v7, v5, v8

    .line 26
    .line 27
    if-ltz v7, :cond_13

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 33
    .line 34
    invoke-direct {v7}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    new-array v11, v10, [B

    .line 39
    .line 40
    const/4 v12, 0x4

    .line 41
    new-array v13, v12, [B

    .line 42
    .line 43
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 44
    .line 45
    .line 46
    invoke-static {v13}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    move-wide v15, v8

    .line 51
    int-to-long v8, v14

    .line 52
    const-wide/32 v17, 0x4034b50

    .line 53
    .line 54
    .line 55
    cmp-long v8, v8, v17

    .line 56
    .line 57
    if-nez v8, :cond_12

    .line 58
    .line 59
    iput v14, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->a:I

    .line 60
    .line 61
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v11, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    iput v8, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->b:I

    .line 70
    .line 71
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 72
    .line 73
    .line 74
    invoke-static {v11, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    and-int/lit16 v8, v8, 0x800

    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    move v8, v9

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move v8, v4

    .line 86
    :goto_0
    iput-boolean v8, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->r:Z

    .line 87
    .line 88
    aget-byte v8, v11, v4

    .line 89
    .line 90
    and-int/lit8 v14, v8, 0x1

    .line 91
    .line 92
    if-eqz v14, :cond_2

    .line 93
    .line 94
    iput-boolean v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_2
    :goto_1
    iput-object v11, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->c:[B

    .line 101
    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    move/from16 v17, v10

    .line 107
    .line 108
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-lt v10, v12, :cond_3

    .line 113
    .line 114
    const/4 v10, 0x3

    .line 115
    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 119
    .line 120
    .line 121
    invoke-static {v11, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    iput v10, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->d:I

    .line 126
    .line 127
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 128
    .line 129
    .line 130
    invoke-static {v13}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    iput v10, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->e:I

    .line 135
    .line 136
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 137
    .line 138
    .line 139
    invoke-static {v13}, Lnet/lingala/zip4j/util/Raw;->b([B)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    int-to-long v9, v10

    .line 144
    iput-wide v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 145
    .line 146
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 147
    .line 148
    .line 149
    invoke-static {v13}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 154
    .line 155
    .line 156
    move-result-wide v9

    .line 157
    iput-wide v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 158
    .line 159
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 160
    .line 161
    .line 162
    invoke-static {v13}, Lnet/lingala/zip4j/core/HeaderReader;->a([B)[B

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-static {v9}, Lnet/lingala/zip4j/util/Raw;->d([B)J

    .line 167
    .line 168
    .line 169
    move-result-wide v9

    .line 170
    iput-wide v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 171
    .line 172
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 173
    .line 174
    .line 175
    invoke-static {v11, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    iput v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->i:I

    .line 180
    .line 181
    invoke-static {v2, v11}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 182
    .line 183
    .line 184
    invoke-static {v11, v4}, Lnet/lingala/zip4j/util/Raw;->e([BI)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    iput v10, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->j:I

    .line 189
    .line 190
    const/16 v11, 0x1e

    .line 191
    .line 192
    if-lez v9, :cond_5

    .line 193
    .line 194
    new-array v13, v9, [B

    .line 195
    .line 196
    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/HeaderReader;->f(Ljava/io/RandomAccessFile;[B)V

    .line 197
    .line 198
    .line 199
    iget-boolean v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->r:Z

    .line 200
    .line 201
    invoke-static {v13, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->d([BZ)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    new-instance v13, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-ltz v13, :cond_4

    .line 226
    .line 227
    new-instance v13, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->f1()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    add-int/lit8 v3, v3, 0x2

    .line 248
    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :cond_4
    iput-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 254
    .line 255
    add-int/2addr v11, v9

    .line 256
    goto :goto_2

    .line 257
    :cond_5
    const/4 v2, 0x0

    .line 258
    iput-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 259
    .line 260
    :goto_2
    iget v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->j:I

    .line 261
    .line 262
    if-gtz v2, :cond_6

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_6
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/core/HeaderReader;->e(I)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    iput-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->p:Ljava/util/ArrayList;

    .line 270
    .line 271
    :goto_3
    add-int/2addr v11, v10

    .line 272
    int-to-long v2, v11

    .line 273
    add-long/2addr v5, v2

    .line 274
    iput-wide v5, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->l:J

    .line 275
    .line 276
    iget-object v2, v0, Lnet/lingala/zip4j/model/FileHeader;->t:[C

    .line 277
    .line 278
    iput-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->o:[C

    .line 279
    .line 280
    iget-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->p:Ljava/util/ArrayList;

    .line 281
    .line 282
    if-eqz v2, :cond_9

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-gtz v2, :cond_7

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_7
    iget-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->p:Ljava/util/ArrayList;

    .line 292
    .line 293
    iget-wide v5, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 294
    .line 295
    iget-wide v9, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 296
    .line 297
    const-wide/16 v22, -0x1

    .line 298
    .line 299
    const/16 v24, -0x1

    .line 300
    .line 301
    move-object/from16 v17, v2

    .line 302
    .line 303
    move-wide/from16 v18, v5

    .line 304
    .line 305
    move-wide/from16 v20, v9

    .line 306
    .line 307
    invoke-static/range {v17 .. v24}, Lnet/lingala/zip4j/core/HeaderReader;->h(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    if-eqz v2, :cond_9

    .line 312
    .line 313
    iget-wide v5, v2, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->b:J

    .line 314
    .line 315
    const-wide/16 v9, -0x1

    .line 316
    .line 317
    cmp-long v3, v5, v9

    .line 318
    .line 319
    if-eqz v3, :cond_8

    .line 320
    .line 321
    iput-wide v5, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 322
    .line 323
    :cond_8
    iget-wide v2, v2, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->a:J

    .line 324
    .line 325
    cmp-long v5, v2, v9

    .line 326
    .line 327
    if-eqz v5, :cond_9

    .line 328
    .line 329
    iput-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 330
    .line 331
    :cond_9
    :goto_4
    iget-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->p:Ljava/util/ArrayList;

    .line 332
    .line 333
    const/16 v3, 0x63

    .line 334
    .line 335
    if-eqz v2, :cond_b

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    if-gtz v2, :cond_a

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_a
    iget-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->p:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-static {v2}, Lnet/lingala/zip4j/core/HeaderReader;->b(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    if-eqz v2, :cond_b

    .line 351
    .line 352
    iput-object v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 353
    .line 354
    iput v3, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 355
    .line 356
    :cond_b
    :goto_5
    iget-boolean v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->m:Z

    .line 357
    .line 358
    if-eqz v2, :cond_e

    .line 359
    .line 360
    iget v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 361
    .line 362
    if-ne v2, v3, :cond_c

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :cond_c
    const/16 v2, 0x40

    .line 366
    .line 367
    and-int/lit8 v3, v8, 0x40

    .line 368
    .line 369
    if-ne v3, v2, :cond_d

    .line 370
    .line 371
    const/4 v12, 0x1

    .line 372
    iput v12, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_d
    iput v4, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 376
    .line 377
    :cond_e
    :goto_6
    iget-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 378
    .line 379
    cmp-long v2, v2, v15

    .line 380
    .line 381
    if-gtz v2, :cond_f

    .line 382
    .line 383
    iget-wide v2, v0, Lnet/lingala/zip4j/model/FileHeader;->g:J

    .line 384
    .line 385
    const-wide v4, 0xffffffffL

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    and-long/2addr v2, v4

    .line 391
    iput-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 392
    .line 393
    :cond_f
    iget-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 394
    .line 395
    cmp-long v2, v2, v15

    .line 396
    .line 397
    if-gtz v2, :cond_10

    .line 398
    .line 399
    iget-wide v2, v0, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 400
    .line 401
    iput-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 402
    .line 403
    :cond_10
    iget-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 404
    .line 405
    cmp-long v2, v2, v15

    .line 406
    .line 407
    if-gtz v2, :cond_11

    .line 408
    .line 409
    iget-wide v2, v0, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 410
    .line 411
    iput-wide v2, v7, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 412
    .line 413
    :cond_11
    return-object v7

    .line 414
    :cond_12
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 415
    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, v0, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_7
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    .line 435
    .line 436
    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 437
    .line 438
    .line 439
    throw v2

    .line 440
    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 441
    .line 442
    const-string v2, "invalid local header offset"

    .line 443
    .line 444
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v0

    .line 448
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 449
    .line 450
    const-string v2, "invalid read parameters for local header"

    .line 451
    .line 452
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw v0
.end method
