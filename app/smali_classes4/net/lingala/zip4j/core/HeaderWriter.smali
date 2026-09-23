.class public Lnet/lingala/zip4j/core/HeaderWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/ArrayList;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    aput-byte v2, v0, v1

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public static b(Ljava/util/ArrayList;[B)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    aget-byte v1, p1, v0

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 21
    .line 22
    const-string p1, "one of the input parameters is null, cannot copy byte array to array list"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static c(ILjava/util/ArrayList;)I
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lnet/lingala/zip4j/model/FileHeader;

    .line 16
    .line 17
    iget v2, v2, Lnet/lingala/zip4j/model/FileHeader;->m:I

    .line 18
    .line 19
    if-ne v2, p0, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 28
    .line 29
    const-string p1, "file headers are null, cannot calculate number of entries on this disk"

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 9
    .line 10
    iget-wide v4, v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 11
    .line 12
    new-instance v6, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->f(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/ArrayList;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 48
    .line 49
    int-to-long v1, v3

    .line 50
    add-long/2addr v1, v4

    .line 51
    iput-wide v1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:J

    .line 52
    .line 53
    instance-of v1, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 60
    .line 61
    iget v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 62
    .line 63
    iput v1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:I

    .line 64
    .line 65
    move-object v1, p1

    .line 66
    check-cast v1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 67
    .line 68
    iget v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 69
    .line 70
    add-int/2addr v1, v2

    .line 71
    iput v1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:I

    .line 72
    .line 73
    :goto_0
    move-object v1, p0

    .line 74
    move-object v2, p1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 77
    iput v1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:I

    .line 78
    .line 79
    iput v2, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_1
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->j(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/ArrayList;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v2, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->i(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v1, p0

    .line 90
    move-object v2, p1

    .line 91
    :goto_2
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/core/HeaderWriter;->g(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v6}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/ArrayList;)[B

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v1, v2, p0}, Lnet/lingala/zip4j/core/HeaderWriter;->k(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    move-object p0, v0

    .line 104
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 105
    .line 106
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    move-object p0, v0

    .line 112
    throw p0

    .line 113
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 114
    .line 115
    const-string p1, "input parameters is null, cannot finalize zip file"

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public static e(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    :try_start_0
    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 9
    .line 10
    iget-object v1, v1, Lnet/lingala/zip4j/io/SplitOutputStream;->c:Ljava/io/RandomAccessFile;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->e:J

    .line 17
    .line 18
    check-cast p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 19
    .line 20
    iget p1, p1, Lnet/lingala/zip4j/io/SplitOutputStream;->i:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 51
    .line 52
    iput p1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:I

    .line 53
    .line 54
    add-int/lit8 v1, p1, 0x1

    .line 55
    .line 56
    iput v1, v0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:I

    .line 57
    .line 58
    :cond_3
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 59
    .line 60
    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 61
    .line 62
    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->c:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    move-exception p0

    .line 66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public static f(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/ArrayList;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    .line 1
    iget-object v2, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v2, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v15, v3

    goto/16 :goto_b

    :cond_1
    move v2, v3

    move v4, v2

    .line 4
    :goto_0
    iget-object v5, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 5
    iget-object v5, v5, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    .line 7
    iget-object v5, v0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 8
    iget-object v5, v5, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v5, :cond_13

    const/4 v6, 0x2

    .line 10
    :try_start_0
    new-array v7, v6, [B

    const/4 v8, 0x4

    .line 11
    new-array v9, v8, [B

    const/16 v10, 0x8

    .line 12
    new-array v10, v10, [B

    .line 13
    new-array v6, v6, [B

    fill-array-data v6, :array_0

    .line 14
    new-array v11, v8, [B

    fill-array-data v11, :array_1

    .line 15
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->a:I

    .line 16
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 17
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 18
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->b:I

    int-to-short v12, v12

    .line 19
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 20
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 21
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->c:I

    int-to-short v12, v12

    .line 22
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 23
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 24
    iget-object v12, v5, Lnet/lingala/zip4j/model/FileHeader;->d:[B

    .line 25
    invoke-static {v1, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 26
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->e:I

    int-to-short v12, v12

    .line 27
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 28
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 29
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->f:I

    .line 30
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 31
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 32
    iget-wide v12, v5, Lnet/lingala/zip4j/model/FileHeader;->g:J

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    long-to-int v12, v12

    .line 33
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 34
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 35
    iget-wide v12, v5, Lnet/lingala/zip4j/model/FileHeader;->i:J

    cmp-long v16, v12, v14

    move-wide/from16 v17, v14

    if-gez v16, :cond_2

    .line 36
    iget-wide v14, v5, Lnet/lingala/zip4j/model/FileHeader;->j:J

    const-wide/16 v19, 0x32

    add-long v14, v14, v19

    cmp-long v14, v14, v17

    if-ltz v14, :cond_3

    :cond_2
    move-wide/from16 v12, v17

    goto :goto_1

    .line 37
    :cond_3
    invoke-static {v10, v12, v13}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 38
    invoke-static {v10, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 40
    iget-wide v12, v5, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 41
    invoke-static {v10, v12, v13}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 42
    invoke-static {v10, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    move v9, v3

    goto :goto_2

    .line 44
    :goto_1
    invoke-static {v10, v12, v13}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 45
    invoke-static {v10, v3, v9, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 47
    invoke-static {v1, v9}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    const/4 v9, 0x1

    .line 48
    :goto_2
    iget v12, v5, Lnet/lingala/zip4j/model/FileHeader;->k:I

    int-to-short v12, v12

    .line 49
    invoke-static {v7, v12}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 50
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 51
    new-array v12, v8, [B

    .line 52
    iget-wide v13, v5, Lnet/lingala/zip4j/model/FileHeader;->o:J

    move/from16 v16, v4

    const-wide v3, 0xffffffffL

    cmp-long v17, v13, v3

    if-lez v17, :cond_4

    .line 53
    invoke-static {v10, v3, v4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    const/4 v15, 0x0

    .line 54
    invoke-static {v10, v15, v12, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    .line 55
    invoke-static {v10, v13, v14}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 56
    invoke-static {v10, v15, v12, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_3
    if-nez v9, :cond_6

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    const/16 v8, 0x14

    :cond_7
    if-eqz v3, :cond_8

    add-int/lit8 v4, v8, 0x8

    goto :goto_5

    :cond_8
    move v4, v8

    .line 57
    :goto_5
    iget-object v8, v5, Lnet/lingala/zip4j/model/FileHeader;->v:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    if-eqz v8, :cond_9

    add-int/lit8 v4, v4, 0xb

    :cond_9
    int-to-short v4, v4

    .line 58
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 59
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 60
    invoke-static {v1, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 61
    iget v4, v5, Lnet/lingala/zip4j/model/FileHeader;->m:I

    int-to-short v4, v4

    .line 62
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 63
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 64
    invoke-static {v1, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 65
    iget-object v4, v5, Lnet/lingala/zip4j/model/FileHeader;->n:[B

    if-eqz v4, :cond_a

    .line 66
    invoke-static {v1, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    goto :goto_6

    .line 67
    :cond_a
    invoke-static {v1, v11}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 68
    :goto_6
    invoke-static {v1, v12}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 69
    iget-object v4, v0, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 70
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    move-result v4

    const/16 v6, 0x2e

    if-eqz v4, :cond_b

    .line 71
    iget-object v4, v5, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 72
    iget-object v8, v0, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 73
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 74
    invoke-static {v1, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 75
    array-length v4, v4

    :goto_7
    add-int/2addr v6, v4

    goto :goto_8

    .line 76
    :cond_b
    iget-object v4, v5, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 77
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->c(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 78
    iget-object v4, v5, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 79
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 80
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-static {v4, v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_7

    :goto_8
    if-nez v9, :cond_c

    if-eqz v3, :cond_10

    :cond_c
    const/4 v4, 0x1

    .line 82
    iput-boolean v4, v0, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 83
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 84
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    if-eqz v9, :cond_d

    const/16 v4, 0x10

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x8

    :cond_e
    int-to-short v4, v4

    .line 85
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 86
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    add-int/lit8 v4, v6, 0x4

    if-eqz v9, :cond_f

    .line 87
    iget-wide v8, v5, Lnet/lingala/zip4j/model/FileHeader;->j:J

    .line 88
    invoke-static {v10, v8, v9}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 89
    invoke-static {v1, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 90
    iget-wide v8, v5, Lnet/lingala/zip4j/model/FileHeader;->i:J

    .line 91
    invoke-static {v10, v8, v9}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 92
    invoke-static {v1, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    add-int/lit8 v6, v6, 0x14

    goto :goto_a

    :cond_f
    move v6, v4

    :goto_a
    if-eqz v3, :cond_10

    .line 93
    iget-wide v3, v5, Lnet/lingala/zip4j/model/FileHeader;->o:J

    .line 94
    invoke-static {v10, v3, v4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 95
    invoke-static {v1, v10}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    add-int/lit8 v6, v6, 0x8

    .line 96
    :cond_10
    iget-object v3, v5, Lnet/lingala/zip4j/model/FileHeader;->v:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    if-eqz v3, :cond_11

    .line 97
    iget-wide v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    long-to-int v4, v4

    int-to-short v4, v4

    .line 98
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 99
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 100
    iget v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    int-to-short v4, v4

    .line 101
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 102
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 103
    iget v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    int-to-short v4, v4

    .line 104
    invoke-static {v7, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 105
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 106
    iget-object v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v1, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 108
    iget v4, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    int-to-byte v4, v4

    const/4 v5, 0x1

    .line 109
    new-array v5, v5, [B

    const/4 v15, 0x0

    aput-byte v4, v5, v15

    .line 110
    invoke-static {v1, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 111
    iget v3, v3, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    int-to-short v3, v3

    .line 112
    invoke-static {v7, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 113
    invoke-static {v1, v7}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    add-int/lit8 v6, v6, 0xb

    :cond_11
    add-int v4, v16, v6

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 114
    :cond_12
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input string is null, cannot calculate encoded String length"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 116
    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move/from16 v16, v4

    return v16

    :goto_b
    return v15

    .line 117
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write central directory"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static g(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/ArrayList;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    :try_start_0
    new-array p1, p1, [B

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 16
    .line 17
    iget-wide v3, v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;->a:J

    .line 18
    .line 19
    long-to-int v3, v3

    .line 20
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 21
    .line 22
    .line 23
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 27
    .line 28
    iget v3, v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 29
    .line 30
    int-to-short v3, v3

    .line 31
    invoke-static {p1, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 32
    .line 33
    .line 34
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 38
    .line 39
    iget v3, v3, Lnet/lingala/zip4j/model/EndCentralDirRecord;->c:I

    .line 40
    .line 41
    int-to-short v3, v3

    .line 42
    invoke-static {p1, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 43
    .line 44
    .line 45
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 49
    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    iget-object v3, v3, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iget-boolean v4, p0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    iget-object v4, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 65
    .line 66
    iget-object v4, v4, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v5, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 69
    .line 70
    iget v5, v5, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 71
    .line 72
    invoke-static {v5, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->c(ILjava/util/ArrayList;)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v4, v3

    .line 78
    :goto_0
    int-to-short v4, v4

    .line 79
    invoke-static {p1, v4}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 80
    .line 81
    .line 82
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 83
    .line 84
    .line 85
    int-to-short v3, v3

    .line 86
    invoke-static {p1, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 87
    .line 88
    .line 89
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p2}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 93
    .line 94
    .line 95
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 96
    .line 97
    .line 98
    const-wide v3, 0xffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    cmp-long p2, p3, v3

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    if-lez p2, :cond_1

    .line 107
    .line 108
    invoke-static {v2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-static {v2, p3, p4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object p2, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 128
    .line 129
    iget-object p3, p2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->g:Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p3, :cond_2

    .line 132
    .line 133
    iget v5, p2, Lnet/lingala/zip4j/model/EndCentralDirRecord;->f:I

    .line 134
    .line 135
    :cond_2
    int-to-short p2, v5

    .line 136
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 137
    .line 138
    .line 139
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 140
    .line 141
    .line 142
    if-lez v5, :cond_3

    .line 143
    .line 144
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 145
    .line 146
    iget-object p0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->h:[B

    .line 147
    .line 148
    invoke-static {p5, p0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 149
    .line 150
    .line 151
    :cond_3
    return-void

    .line 152
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 153
    .line 154
    const-string p1, "invalid central directory/file headers, cannot write end of central directory record"

    .line 155
    .line 156
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :catch_0
    move-exception p0

    .line 161
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 162
    .line 163
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 168
    .line 169
    const-string p1, "zip model or output stream is null, cannot write end of central directory record"

    .line 170
    .line 171
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public static h(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/io/SplitOutputStream;)I
    .locals 11

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [B

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    new-array v3, v2, [B

    .line 13
    .line 14
    const/16 v4, 0x8

    .line 15
    .line 16
    new-array v5, v4, [B

    .line 17
    .line 18
    new-array v4, v4, [B

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    iget v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->a:I

    .line 24
    .line 25
    invoke-static {v3, v6}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 29
    .line 30
    .line 31
    iget v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->b:I

    .line 32
    .line 33
    int-to-short v6, v6

    .line 34
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 38
    .line 39
    .line 40
    iget-object v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->c:[B

    .line 41
    .line 42
    invoke-static {v0, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 43
    .line 44
    .line 45
    iget v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->d:I

    .line 46
    .line 47
    int-to-short v6, v6

    .line 48
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 52
    .line 53
    .line 54
    iget v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->e:I

    .line 55
    .line 56
    invoke-static {v3, v6}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 60
    .line 61
    .line 62
    iget-wide v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 63
    .line 64
    long-to-int v6, v6

    .line 65
    invoke-static {v3, v6}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 69
    .line 70
    .line 71
    iget-wide v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 72
    .line 73
    const-wide/16 v8, 0x32

    .line 74
    .line 75
    add-long/2addr v6, v8

    .line 76
    const-wide v8, 0xffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    cmp-long v6, v6, v8

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    const/4 v10, 0x0

    .line 85
    if-ltz v6, :cond_0

    .line 86
    .line 87
    invoke-static {v5, v8, v9}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 88
    .line 89
    .line 90
    invoke-static {v5, v10, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 97
    .line 98
    .line 99
    iput-boolean v7, p0, Lnet/lingala/zip4j/model/ZipModel;->m:Z

    .line 100
    .line 101
    move v2, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    iget-wide v8, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->g:J

    .line 104
    .line 105
    invoke-static {v5, v8, v9}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v10, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 112
    .line 113
    .line 114
    iget-wide v8, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 115
    .line 116
    invoke-static {v5, v8, v9}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 117
    .line 118
    .line 119
    invoke-static {v5, v10, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v3}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 123
    .line 124
    .line 125
    move v2, v10

    .line 126
    :goto_0
    iget v3, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->i:I

    .line 127
    .line 128
    int-to-short v3, v3

    .line 129
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 133
    .line 134
    .line 135
    if-eqz v2, :cond_1

    .line 136
    .line 137
    const/16 v3, 0x14

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    move v3, v10

    .line 141
    :goto_1
    iget-object v6, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 142
    .line 143
    if-eqz v6, :cond_2

    .line 144
    .line 145
    add-int/lit8 v3, v3, 0xb

    .line 146
    .line 147
    :cond_2
    int-to-short v3, v3

    .line 148
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 152
    .line 153
    .line 154
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->l(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_3

    .line 161
    .line 162
    iget-object v3, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 163
    .line 164
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->n:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v0, p0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    iget-object p0, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->k:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->c(Ljava/lang/String;)[B

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v0, p0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 181
    .line 182
    .line 183
    :goto_2
    if-eqz v2, :cond_4

    .line 184
    .line 185
    invoke-static {v1, v7}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 189
    .line 190
    .line 191
    const/16 p0, 0x10

    .line 192
    .line 193
    invoke-static {v1, p0}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 197
    .line 198
    .line 199
    iget-wide v2, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 200
    .line 201
    invoke-static {v5, v2, v3}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 205
    .line 206
    .line 207
    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 208
    .line 209
    .line 210
    :cond_4
    iget-object p0, p1, Lnet/lingala/zip4j/model/LocalFileHeader;->q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    .line 211
    .line 212
    if-eqz p0, :cond_5

    .line 213
    .line 214
    iget-wide v2, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->a:J

    .line 215
    .line 216
    long-to-int p1, v2

    .line 217
    int-to-short p1, p1

    .line 218
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 222
    .line 223
    .line 224
    iget p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->b:I

    .line 225
    .line 226
    int-to-short p1, p1

    .line 227
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 231
    .line 232
    .line 233
    iget p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->c:I

    .line 234
    .line 235
    int-to-short p1, p1

    .line 236
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->d:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {v0, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 249
    .line 250
    .line 251
    iget p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->e:I

    .line 252
    .line 253
    int-to-byte p1, p1

    .line 254
    new-array v2, v7, [B

    .line 255
    .line 256
    aput-byte p1, v2, v10

    .line 257
    .line 258
    invoke-static {v0, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 259
    .line 260
    .line 261
    iget p0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->f:I

    .line 262
    .line 263
    int-to-short p0, p0

    .line 264
    invoke-static {v1, p0}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 268
    .line 269
    .line 270
    :cond_5
    invoke-static {v0}, Lnet/lingala/zip4j/core/HeaderWriter;->a(Ljava/util/ArrayList;)[B

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {p2, p0}, Lnet/lingala/zip4j/io/SplitOutputStream;->write([B)V

    .line 275
    .line 276
    .line 277
    array-length p0, p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return p0

    .line 279
    :catch_0
    move-exception p0

    .line 280
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 281
    .line 282
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 283
    .line 284
    .line 285
    throw p1

    .line 286
    :catch_1
    move-exception p0

    .line 287
    throw p0

    .line 288
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 289
    .line 290
    const-string p1, "input parameters are null, cannot write local file header"

    .line 291
    .line 292
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p0

    .line 296
    nop

    .line 297
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static i(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    :try_start_0
    new-array p1, p1, [B

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    const v1, 0x7064b50

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 22
    .line 23
    iget v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->a:I

    .line 24
    .line 25
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 32
    .line 33
    iget-wide v1, v1, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->b:J

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    .line 42
    .line 43
    iget p0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->c:I

    .line 44
    .line 45
    invoke-static {p1, p0}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :catch_1
    move-exception p0

    .line 60
    throw p0

    .line 61
    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 62
    .line 63
    const-string p1, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static j(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;IJLjava/util/ArrayList;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    :try_start_0
    new-array v0, p1, [B

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    fill-array-data p1, :array_0

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v2, v2, [B

    .line 19
    .line 20
    const v3, 0x6064b50

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 24
    .line 25
    .line 26
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0x2c

    .line 30
    .line 31
    invoke-static {v2, v3, v4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 32
    .line 33
    .line 34
    invoke-static {p5, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v3, v3, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 53
    .line 54
    iget-object p1, p1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    .line 61
    .line 62
    iget p1, p1, Lnet/lingala/zip4j/model/FileHeader;->b:I

    .line 63
    .line 64
    int-to-short p1, p1

    .line 65
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 66
    .line 67
    .line 68
    invoke-static {p5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 72
    .line 73
    iget-object p1, p1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    .line 80
    .line 81
    iget p1, p1, Lnet/lingala/zip4j/model/FileHeader;->c:I

    .line 82
    .line 83
    int-to-short p1, p1

    .line 84
    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/Raw;->h([BS)V

    .line 85
    .line 86
    .line 87
    invoke-static {p5, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 92
    .line 93
    .line 94
    invoke-static {p5, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 98
    .line 99
    iget p1, p1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 100
    .line 101
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 102
    .line 103
    .line 104
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 108
    .line 109
    iget p1, p1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->c:I

    .line 110
    .line 111
    invoke-static {v1, p1}, Lnet/lingala/zip4j/util/Raw;->f([BI)V

    .line 112
    .line 113
    .line 114
    invoke-static {p5, v1}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    iget-object p1, p1, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 122
    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 130
    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 134
    .line 135
    iget-object v0, v0, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 136
    .line 137
    iget-object p0, p0, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 138
    .line 139
    iget p0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->b:I

    .line 140
    .line 141
    invoke-static {p0, v0}, Lnet/lingala/zip4j/core/HeaderWriter;->c(ILjava/util/ArrayList;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_1
    move v4, p1

    .line 146
    :goto_1
    int-to-long v0, v4

    .line 147
    invoke-static {v2, v0, v1}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 148
    .line 149
    .line 150
    invoke-static {p5, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 151
    .line 152
    .line 153
    int-to-long p0, p1

    .line 154
    invoke-static {v2, p0, p1}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 155
    .line 156
    .line 157
    invoke-static {p5, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 158
    .line 159
    .line 160
    int-to-long p0, p2

    .line 161
    invoke-static {v2, p0, p1}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 162
    .line 163
    .line 164
    invoke-static {p5, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 165
    .line 166
    .line 167
    invoke-static {v2, p3, p4}, Lnet/lingala/zip4j/util/Raw;->g([BJ)V

    .line 168
    .line 169
    .line 170
    invoke-static {p5, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->b(Ljava/util/ArrayList;[B)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_2
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 175
    .line 176
    const-string p1, "invalid central directory/file headers, cannot write end of central directory record"

    .line 177
    .line 178
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    move-exception p0

    .line 183
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 184
    .line 185
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :catch_1
    move-exception p0

    .line 190
    throw p0

    .line 191
    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 192
    .line 193
    const-string p1, "zip model or output stream is null, cannot write zip64 end of central directory record"

    .line 194
    .line 195
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static k(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[B)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    :try_start_0
    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 9
    .line 10
    array-length v1, p2

    .line 11
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/SplitOutputStream;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {p0, p1}, Lnet/lingala/zip4j/core/HeaderWriter;->d(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 33
    .line 34
    const-string p1, "invalid buff to write as zip headers"

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method
